<template>
  <nav>
    <router-link to="/">Home</router-link> |
    <router-link to="/feed">Feed</router-link> |
    <router-link to="/register">Register</router-link> |
    <router-link to="/sign-in">Login</router-link> |
    <button @click="handleSignOut()" v-if="isLoggedIn">Sign out</button>
  </nav>
  <router-view></router-view>
</template>

<script setup>
import { useRouter } from "vue-router";
import { onMounted, ref } from "vue";
import { getAuth, onAuthStateChanged, signOut } from "firebase/auth";

const router = useRouter();

const isLoggedIn = ref(false);

let auth;

const handleSignOut = () => {
  signOut(auth).then(() => {
    router.push("/");
  });
};

onMounted(async () => {
  auth = getAuth();
  await onAuthStateChanged(auth, (user) => {
    if (user) {
      isLoggedIn.value = true;
    } else {
      isLoggedIn.value = false;
    }
    console.log("Đã đăng nhập", isLoggedIn.value);
  });
});
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
