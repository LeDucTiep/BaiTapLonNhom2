<template>
  <h1>Sign in account</h1>
  <p><input v-model="account.email" /></p>
  <p><input v-model="account.pass" /></p>
  <button @click="register()">Submit</button>
  <button @click="signInWithGoogle()">Sign in with google</button>
  <button class="main-button" @click="signUpOnClick()">Sign up</button>
</template>
  
  <script>
import {
  getAuth,
  GoogleAuthProvider,
  signInWithPopup,
  signInWithEmailAndPassword,
} from "firebase/auth";

export default {
  name: "TSignIn",
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

      try {
        const resData = await signInWithEmailAndPassword(
          auth,
          this.account.email,
          this.account.pass
        );
        if (resData?.user?.accessToken) {
          this.$msCookies.set("accessToken", resData.user.accessToken);
          const actoken = this.$msCookies.get("accessToken");
          console.log("Success dang nhap", actoken);
        }
        this.$router.push("/");
      } catch (e) {
        console.log("Error", e);
      }
    },
    signInWithGoogle() {
      const provider = new GoogleAuthProvider();
      const auth = getAuth();

      signInWithPopup(auth, provider)
        .then((result) => {
          console.log("Success dang nhap", result);

          if (result?.user?.accessToken) {
            this.$msCookies.set("accessToken", result.user.accessToken);
            // const actoken = this.$msCookies.get("accessToken");
            // console.log("Success dang nhap", actoken);
          }

          if (result?.user?.photoURL) {
            this.$msCookies.set("photoURL", result.user.photoURL);
            console.log(this.$msCookies.get("photoURL"));
          }

          this.$router.push("/");
        })
        .catch((error) => {
          console.log(error);
        });
    },
    signUpOnClick() {
      this.$router.push("/TSignUp");
    },
  },
};
</script>
  
  <style lang="scss">
</style>