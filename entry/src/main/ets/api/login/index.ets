import { httpRequestFn } from "../httpRequest"
import { LoginParams } from "./indexModel"
import { http } from "@kit.NetworkKit"
import { EntryDataRequestResult } from '../model/baseModel'

enum Api {
  login = "api/login",
  register = "api/register"
}

//登录
export const login = (params: LoginParams) => {
  return httpRequestFn<EntryDataRequestResult>({
    url: Api.login,
    methods: http.RequestMethod.GET,
    params
  })
}

// 注册
export const register = (params: LoginParams) => {
  return httpRequestFn<EntryDataRequestResult>({
    url: Api.register,
    methods: http.RequestMethod.POST,
    params
  })
}
