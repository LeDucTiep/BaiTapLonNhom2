import { createApp } from "vue";
import App from "./App.vue";
import router from "./router/index";

// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
// import { getAnalytics } from "firebase/analytics";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
  apiKey: "AIzaSyDq-1BUBeYrTExJCBycIBORCC3684THeTA",
  authDomain: "timdothatlac-83578.firebaseapp.com",
  projectId: "timdothatlac-83578",
  storageBucket: "timdothatlac-83578.appspot.com",
  messagingSenderId: "410770968373",
  appId: "1:410770968373:web:a27b700ce17acc04c3067c",
  measurementId: "G-C41BLSCVSL",
};

initializeApp(firebaseConfig);

// const analytics = getAnalytics(app);

const app = createApp(App);

app.use(router);

app.mount("#app");
