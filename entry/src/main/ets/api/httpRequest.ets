import { http } from '@kit.NetworkKit'
import { ContentTypeEnum, ResultEnum, RequestEnum, BASEURL } from "../enum/HttpEnum"

interface RequestData {
  //请求Url
  url: string
  //请求方式，GET POST
  methods: http.RequestMethod
  //请求的content-Type
  contenType?: ContentTypeEnum
  //是否需要Token
  token?: boolean
  //超时时间
  connectTimeout?: number
  //参数
  params?: object
}

//创建请求
const httpRequest = http.createHttp()

export async function httpRequestFn<T>(requestData: RequestData): Promise<T> {

  const header: Record<string, string> = {
    'Content-Type': requestData.contenType || 'application/json;charset=UTF-8'
  }

  //传入Token
  if (requestData.token) {
    header.Authorization = "xxxx"
  }

  const response = await httpRequest.request(`${BASEURL.baseUrl}${requestData.url}`,
    {
      method: requestData.methods, //请求方式
      header, //改变请求，让接口返回Json
      extraData: requestData.params, //请求参数 请求体
      connectTimeout: requestData.connectTimeout || 6000, //超时时间 ms  默认6000ms
      expectDataType: http.HttpDataType.OBJECT //指定返回的数据类型
    })

  return new Promise((resolve, reject) => {
    if (response.responseCode === ResultEnum.SUCCESS) {
      resolve(response.result as T)
    } else {
      reject(response.result)
    }
  })
}