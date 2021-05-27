import Vue from 'vue';
import Vuex from 'vuex';
import http from '@/util/http-common';

Vue.use(Vuex);

export default new Vuex.Store({
  state: {
    qnas: [],
    qna: {},
    apts: [],
    apt: Object,
    // 로그인 & 세션 관리
    accessToken: null,
    userId: '',
    userName: '',
    data: '',
  },
  getters: {
    getAccessToken(state) {
      if (sessionStorage.getItem('accessToken') != null) {
        this.state.accessToken = sessionStorage.getItem('accessToken');
        this.state.userId = sessionStorage.getItem('userId');
        this.state.userName = sessionStorage.getItem('userName');
        this.state.gender = sessionStorage.getItem('gender');
      }
      return state.accessToken;
    },
    getUserId(state) {
      return state.userId;
    },
    getUserName(state) {
      return state.userName;
    }, // 로그인 & 세션 관리
    qnas(state) {
      return state.qnas;
    },
    qna(state) {
      return state.qna;
    },
    apts(state) {
      return state.apts;
    },
    apt(state) {
      return state.apt;
    },
    getData() {
      return sessionStorage.getItem('userId');
    },
    getGender() {
      return sessionStorage.getItem('gender');
    },

  },
  mutations: {
    setQnas(state, payload) {
      state.qnas = payload;
    },
    setQna(state, payload) {
      state.qna = payload;
    },
    GET_APT_LIST(state, apts) {
      // console.log(state, apts);
      state.apts = apts;
    },
    SELECT_APT(state, apt) {
      state.apt = apt;
    },
    // setData(payload) {
    //   sessionStorage.setItem("userId", payload);
    // }
  },
  actions: {
    getQnas(context) {
      http
        .get('/qna')
        .then(({ data }) => {
          context.commit('setQnas', data);
        })
        .catch(() => {
          alert('에러발생!');
        });
    },
    getQnaSearch(context, payload) {
      console.log(payload);
      http
        .get('/qna' + '?key=' + payload.key + '&word=' + payload.word)
        .then(({ data }) => {
          context.commit('setQnas', data);
        })
        .catch(() => {
          alert('에러발생!');
        });
    },
    getQna(context, payload) {
      http.get('/qna' + payload).then(({ data }) => {
        context.commit('setQna', data);
      });
    },
    getAptList(context) {
      http
        .get('/house')
        .then(({ data }) => {
          context.commit('GET_APT_LIST', data);
          console.log(data);
        })
        .catch(() => {
          alert('에러발생!');
        });
    },

    searchAptList(context, payload) {
      http
        .get('/house' + '?key=' + payload.key + '&word=' + payload.word)
        .then(({ data }) => {
          context.commit('GET_APT_LIST', data);
          console.log(data);
        })
        .catch(() => {
          alert('에러발생!');
        });
    },

    selectApt({ commit }, apt) {
      commit('SELECT_APT', apt);
    },
  },
});
