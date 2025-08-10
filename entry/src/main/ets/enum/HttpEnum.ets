import http from "@ohos.net.http";

//返回类型枚举 Request result set
export enum ResultEnum {
  //成功
  SUCCESS = 200,
  //失败
  ERROR = 1,
  //登录过期
  UNAUTHORIZED = 401
}

//请求枚举 request method
export enum RequestEnum {
  GET = http.RequestMethod.GET,
  POST = http.RequestMethod.POST,
  PUT = http.RequestMethod.PUT,
  DELETE = http.RequestMethod.DELETE
}

// contentType
export enum ContentTypeEnum {
  // json
  JSON = "application/json;charset=UTF-8",
  // form-data qs
  FORM_URLENCODED = "application/x-www-form-urlencoded;charset=UTF-8",
  // form-data  upload
  FORM_DATA = "multipart/form-data;charset=UTF-8",
}

/**
 * baseUrl
 */
export enum BASEURL {
  baseUrl = 'https://api.hejian.cyou/'
}