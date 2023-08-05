<template>
  <div class="t-profile">
    <div class="profile__head">
      <div class="t-title">Thông tin tài khoản</div>
    </div>

    <div class="profile__body">
      <MSInputText :readonly="isReadonly" title="Họ và tên"></MSInputText>

      <MSInputText :readonly="isReadonly" title="Số điện thoại"></MSInputText>

      <MSInputRadio
        :readonly="isReadonly"
        title="Giới tính"
        direction="row"
        :items="[
          { id: 0, value: 'Nam' },
          { id: 1, value: 'Nữ' },
        ]"
        v-model:id="user.Gender"
      ></MSInputRadio>

      <MSInputText :readonly="isReadonly" title="Năm sinh"></MSInputText>

      <MSInputText :readonly="isReadonly" title="Địa chỉ"></MSInputText>
    </div>
    <div class="profile__foot">
      <div v-if="isReadonly" @click="editOnClick()" class="main-button">
        Chỉnh sửa
      </div>

      <div v-else class="main-button">Lưu</div>
    </div>
  </div>
</template>

<script>
export default {
  name: "TProfile",
  components: {},
  props: {
    editMode: {
      type: Boolean,
      default: true,
    },
  },
  data() {
    return {
      user: {},
      auth: null,
      isReadonly: this.editMode,
    };
  },
  watch: {},

  computed: {},

  created() {},

  mounted() {
    if (this.$msCookies.get("accessToken") == false) {
      this.$router.push("/");
    }
  },

  beforeUnmount() {},

  methods: {
    editOnClick() {
      this.isReadonly = false;
    },
  },
};
</script>

<style lang="scss">
.t-profile {
  position: fixed;
  left: calc(50vw - 300px);
  margin-top: 24px;
  background-color: #fff;
  width: 600px;
  padding: 24px;

  .profile__head {
    .t-title {
      font-size: 16px;
      font-weight: bold;
    }
    padding-bottom: 12px;
  }

  .profile__body {
    display: flex;
    flex-direction: column;
    row-gap: 12px;

    .input {
      .input__label {
        font-size: 14px !important;
        padding-bottom: 6px;
      }
    }
    padding-bottom: 12px;
  }

  .profile__foot {
    display: flex;
    justify-content: end;
  }
}
</style>