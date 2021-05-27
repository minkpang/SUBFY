<template>
  <div style="margin-left: 140px; margin-right: 144px">
    <div style="text-align:left; margin-left:100px">
      <input type="radio" v-model="chk_info" value="GPS" checked="checked" />GPS
      <input type="radio" v-model="chk_info" value="ROAD" />로드뷰
    </div>

    <div v-show="chk_info === 'GPS'" id="map"></div>
    <div
      v-show="chk_info === 'ROAD'"
      id="roadview"
      style="width:300px;height:300px; margin: 20px 90px 20px 0px;"
    ></div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      map: null,
      markers: [],
      chk_info: 'GPS',
    };
  },
  mounted() {
    window.kakao && window.kakao.maps ? this.initMap() : this.initMap();
  },
  methods: {
    addKakaoMapScript() {
      //const script = document.createElement("script");
      /* global kakao */
      console.log('addKakaoMap');
      for (var j in this.markers) {
        this.markers[j].setMap(null);
      }
      this.markers = [];
      for (var i in this.$store.state.apts) {
        var markerPosition = new kakao.maps.LatLng(
          this.$store.state.apts[i].lat,
          this.$store.state.apts[i].lng
        );
        var marker = new kakao.maps.Marker({
          position: markerPosition,
        });
        this.markers.push(marker);
        marker.setMap(this.map);
      }
      // script.onload = () => kakao.maps.load(this.initMap);
      // script.src =
      //   "http://dapi.kakao.com/v2/maps/sdk.js?autoload=false&appkey=5cf76fc2db32edb271c3c520a07446f4";
      // document.head.appendChild(script);
    },
    initMap() {
      console.log('initkakaomap');
      console.log(window.kakao.maps);
      console.log(this.$store.state.apt);
      var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
      var options = {
        //지도를 생성할 때 필요한 기본 옵션
        center: new kakao.maps.LatLng(this.$store.state.apt.lat, this.$store.state.apt.lng), //지도의 중심좌표.
        level: 5, //지도의 레벨(확대, 축소 정도)
      };
      var map = new kakao.maps.Map(container, options); // 지도를 생성합니다
      // 마커가 표시될 위치입니다
      var markerPosition = new kakao.maps.LatLng(
        this.$store.state.apt.lat,
        this.$store.state.apt.lng
      );

      // 마커를 생성합니다
      var marker = new kakao.maps.Marker({
        position: markerPosition,
      });
      var roadviewContainer = document.getElementById('roadview'); //로드뷰를 표시할 div
      var roadview = new kakao.maps.Roadview(roadviewContainer); //로드뷰 객체
      var roadviewClient = new kakao.maps.RoadviewClient(); //좌표로부터 로드뷰 파노ID를 가져올 로드뷰 helper객체

      var position = new kakao.maps.LatLng(this.$store.state.apt.lat, this.$store.state.apt.lng);

      // 특정 위치의 좌표와 가까운 로드뷰의 panoId를 추출하여 로드뷰를 띄운다.
      roadviewClient.getNearestPanoId(position, 50, function(panoId) {
        roadview.setPanoId(panoId, position); //panoId와 중심좌표를 통해 로드뷰 실행
      });

      // 마커가 지도 위에 표시되도록 설정합니다
      marker.setMap(map);
      return this.map;
    },
  },
  computed: {
    selected: function() {
      return this.$store.state.apt;
    },
  },
  watch: {
    selected: function() {
      this.initMap();
    },
  },
};
</script>

<style>
#map {
  width: 300px;
  height: 300px;
  margin: 20px 90px 20px 0px;
}
</style>
