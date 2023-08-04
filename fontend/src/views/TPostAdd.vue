<template>
  <div class="new-post">
    <div class="title">Đăng tin mới</div>
    <div class="post-form">
      <MSInputText
        title="Tiêu đề"
        :rows="3"
        placeholder="VD: Rơi ví và một số giấy tờ mang tên Nguyễn Văn A ở Cầu Giấy - Hà Nội"
        v-model:value="news.title"
      >
      </MSInputText>
    </div>
  </div>
</template>

<script>
export default {
  name: "TPostAdd",
  components: {},
  props: [],
  data() {
    return {
      news: {},
    };
  },
  created() {},
};
</script>

<style lang="scss">
.new-post {
  padding: 24px;
  .title {
    font-size: 16px;
    font-weight: bold;
    margin-bottom: 12px;
  }
  .post-form {
    * {
      font-size: 14px !important;
    }

    background-color: #fff;
    padding: 24px;
    display: flex;
    flex-direction: column;
    column-gap: 12px;

    .input {
      .input__label {
        margin-bottom: 8px;
      }
    }
  }
}
</style>