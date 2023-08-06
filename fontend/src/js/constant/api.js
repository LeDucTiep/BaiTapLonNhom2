// const BaseApi = "https://cukcuk.manhnv.net/api/v1";
const BaseApi = "https://localhost:44356/api/v1";
const BaseExportApi = "https://localhost:7191/api/v1";

const MSApi = {
  AccountApi: {
    Post: `${BaseApi}/Accounts`,
    Get: (id) => `${BaseApi}/Accounts/${id}`,
    Put: (id) => `${BaseApi}/Accounts/${id}`,
    Delete: (id) => `${BaseApi}/Accounts/${id}`,
    Paging: `${BaseApi}/Accounts/paging`,
  },

  NewsApi: {
    Post: `${BaseApi}/Newss`,
    Get: (id) => `${BaseApi}/Newss/${id}`,
    Put: (id) => `${BaseApi}/Newss/${id}`,
    Delete: (id) => `${BaseApi}/Newss/${id}`,
    Paging: `${BaseApi}/Newss/paging`,
    UploadImg: `${BaseApi}/Newss/upload-img`,
    GetImg: (id) => `${BaseApi}/Newss/image/${id}`,
  },

  CommentApi: {
    Post: `${BaseApi}/Comments`,
    Get: (id) => `${BaseApi}/Comments/${id}`,
    Put: (id) => `${BaseApi}/Comments/${id}`,
    Delete: (id) => `${BaseApi}/Comments/${id}`,
    DeleteMany: `${BaseApi}/Comments`,
    GetNewCode: `${BaseApi}/Comments/new-account-code`,
    CheckCodeDuplicated: `${BaseApi}/Comments/is-code-duplicated`,
    CheckEditCodeDuplicated: `${BaseApi}/Comments/is-edit-code-duplicated`,
    Paging: `${BaseApi}/Comments/ms-paging`,
    ExportExcel: `${BaseExportApi}/Comments/exporting`,
    GetAll: `${BaseApi}/Comments`,
    PagingCombobox: `${BaseApi}/Comments/paging`,
  },

  CityApi: {
    GetAll: `${BaseApi}/Citys`,
    Get: (id) => `${BaseApi}/Citys/${id}`,
    Paging: `${BaseApi}/Citys/paging`,
  },

  DistrictApi: {
    GetAll: `${BaseApi}/Districts`,
    Get: (id) => `${BaseApi}/Districts/${id}`,
    Paging: `${BaseApi}/Districts/paging`,
  },

  CommuneApi: {
    GetAll: `${BaseApi}/Communes`,
    Get: (id) => `${BaseApi}/Communes/${id}`,
    Paging: `${BaseApi}/Communes/paging`,
  },
};

export default MSApi;
