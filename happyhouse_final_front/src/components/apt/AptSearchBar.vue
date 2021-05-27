<template>
  <b-row>
    <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
      <b-select v-model="key" id="key" style="width:100px">
        <option value="" selected disabled hidden>선택</option>
        <option value="dong">동주소</option>
        <option value="apt">아파트</option>
        <option value="station">전철역</option>
      </b-select>
      <b-form-input style="width:250px;"
        v-model.trim="word"
        placeholder="키워드 입력...(예 : 사당,e-편한세상)"
        @keypress.enter="sendKeyword"
      ></b-form-input>
      <b-button variant="outline-primary" @click="sendKeyword" style="width:60px">검색</b-button>
  </b-row>
</template>

<script>
import { mapActions } from 'vuex';

export default {
  name: 'SearchBar',
  data() {
    return {
      word: '',
      key:'station',
    };
  },
  methods: {
    ...mapActions(['getAptList']),
    ...mapActions(['searchAptList']),
    sendKeyword() {
      // this.$emit('send-keyword', this.dongCode);
      if (this.word) this.searchAptList({key:this.key, word:this.word});
      // this.$store.dispatch('getAptList', this.dongCode);
      this.word = '';
    },
  },
  created() {
    this.getAptList();
  }
};
</script>

<style></style>
