<template>
  <b-container class="bv-example-row" style="margin-top:130px;">
    <b-row>
      <b-col>
        <h1 class="underline">매물 정보</h1>
      </b-col>
    </b-row>
    <apt-search-bar style="width:800px;" />
    <b-row>
      <b-col cols="5" align="left">
        <apt-list />
      </b-col>
      <b-col cols="6">
        <apt-detail />
      </b-col>
    </b-row>
  </b-container>
</template>

<script>
import AptSearchBar from '@/components/apt/AptSearchBar.vue';
import AptList from '@/components/apt/AptList.vue';
import AptDetail from '@/components/apt/AptDetail.vue';

export default {
  name: 'Apt',
  components: {
    AptSearchBar,
    AptList,
    AptDetail,
  },
  data() {
    return {};
  },
  methods: {},
};
</script>

<style scoped></style>
