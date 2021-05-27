import Vue from 'vue';
import VueRouter from 'vue-router';
import Home from '../views/Home.vue';
import Qna from '../views/Qna.vue';
import Apt from '../views/Apt.vue';
import User from '../views/User.vue';

Vue.use(VueRouter);

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home,
  },
  {
    name: 'apt',
    path: '/apt',
    component: Apt,
  },
  {
    name: 'qna',
    path: '/qna',
    component: Qna,
    children: [
      {
        path: '',
        name: 'qna-list',
        component: () => import('@/components/qna/QnaList.vue'),
      },
      {
        path: 'create',
        name: 'qna-create',
        component: () => import('@/components/qna/QnaCreate.vue'),
      },
      {
        path: 'view',
        name: 'qna-view',
        component: () => import('@/components/qna/QnaView.vue'),
      },
      {
        path: 'modify/:id',
        name: 'qna-modify',
        component: () => import('@/components/qna/QnaModify.vue'),
      },
    ],
    redirect: () => {
      return '/qna';
    },
  },
  {
    path: '/about',
    name: 'About',
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue'),
  },
  {
    name: 'user',
    path: '/user',
    component: User,
    children: [
      {
        path: '',
        name: 'user-login',
        component: () => import('@/components/user/Login.vue'),
      },
      {
        path: 'join',
        name: 'user-join',
        component: () => import('@/components/user/UserJoin.vue'),
      },
      {
        path: 'modify',
        name: 'user-modify',
        component: () => import('@/components/user/UserModify.vue'),
      },
    ],
    redirect: () => {
      return '/user';
    },
  },
];

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes,
});

export default router;
