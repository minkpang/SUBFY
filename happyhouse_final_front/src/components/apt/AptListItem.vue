<template>
  <b-row
    class="m-2"
    @click="chooseApt"
    @mouseover="colorChange(true)"
    @mouseout="colorChange(false)"
    :class="{ 'mouse-over-bgcolor': isColor }"
  >
    <b-col cols="2" class="text-center">
      <!-- <img src="@/assets/apt.png" class="img-list" alt="" /> -->
    </b-col>
    <b-li name="li" cols="10"> {{calcul(Math.ceil(apt.stationDistance*1000))}} [{{this.apt.lineNumber}} {{this.apt.stationName}}] {{ this.apt.AptName }} | {{this.apt.dealAmount}} </b-li>
  </b-row>
</template>

<script>
import { mapActions } from 'vuex';

export default {
  name: 'AptListItem',
  data() {
    return {
      isColor: false,
    };
  },
  props: {
    apt: Object,
  },
  methods: {
    // chooseApt() {
    //   // this.$emit('select-apt', this.apt);
    //   this.$store.dispatch('selectApt', this.apt);
    // },
    ...mapActions(['selectApt']),
    chooseApt() {
      this.selectApt(this.apt);
      console.log(this.apt);
    },
    colorChange(flag) {
      this.isColor = flag;
    },
    calcul(no){
      if(no<250){
        return '★초역세권★';
      }else if(no<500){
        return '☆역세권☆';
      }else{
        return '';
      }

    }
  },
};
</script>

<style scoped>
.img-list {
  width: 50px;
}
.mouse-over-bgcolor {
  background-color: lightblue;
}
</style>
