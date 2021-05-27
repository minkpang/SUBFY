<template>
  <tr>
    <td>{{ id }}</td>
    <td>
      <router-link :to="`qna/view?id=${id}`">{{ title }}</router-link>
    </td>
    <td>{{ author }}</td>
    <td>{{ wdate}}</td>
  </tr>
</template>

<script>
export default {
  name: "listrow",
  props: {
    id: Number,
    title: String,
    author: String,
    price: Number,
    wdate: Date
  },
  methods: {
    numberWithCommas(x) {
      return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    }
  }
};
</script>
<style scope>
td {
  text-align: center;
  border-bottom: 1px solid #ddd;
  height: 50px;
}
</style>
