import { createApp } from "vue";
import App from "./App.vue";

const app = createApp(App);

const gauthOption = {
  clientId:
    "745393286452-4mo93u61oq97dbhaauqc7mtsfjd36chf.apps.googleusercontent.com",
  scope: "profile email",
  prompt: "consent",
  fetch_basic_profile: true,
};

import vue3GoogleLogin from "vue3-google-login";

app.use(vue3GoogleLogin, gauthOption);

app.mount("#app");
