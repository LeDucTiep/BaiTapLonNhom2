import { createRouter, createWebHistory } from "vue-router";
import TPostList from "../views/TPostList.vue";

const routers = [
  { path: "/", component: TPostList, name: "Home" },
  { path: "/:filter", component: TPostList, name: "TPostList", props: true },
];

// Khởi tạo router
const router = createRouter({
  history: createWebHistory(),
  routes: routers,
});

export default router;
