<template>
  <div class="regist" style="margin-top:100px;">
    <h1 class="underline">
      <template v-if="type == 'join'">회원가입</template>
      <template v-else>회원정보 수정</template>
    </h1>
    <div class="regist_form" style="width:90%; margin-left:100px; margin-right: 100px">
      <label for="userid">사용자 id</label>
      <input
        v-if="type == 'join'"
        type="text"
        id="userid"
        name="userid"
        v-model="userid"
        ref="userid"
      />
      <input
        v-else
        type="text"
        id="userid"
        name="userid"
        v-model="userid"
        ref="userid"
        readonly
      /><br />

      <label for="userpwd">비밀번호</label>
      <input type="password" id="userpwd" name="userpwd" v-model="userpwd" ref="userpwd" /><br />

      <label for="username">이름</label>
      <input type="text" id="username" name="username" v-model="username" ref="username" /><br />

      <label for="email">이메일</label>
      <input type="email" id="email" name="email" v-model="email" ref="email" /><br />

      <label for="address">주소</label>
      <input type="address" id="address" name="address" v-model="address" ref="address" />

      <!--
      <b-form-select name="gender" v-model="gender" style="width: 10%">
        <option value="">성별선택</option>
        <option value="male">남자</option>
        <option value="female">여자</option>
      </b-form-select>
      -->
      <br />

      <b-form-group>
        <b-form-checkbox-group id="gender" v-model="gender" name="gender">
          <pre>성별    <b-form-checkbox value="male">남자</b-form-checkbox> <b-form-checkbox value="female">여자</b-form-checkbox> </pre>
        </b-form-checkbox-group>
      </b-form-group>

      <b-btn variant="outline-primary" v-if="type == 'join'" @click="checkValue">등록</b-btn>
      <b-btn variant="outline-primary" v-else @click="checkValue">수정</b-btn>
    </div>
  </div>
</template>

<script>
import http from '@/util/http-common';
import { mapGetters } from 'vuex';

export default {
  name: 'userwriteform',
  props: {
    type: { type: String },
  },
  data() {
    return {
      userid: '',
      userpwd: '',
      username: '',
      email: '',
      address: '',
      gender: '',
      sessionData: '',
      data: '',
    };
  },
  computed: {
    ...mapGetters(['getData']),
  },
  created() {
    // if (this.type === 'modify') {
    //   http.put(`user/modify`).then(({ data }) => {
    //     this.userid = data.userid;
    //     this.userpwd = data.userpwd;
    //     this.username = data.username;
    //     this.email = data.email;
    //     this.address = data.address;
    //   });
    // }
    if (this.type === 'modify') {
      // http.get(`user/info/` + sessionStorage.getItem['userId']).then(({ data }) => {
      http.get(`user/info/` + this.$store.getters.getData).then(({ data }) => {
        console.log(this.$store.getters.getData);
        console.log(this.getData.userid);
        this.userid = data.userid;
        this.userpwd = data.userpwd;
        this.username = data.username;
        this.email = data.email;
        this.address = data.address;
        this.gender = data.gender;
      });
    }
  },
  methods: {
    checkValue() {
      let err = true;
      let msg = '';
      !this.userid &&
        ((msg = '사용자 id를 입력해주세요'), (err = false), this.$refs.userid.focus());
      err &&
        !this.userpwd &&
        ((msg = '비밀번호를 입력해주세요'), (err = false), this.$refs.userpwd.focus());
      err &&
        !this.username &&
        ((msg = '이름을 입력해주세요'), (err = false), this.$refs.username.focus());
      err &&
        !this.email &&
        ((msg = '이메일을 입력해주세요'), (err = false), this.$refs.email.focus());
      err &&
        !this.address &&
        ((msg = '주소를 입력해주세요'), (err = false), this.$refs.address.focus());
      err &&
        !this.gender &&
        ((msg = '성별을 선택해주세요'), (err = false), this.$refs.address.focus());

      if (!err) alert(msg);
      else this.type == 'join' ? this.joinUser() : this.modifyUser();
      this.$router.push('/');
    },
    joinUser() {
      http
        .post('/user/regist', {
          userid: this.userid,
          userpwd: this.userpwd,
          username: this.username,
          email: this.email,
          address: this.address,
          gender: this.gender,
        })
        .then(({ data }) => {
          console.log(data.status);
          console.log('??? ', data);
          let msg = '가입 처리시 문제가 발생했습니다.';
          if (data['state'] === 'success') {
            msg = '가입이 완료되었습니다.';
          }
          alert(msg);
          // this.moveList();
        });
    },
    modifyUser() {
      http
        .put(`/user/modify`, {
          userid: this.userid,
          userpwd: this.userpwd,
          username: this.username,
          email: this.email,
          address: this.address,
          gender: this.gender,
        })
        .then(({ data }) => {
          let msg = '수정 처리시 문제가 발생했습니다.';
          if (data['state'] === 'success') {
            msg = '수정이 완료되었습니다.';
          }
          alert(msg);
          //   this.$router.push('/qna');
        });
    },
    // moveList() {
    //   this.$router.push('/qna');
    // },
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
