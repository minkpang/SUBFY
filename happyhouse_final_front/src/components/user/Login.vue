<template>
  <div class="regist" style="margin-top:100px;">
    <div
      class="regist_form"
      id="userPage"
      style="width:90%; margin-left:100px; margin-right: 100px"
    >
      <div id="loginState" v-if="userName != 'null'">
        <b-button variant="outline-primary" @click="moveModify">회원정보수정</b-button>
      </div>

      <div id="logoutState" v-else>
        <label for="userid">사용자 id</label>
        <input type="text" id="userid" name="userid" v-model="userid" ref="userid" />
        <label for="userpwd">비밀번호</label>
        <input type="password" id="userpwd" name="userpwd" v-model="userpwd" ref="userpwd" />
        <b-button variant="outline-primary" @click="checkValue">로그인</b-button>
        <b-button variant="outline-primary" @click="moveJoin">회원가입</b-button>
      </div>
    </div>
  </div>
</template>

<script>
import http from '@/util/http-common';
export default {
  name: 'loginform',
  props: {
    type: { type: String },
  },
  data() {
    return {
      userid: '',
      userpwd: '',
      userName: this.$store.getters.getData,
    };
  },
  created() {},
  methods: {
    checkValue() {
      let err = true;
      let msg = '';
      !this.userid && ((msg = '사용자id를 입력해주세요'), (err = false), this.$refs.userid.focus());
      err &&
        !this.userpwd &&
        ((msg = '비밀번호를 입력해주세요'), (err = false), this.$refs.userpwd.focus());

      if (!err) alert(msg);
      else this.login();
    },
    login() {
      http
        .post('/user/login', {
          userid: this.userid,
          userpwd: this.userpwd,
        })
        .then(({ data }) => {
          let msg = '로그인 처리시 문제가 발생했습니다.';
          if (data.status === 'success') {
            msg = '로그인되었습니다.';
            alert(msg);
            sessionStorage.setItem('accessToken', data['auth-token']);
            sessionStorage.setItem('userId', data['user-id']);
            sessionStorage.setItem('userName', data['user-name']);
            sessionStorage.setItem('gender', data['user-gender']);
            this.moveHome();
          } else {
            alert(msg);
          }
        });
    },

    moveJoin() {
      this.$router.push('/user/join');
    },
    moveModify() {
      this.$router.push('/user/modify');
    },
    moveHome() {
      this.$router.push('/');
      window.location.reload();
    },
  },
};
</script>

<style scoped>
.regist {
  padding: 10px;
}
.regist_form {
  text-align: left;
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
input,
textarea,
.view {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  color: #787878;
  font-size: medium;
}
</style>
