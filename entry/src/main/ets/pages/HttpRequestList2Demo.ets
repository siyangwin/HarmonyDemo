import { JSON } from "@kit.ArkTS"
import { getList } from "../api/student/index"
import { Student } from "../api/student/indexModel"

@Entry
@Component
struct HttpRequestListDemo {
  @State Url: string = "https://api.hejian.cyou/api/list"
  @State StudentResponseRes: Array<Student> = [];
  
  build() {
    Column() {
      Button("发起请求").onClick(async () => {
        const res = await getList();
        console.log("封装请求", JSON.stringify(res));
        this.StudentResponseRes = res.data.list;
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