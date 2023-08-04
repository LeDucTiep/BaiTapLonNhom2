import { createRouter, createWebHistory } from "vue-router";
import TPostList from "../views/TPostList.vue";
import TPostAdd from "../views/TPostAdd.vue";
import TSignIn from "../views/TSignIn.vue";
import TSignUp from "../views/TSignUp.vue";

const routers = [
  { path: "/", component: TPostList, name: "Home" },
  { path: "/:filter", component: TPostList, name: "TPostList", props: true },
  { path: "/TPostAdd", component: TPostAdd, name: "TPostAdd" },
  { path: "/TSignIn", component: TSignIn, name: "TSignIn" },
  { path: "/TSignUp", component: TSignUp, name: "TSignUp" },
];

// Khởi tạo router
const router = createRouter({
  history: createWebHistory(),
  routes: routers,
});

export default router;
