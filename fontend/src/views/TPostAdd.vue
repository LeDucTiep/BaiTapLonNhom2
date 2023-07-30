<template></template>

<script>
export default {
  name: "TPostAdd",
  components: { TPost },
  props: ["filter"],
  created() {
    console.log("->", this.filter);
  },
};
</script>

<style>
</style>