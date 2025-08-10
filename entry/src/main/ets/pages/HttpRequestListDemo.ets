import { http } from "@kit.NetworkKit"
import { JSON } from "@kit.ArkTS"


class StudentResponse {
  // 响应状态码（0表示成功）
  code: number = 0;
  // 响应信息
  message: string = "";
  // 响应数据（分页的学生列表）
  data: StudentPageData = new StudentPageData();
}

class StudentPageData {
  // 总记录数
  total: number = 0;
  // 当前页码
  page: number = 1;
  // 每页条数
  pageSize: number = 10;
  // 学生列表
  list: Student[] = [];
}

class Student {
  // 学生唯一标识
  id: number = 0;
  // 学生姓名
  name: string = "";
  // 学生年龄
  age: number = 0;
  // 班级名称
  class_name: string = "";
  // 性别（男/女）
  gender: string = "";
}


@Entry
@Component
struct HttpRequestListDemo {
  @State Url: string = "https://api.hejian.cyou/api/list"
  @State StudentResponseRes: Array<Student> = [];

  //@State result: string = ""

  build() {
    Column() {
      Button("发起请求").onClick(() => {
        //创建请求
        const httpRequest = http.createHttp()
        httpRequest.request(this.Url,
          {
            method: http.RequestMethod.GET, //请求方式
            header: { 'Content-Type': 'application/json' }, //改变请求，让接口返回Json
            //extraData:params  请求参数 请求体
            connectTimeout: 2000, //超时时间 ms
            expectDataType: http.HttpDataType.OBJECT //指定返回的数据类型
          }).then(res => {
          //返回内容
          if (res.responseCode === 200) {
            const resulthttp = res.result as StudentResponse;
            this.StudentResponseRes = resulthttp.data.list;
            console.log("请求", JSON.stringify(resulthttp.data.list));
            //this.result = JSON.stringify(res);
            console.log("请求", JSON.stringify(this.StudentResponseRes));
          }

        })
      })

      List() {
        ForEach(this.StudentResponseRes, (item: Student, index) => {
          ListItem() {
            Row() {
              Image($r('app.media.startIcon'))
                .width(50)
                .height(50)

              Column() {
                Text(`姓名：${item.name}`)
                Text(`性别：${item.gender}`)
                Text(`年龄：${item.age}`)
                Text(`年级：${item.class_name}`)
              }.borderWidth(1).justifyContent(FlexAlign.Start).alignItems(HorizontalAlign.Start).margin({ left: 20 })

            }.borderWidth(1).padding(10).width("100%")

          }.width("100%")
        })

      }.width("100%").margin({ top: 10 })

      // Text("请求内容展示")
      // TextArea({ text: this.result })
    }.width("100%").height("100%")
  }
}