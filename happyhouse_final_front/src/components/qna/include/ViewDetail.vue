<template>
  <div class="regist" style="margin-top:130px;">
    <h1 class="underline">SUBFY QnA 게시글 조회</h1>
    <div class="regist_form" style="width:90%; margin-left:100px; margin-right: 100px">
      <label for="id">게시글 id</label>
      <div class="view">{{ qna.id }}</div>
      <label for="title">글제목</label>
      <div class="view">{{ qna.title }}</div>
      <label for="author">작성자</label>
      <div class="view">{{ qna.author }}</div>
      <label for="wdate">날짜</label>
      <div class="view">{{ qna.wdate }}</div>
      <label for="content">설명</label>
      <div class="view" v-html="enterToBr(qna.content)"></div>
      <div style="padding-top: 15px">
        <router-link
          :to="`/qna/modify/${qna.id}`"
          v-show="this.$store.getters.getData == this.$store.getters.qna.author || this.$store.getters.getData == 'admin'"
          ><b-btn variant="outline-primary">수정</b-btn></router-link
        >
        <b-btn
          variant="outline-primary"
          @click="deleteQna"
          v-show="this.$store.getters.getData == this.$store.getters.qna.author || this.$store.getters.getData == 'admin'"
          >삭제</b-btn
        >
        <router-link to="/qna"><b-btn variant="outline-primary">목록</b-btn></router-link>
      </div>
    </div>
  </div>
</template>

<script>
import { mapGetters } from 'vuex';
import http from '@/util/http-common';

export default {
  name: 'viewdetail',
  computed: {
    ...mapGetters(['qna']),
  },
  created() {
    console.log(this.$store.getters.getData);
    console.log(this.$store.getters.qna.author);
  },
  methods: {
    deleteQna() {
      if (confirm('정말로 삭제하시겠습니까?')) {
        http.delete(`qna/${this.qna.id}`).then(({ data }) => {
          let msg = '삭제 처리시 문제가 발생했습니다.';
          if (data === 'success') {
            msg = '삭제가 완료되었습니다.';
          }
          alert(msg);
          this.$router.push('/qna');
        });
      }
    },
    numberWithCommas(x) {
      if (x) return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
    },
    enterToBr(str) {
      if (str) return str.replace(/(?:\r\n|\r|\n)/g, '<br />');
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
