import { createRouter, createWebHistory } from "vue-router";
import { getAuth, onAuthStateChanged } from "firebase/auth";

import TPostList from "../views/TPostList.vue";
import TPostAdd from "../views/TPostAdd.vue";
import TSignIn from "../views/TSignIn.vue";
import TSignUp from "../views/TSignUp.vue";
import TProfile from "../views/TProfile.vue";

const routers = [
  { path: "/", component: TPostList, name: "Home" },
  { path: "/:filter", component: TPostList, name: "TPostList", props: true },
  { path: "/TPostAdd", component: TPostAdd, name: "TPostAdd" },
  { path: "/TSignIn", component: TSignIn, name: "TSignIn" },
  { path: "/TSignUp", component: TSignUp, name: "TSignUp" },
  { path: "/TProfile", component: TProfile, name: "TProfile" },
];

// Khởi tạo router
const router = createRouter({
  history: createWebHistory(),
  routes: routers,
});

const getCurrentUser = () => {
  return new Promise((resolve, reject) => {
    const removeListener = onAuthStateChanged(
      getAuth(),
      (user) => {
        removeListener();
        resolve(user);
      },
      reject
    );
  });
};

router.beforeEach(async (to, from, next) => {
  const isRequiredAuth = to.matched.some(
    (record) => !!record.meta?.requiresAuth
  );

  if (isRequiredAuth) {
    if (await getCurrentUser()) {
      next();
    } else {
      alert("Please login first");
      next("/");
    }
  } else {
    next();
  }
});

export default router;
