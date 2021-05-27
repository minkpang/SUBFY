<template>
  <div class="regist" style="margin-top:130px;">
    <h1 class="underline">
      SUBFY QnA
      <template v-if="type == 'create'">등록</template>
      <template v-else>수정</template>
    </h1>
    <div class="regist_form" style="width:90%; margin-left:100px; margin-right: 100px">
      <label for="qnaid">게시글 id</label>
      <input v-if="type == 'create'" type="text" id="id" name="id" v-model="id" ref="id" />
      <input v-else type="text" id="id" name="id" v-model="id" ref="id" readonly /><br />
      <label for="title">글제목</label>
      <input type="text" id="title" name="title" v-model="title" ref="title" /><br />
      <label for="author">작성자</label>
      <input type="text" id="author" name="author" v-model="author" ref="author" /><br />
      <label for="wdate">날짜</label>
      <input type="date" id="wdate" name="wdate" v-model="wdate" ref="wdate" /><br />
      <label for="content">설명</label><br />
      <textarea
        id="content"
        name="content"
        v-model="content"
        ref="content"
        cols="35"
        rows="5"
      ></textarea
      ><br />
      <b-button variant="outline-primary" v-if="type == 'create'" @click="checkValue"
        >등록</b-button
      >
      <b-button variant="outline-primary" v-else @click="checkValue">수정</b-button>
      <b-button variant="outline-primary" @click="moveList">목록</b-button>
    </div>
  </div>
</template>

<script>
import http from '@/util/http-common';

export default {
  name: 'writeform',
  props: {
    type: { type: String },
  },
  data() {
    return {
      id: '',
      title: '',
      author: '',
      wdate: '',
      content: '',
    };
  },
  created() {
    let userId = sessionStorage.getItem('userId');
    if (this.type === 'modify') {
      http.get(`qna/${this.$route.params.id}`).then(({ data }) => {
        this.id = data.id;
        this.title = data.title;
        this.author = data.author;
        this.wdate = data.wdate;
        this.content = data.content;
      });
    } else if (this.type === 'create' && userId != null) {
      console.log('로그인된 아이디 ' + userId);
      this.author = userId;
    }
  },
  methods: {
    // 입력값 체크하기 - 체크가 성공하면 registQna 호출
    checkValue() {
      // 사용자 입력값 체크하기
      // qnaid, 제목, 저자, 가격, 설명이 없을 경우 각 항목에 맞는 메세지를 출력
      let err = true;
      let msg = '';
      !this.id && ((msg = '게시글 id를 입력해주세요'), (err = false), this.$refs.id.focus());
      err &&
        !this.title &&
        ((msg = '글제목을 입력해주세요'), (err = false), this.$refs.title.focus());
      err &&
        !this.author &&
        ((msg = '작성자를 입력해주세요'), (err = false), this.$refs.author.focus());
      err &&
        !this.wdate &&
        ((msg = '날짜를 입력해주세요'), (err = false), this.$refs.wdate.focus());
      err &&
        !this.content &&
        ((msg = '내용을 입력해주세요'), (err = false), this.$refs.content.focus());

      if (!err) alert(msg);
      // 만약, 내용이 다 입력되어 있다면 registQna 호출
      else this.type == 'create' ? this.registQna() : this.modifyQna();
    },
    registQna() {
      http
        .post('/qna', {
          id: this.id,
          title: this.title,
          author: this.author,
          wdate: this.wdate,
          content: this.content,
        })
        .then(({ data }) => {
          let msg = '등록 처리시 문제가 발생했습니다.';
          if (data === 'success') {
            msg = '등록이 완료되었습니다.';
          }
          alert(msg);
          this.moveList();
        });
    },
    modifyQna() {
      http
        .put(`/qna/${this.id}`, {
          id: this.id,
          title: this.title,
          author: this.author,
          wdate: this.wdate,
          content: this.content,
        })
        .then(({ data }) => {
          let msg = '수정 처리시 문제가 발생했습니다.';
          if (data === 'success') {
            msg = '수정이 완료되었습니다.';
          }
          alert(msg);
          this.$router.push('/qna');
        });
    },
    moveList() {
      this.$router.push('/qna');
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
