import { httpRequestFn } from "../httpRequest"
import { StudentRequestDataDTO } from "./indexModel"
import { http } from "@kit.NetworkKit"

enum Api {
  getList = "api/list",
}


export const getList = () => {
  return httpRequestFn<StudentRequestDataDTO>({ url: Api.getList, methods: http.RequestMethod.GET })
}
