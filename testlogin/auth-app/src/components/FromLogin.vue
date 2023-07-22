<template>
  <GoogleLogin :callback="callback" prompt auto-login />
</template>

<script>
import { decodeCredential } from "vue3-google-login";
export default {
  data() {
    return {};
  },
  methods: {
    callback(response) {
      // This callback will be triggered when the user selects or login to
      // his Google account from the popup
      console.log("Handle the response", response);
      console.log(decodeCredential(response.credential));
    },
  },
};
</script>

<style>
</style>