<template>
  <b-container v-if="apt.dong" class="bv-example-row">
    <b-col style="margin-right:0px"
      ><h3>{{ calcul(Math.ceil(apt.stationDistance * 1000)) }}{{ apt.AptName }}</h3></b-col
    >
    <b-row class="mb-2 mt-1">
      <Map />
      <!-- <b-col><img src="@/assets/apt.png" alt=""/></b-col> -->
    </b-row>

    <table class="table" style="text-align:center; margin-left:50px;">
      <thead class="thead-light">
        <tr>
          <th scope="col"></th>
          <th scope="col">건물 이름</th>
          <th scope="col">[{{ apt.no }}] {{ apt.AptName }} [{{ apt.floor }}층]</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row"></th>
          <td>도로명주소 🏘</td>
          <td>{{ apt.doroAddress }}</td>
        </tr>
        <tr>
          <th scope="row"></th>
          <td>거래금액 💸</td>
          <td>{{ apt.dealAmount.replace(',', '') | price }}만원</td>
        </tr>
        <tr>
          <th scope="row"></th>
          <td>인근역 정보 🚉</td>
          <td>{{ apt.lineNumber }} {{ apt.stationName }}역</td>
        </tr>
        <tr>
          <th scope="row"></th>
          <td>역세권 거리</td>
          <td>
            {{ Math.ceil(apt.stationDistance * 1000) }}m
            {{ calcul(Math.ceil(apt.stationDistance * 1000)) }}
            [{{ Math.round(walkCount(apt.stationDistance * 1000)) }}
            걸음]
          </td>
        </tr>
        <tr>
          <th scope="row"></th>
          <td>인근 공원 정보 ⛺</td>
          <td>{{ apt.parkName }}</td>
        </tr>
        <tr>
          <th scope="row"></th>
          <td>인근 공원 주소</td>
          <td>{{ apt.parkJibunAddress }}</td>
        </tr>
        <tr>
          <th scope="row"></th>
          <td>공원 거리</td>
          <td>
            {{ Math.ceil(apt.parkDistance * 1000) }}m [{{
              Math.round(walkCount(apt.parkDistance * 1000))
            }}걸음]
          </td>
        </tr>
      </tbody>
    </table>
  </b-container>
</template>

<script>
import { mapState } from 'vuex';
import Map from '@/components/Map.vue';

export default {
  name: 'AptDetail',
  data() {
    return {
      gender: this.$store.getters.getGender,
    };
  },
  components: {
    Map,
  },
  computed: {
    ...mapState(['apt']),
  },
  filters: {
    price(value) {
      if (!value) return value;
      return value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
    },
  },
  methods: {
    calcul(no) {
      if (no < 250) {
        return '[★초역세권★]';
      } else if (no < 500) {
        return '[☆역세권☆]';
      } else {
        return '';
      }
    },
    walkCount(no) {
      if (this.gender == 'male') {
        return no / 0.7;
      } else {
        return no / 0.6;
      }
    },
  },
};
</script>

<style>
.b-container {
  font-family: 'Merriweather Sans', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto,
    'Helvetica Neue', Arial, 'Noto Sans', sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji',
    'Segoe UI Symbol', 'Noto Color Emoji';
}
</style>
