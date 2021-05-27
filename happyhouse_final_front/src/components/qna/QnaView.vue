<template>
  <div>
    <view-detail />
  </div>
</template>

<script>
import ViewDetail from "@/components/qna/include/ViewDetail.vue";

export default {
  name: "qnaview",
  components: {
    ViewDetail
  },
  created() {
    this.$store.dispatch("getQna", `/${this.$route.query.id}`);
  }
};
</script>
