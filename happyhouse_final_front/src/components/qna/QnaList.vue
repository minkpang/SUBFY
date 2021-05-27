<template>
  <div style="margin-top:100px;">
    <link
      href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic"
      rel="stylesheet"
      type="text/css"
    />
    <h1 class="underline">SUBFY QnA 목록</h1>
    <br />

    <!--
    <div style="text-align: right">
      <b-button variant="outline-primary" class="mb-3" @click="movePage">QnA 등록</b-button>
    </div>
  -->
    <b-row style="margin-left:100px">
      <b-select name="key" v-model="searchKey" style="width:100px;">
        <option value="" selected disabled hidden>선택</option>
        <option value="title" selected>제목</option>
        <option value="content">내용</option>
      </b-select>
      <b-form-input
        type="text"
        v-model="keyword"
        placeholder="제목을 입력하세요"
        style="width:400px"
      ></b-form-input>
      <b-button variant="info" @click="search" style="width:80px; height: 40px;">검색</b-button>
      <b-button
        variant="outline-primary"
        class="mb-3"
        @click="movePage"
        style="width:100px; height: 40px; margin-left:100px;"
        >QnA 등록</b-button
      >
    </b-row>
    <br />
    <div v-if="qnas.length">
      <table id="qna-list" style="width:90%; margin-left:100px; margin-right: 100px">
        <colgroup>
          <col style="width: 10%" />
          <col style="width: 40%" />
          <col style="width: 15%" />
          <col style="width: 10%" />
        </colgroup>
        <thead>
          <tr>
            <th>게시글 id</th>
            <th>글제목</th>
            <th>작성자</th>
            <th>날짜</th>
          </tr>
        </thead>
        <tbody>
          <list-row
            v-for="(qna, index) in paginatedData"
            :key="index"
            :id="qna.id"
            :title="qna.title"
            :author="qna.author"
            :wdate="qna.wdate"
            :content="qna.content"
          />
        </tbody>
      </table>
      <div class="my-3">
        <b-button
          variant="outline-primary"
          :disabled="pageNum === 0"
          @click="prevPage"
          class="page-btn"
        >
          이전
        </b-button>
        <span class="page-count"> {{ pageNum + 1 }} / {{ pageCount }} 페이지 </span>
        <b-button
          variant="outline-primary"
          :disabled="pageNum >= pageCount - 1"
          @click="nextPage"
          class="page-btn"
        >
          다음
        </b-button>
      </div>

      <!-- <input type="text" id="keyword" placeholder="제목을 입력하세요">
       <button @click="search">검색</button> -->
      <!-- <input type="text" id="content" placeholder="내용을 입력하세요">
    <button @click="search2">검색</button> -->
    </div>
    <div v-else class="text-center">게시글이 없습니다.</div>
  </div>
</template>

<script>
import { mapGetters } from 'vuex';
import { mapActions } from 'vuex';
import ListRow from '@/components/qna/include/ListRow.vue';

export default {
  name: 'qnalist',
  data: function() {
    return {
      word: '',
      word2: '',
      pageNum: 0,
      searchKey: 'title',
    };
  },
  components: {
    ListRow,
  },
  computed: {
    ...mapGetters(['qnas']),
    pageCount() {
      let listLeng = this.qnas.length,
        listSize = 10,
        page = Math.floor(listLeng / listSize);
      console.log(page);
      if (listLeng % listSize > 0) page += 1;
      return page;
    },
    paginatedData() {
      const start = this.pageNum * 10,
        end = start + 10;
      return this.qnas.slice(start, end);
    },
  },
  created() {
    this.$store.dispatch('getQnas');
  },
  methods: {
    ...mapActions(['getQnaSearch']),
    movePage() {
      this.$router.push({ name: 'qna-create' });
    },
    search() {
      this.getQnaSearch({ key: this.searchKey, word: this.keyword });
      this.keyword = '';
    },
    nextPage() {
      this.pageNum += 1;
    },
    prevPage() {
      this.pageNum -= 1;
    },
    // search2() {
    //   this.word2=document.querySelector('#content').value;
    // }
  },
};
</script>

<style scoped>
#qna-list {
  border-collapse: collapse;
  width: 100%;
}

#qna-list thead {
  background-color: #ccc;
  font-weight: bold;
}

#qna-list td,
#qna-list th {
  text-align: center;
  border-bottom: 1px solid #ddd;
  height: 50px;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}
</style>
