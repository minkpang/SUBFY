<template>
  <b-container v-if="apts && apts.length != 0" class="bv-example-row mt-3" >
    <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
    <apt-list-item v-for="(apt, index) in paginatedData" :key="index" :apt="apt" />
    <div class="my-3" align="center">
      <b-button variant="outline-primary" :disabled="pageNum === 0" @click="prevPage" class="page-btn">
        이전
      </b-button>
      <span class="page-count"> {{ pageNum + 1 }} / {{ pageCount }} 페이지 </span>
      <b-button variant="outline-primary" :disabled="pageNum >= pageCount - 1" @click="nextPage" class="page-btn">
        다음
      </b-button>
</div>
  </b-container>
  <b-container v-else class="bv-example-row mt-3">
    <b-row>
      <b-col><b-alert show>아파트 목록이 없습니다.</b-alert></b-col>
    </b-row>
  </b-container>
</template>

<script>
import { mapState } from 'vuex';
import AptListItem from '@/components/apt/AptListItem.vue';

export default {
  name: 'AptList',
  data: function() {
    return {
      pageNum: 0,
    }
  },
  components: {
    AptListItem,
  },
  computed: {
    ...mapState(['apts']),
    pageCount () {
      let listLeng = this.apts.length,
          listSize = 20,
          page = Math.floor(listLeng / listSize);
          console.log(page);
      if (listLeng % listSize > 0) page += 1; 
      return page;
    },
    paginatedData () {
      const start = this.pageNum * 20,
            end = start + 20;
      return this.apts.slice(start, end);
    },
  },
  methods: {
      nextPage () {
      this.pageNum += 1;
    },
    prevPage () {
      this.pageNum -= 1;
    },
  }

};
</script>

<style>
  .b-container {
    font-family: "Merriweather Sans", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
    "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji",
    "Segoe UI Symbol", "Noto Color Emoji";
  }
</style>
