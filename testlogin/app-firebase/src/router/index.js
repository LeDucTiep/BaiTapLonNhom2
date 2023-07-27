import { getAuth, onAuthStateChanged } from "firebase/auth";
import { createRouter, createWebHistory } from "vue-router";

const router = createRouter({
  history: createWebHistory(),
  routes: [
    { path: "/", component: () => import("../views/HomeView.vue") },
    { path: "/register", component: () => import("../views/RegisterView.vue") },
    { path: "/sign-in", component: () => import("../views/SignInView.vue") },
    {
      path: "/feed",
      component: () => import("../views/FeedView.vue"),
      meta: {
        requiresAuth: true,
      },
    },
  ],
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
  console.log(isRequiredAuth);
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