<template>
  <div class="posts">
    <TPost></TPost>
    <TPost></TPost>
    <TPost></TPost>
    <TPost></TPost>
    <TPost></TPost>
    <TPost></TPost>
    <TPost></TPost>
    <TPost></TPost>
    <TPost></TPost>
    <TPost></TPost>
    <TPost></TPost>
    <TPost></TPost>
    <TPost></TPost>
    <TPost></TPost>
    <TPost></TPost>
    <TPost></TPost>
    <TPost></TPost>
    <TPost></TPost>
    <TPost></TPost>
    <TPost></TPost>
    <TPost></TPost>
    <TPost></TPost>
  </div>
</template>

<script>
import TPost from "./TPost.vue";
export default {
  name: "TPostList",
  components: { TPost },
  props: ["filter"],
  created() {
    console.log("->", this.filter);
  },
};
</script>

<style>
.posts {
  padding-top: 12px;
  display: flex;
  gap: 12px;
  flex-wrap: wrap;
}
</style>