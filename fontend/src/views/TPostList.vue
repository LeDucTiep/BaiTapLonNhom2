<template>
  <div class="posts">
    <TPost v-for="news in newsList" :key="news" :news="news"></TPost>
  </div>
</template>

<script>
import TPost from "./TPost.vue";
export default {
  name: "TPostList",
  components: { TPost },
  props: ["filter"],
  async created() {
    await this.loadData();
  },
  data() {
    return {
      newsList: [],
    };
  },
  methods: {
    async loadData() {
      const response = await this.$msAxios("get", this.$msApi.NewsApi.Paging, {
        params: {
          // Kích thước của trang
          pageSize: 20,
          // vị trí trang
          pageNumber: 1,
        },
      });
      if (response?.data?.Data) this.newsList = response.data.Data;
    },
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