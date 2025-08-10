import { http } from "@kit.NetworkKit"
import json from "@ohos.util.json"
import { JSON } from "@kit.ArkTS"

@Entry
@Component
struct HttpRequestDemo {
  @State Url: string = "https://api.hejian.cyou/api/list"
  @State result: string = ""

  build() {
    Column({ space: 20 }) {

      Text("输入你要请求的GetAPI")
      TextInput({ text: $$this.Url })

      Button("发起请求").onClick(() => {
        //创建请求
        const httpRequest = http.createHttp()
        httpRequest.request(this.Url,
          {
            method: http.RequestMethod.GET, //请求方式
            header: { 'Content-Type': 'application/json' }, //改变请求，让接口返回Json
            //extraData:params  请求参数 请求体
            connectTimeout: 2000 //超时时间 ms
          }).then(res => {
          //返回内容
          if (res.responseCode === 200) {
            this.result = JSON.stringify(res);
            console.log("请求", JSON.stringify(res));
            console.log(JSON.stringify(res));
          }

        })
      })


      Text("请求内容展示")
      TextArea({ text: this.result })
    }
  }
}