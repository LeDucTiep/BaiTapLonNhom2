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
      let filter = {};
      try {
        filter = JSON.parse(this.filter);
      } catch {
        //
      }
      const response = await this.$msAxios("get", this.$msApi.NewsApi.Paging, {
        params: {
          // Kích thước của trang
          PageSize: 20,
          // vị trí trang
          PageNumber: 1,
          SearchTerm: filter.SearchTerm,
          Category: filter.Category,
          NewsType: filter.NewsType,
          ProvinceId: filter.ProvinceId,
        },
      });
      if (response?.data?.Data) this.newsList = response.data.Data;
    },
  },
};
</script>

<style scoped>
.posts {
  padding-top: 12px;
  display: flex;
  gap: 12px;
  flex-wrap: wrap;
}
</style>