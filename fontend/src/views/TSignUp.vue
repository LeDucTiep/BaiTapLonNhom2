<template>
  <h1>Create an account</h1>
  <p><input v-model="account.email" /></p>
  <p><input v-model="account.pass" /></p>
  <button @click="register()">Submit</button>
  <button @click="signInWithGoogle()">Sign in with google</button>
  <button class="main-button" @click="signInOnClick()">Sign in</button>
</template>
  
  <script>
import {
  getAuth,
  GoogleAuthProvider,
  signInWithPopup,
  createUserWithEmailAndPassword,
} from "firebase/auth";

export default {
  name: "TSignUp",
  components: {},
  props: [],
  data() {
    return {
      account: {},
    };
  },
  created() {},
  methods: {
    async register() {
      const auth = getAuth();

      createUserWithEmailAndPassword(
        auth,
        this.account.email,
        this.account.pass
      )
        .then((data) => {
          console.log("Success", data);
          this.$router.push("/");
        })
        .catch((error) => {
          console.log("Error", error);
        });
    },
    signInWithGoogle() {
      const provider = new GoogleAuthProvider();
      signInWithPopup(getAuth(), provider)
        .then((result) => {
          console.log(result);
          this.$router.push("/");
        })
        .catch((error) => {
          console.log(error);
        });
    },
    signInOnClick() {
      this.$router.push("/TSignIn");
    },
  },
};
</script>
  
  <style lang="scss">
</style>