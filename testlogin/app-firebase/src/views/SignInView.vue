<template>
  <h1>Sign in account</h1>
  <p><input v-model="email" /></p>
  <p><input v-model="pass" /></p>
  <button @click="register()">Submit</button>
  <button @click="signInWithGoogle()">Sign in with google</button>
</template>

<script setup>
import { ref } from "vue";
import {
  getAuth,
  signInWithEmailAndPassword,
  signInWithPopup,
  GoogleAuthProvider,
} from "firebase/auth";
import router from "@/router";

const email = ref("");
const pass = ref("");

const register = () => {
  const auth = getAuth();

  signInWithEmailAndPassword(auth, email.value, pass.value)
    .then((data) => {
      console.log("Success dang nhap", data);

      console.log(auth.currentUser);
      router.push("/feed");
    })
    .catch((error) => {
      console.log("Error", error);
    });
};

const signInWithGoogle = () => {
  const provider = new GoogleAuthProvider();
  signInWithPopup(getAuth(), provider)
    .then((result) => {
      console.log(result);
      router.push("/feed");
    })
    .catch((error) => {
      console.log(error);
    });
};
</script>

<style>
</style>