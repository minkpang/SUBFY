<template>
  <nav
    class="navbar navbar-expand-lg navbar-light fixed-top py-3"
    id="mainNav"
    style="background:black; opacity: 0.7;"
  >
    <div class="container px-4 px-lg-5">
      <a class="navbar-brand" href="#page-top">SUBFY</a>
      <button
        class="navbar-toggler navbar-toggler-right"
        type="button"
        data-bs-toggle="collapse"
        data-bs-target="#navbarResponsive"
        aria-controls="navbarResponsive"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ms-auto my-2 my-lg-0">
          <li class="nav-item">
            <a class="nav-link" href="#portfolio"> <router-link to="/">About</router-link></a>
          </li>
          <!-- sessionStroage에 로그인 정보가 있으면 로그아웃을, 아니면 로그인을 -->
          <li class="nav-item" v-if="userName != 'null'">
            <a class="nav-link" @click="logout" style="color:rgb(79,143,255)">Logout</a>
          </li>
          <li class="nav-item" v-if="userName != 'null'">
            <a class="nav-link" style="color:rgb(79,143,255)"
              ><router-link to="/user/modify">MyPage</router-link></a
            >
          </li>
          <li class="nav-item" v-else>
            <a class="nav-link"><router-link to="/user">Login</router-link> </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#contact"><router-link to="/apt">매물 정보</router-link> </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#services"><router-link to="/qna">QnA 게시판</router-link></a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</template>
<script>
export default {
  name: 'navbarResponsive',
  data() {
    return {
      userName: this.$store.getters.getData,
    };
  },
  methods: {
    logout() {
      if (confirm('로그아웃 하시겠습니까?')) {
        sessionStorage.setItem('accessToken', null);
        sessionStorage.setItem('userId', null);
        sessionStorage.setItem('userName', null);
        alert('로그아웃!');
        this.$router.push('/');
        window.location.reload();
      }
    },
  },
};
</script>

<style>
.ssafy_logo {
  width: 300px;
  margin: 30px;
}
.header {
  text-align: center;
  box-shadow: 0px 1px 10px rgba(0, 0, 0, 0.3);
}
.header img {
  vertical-align: middle;
}
.logo {
  display: inline-block;
  font-size: 30pt;
  font-weight: bold;
  color: white;
}
</style>
