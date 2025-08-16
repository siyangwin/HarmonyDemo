import { router } from "@kit.ArkUI"

@Entry
@Component
struct QRCodeUserInfoDemo {
  build() {
    Column({ space: 5 }) {
      Row({ space: 20 }) {
        Image($r("app.media.ic_back")).width(20).height(20)
      }.width("100%").onClick(() => {
        router.back()
      }).margin({ top: 10, left: 10 })

      Row({ space: 20 }) {
        Image($r("app.media.profile03")).width(60).height(60)
        Text("SiYang").fontSize(18).fontColor(Color.Blue).fontWeight(FontWeight.Bold)
      }.width("100%").padding({ left: 20 }).margin({ top: 20 })

      //.backgroundColor("#ffffff")

      Row({ space: 10 }) {
        Text("电话").fontSize(13).width("16%")
        TextInput({ text: "13800138000" })
          .borderWidth(0)
          .backgroundColor("#ffffff")
          .height(60)
          .width("70%")
          .fontColor(Color.Blue)
        Image($r("app.media.ic_arrow_right")).width(30).height(30)
      }
      .width("100%")
      .height(60)
      .padding({ left: 20 })
      .backgroundColor("#ffffff")
      .justifyContent(FlexAlign.SpaceBetween)
      .margin({ top: 20 })

      Row({ space: 10 }) {
        Text("家庭住址").fontSize(13).width("16%")
        TextInput({ text: "广东省深圳市南山区" }).borderWidth(0).backgroundColor("#ffffff").height(60).width("70%")
        Image($r("app.media.ic_arrow_right")).width(30).height(30)
      }
      .width("100%")
      .height(60)
      .padding({ left: 20 })
      .backgroundColor("#ffffff")
      .justifyContent(FlexAlign.SpaceBetween)

      Row({ space: 10 }) {
        Text("电子邮箱").fontSize(13).width("16%")
        TextInput({ text: "siyang@example.com" })
          .borderWidth(0)
          .backgroundColor("#ffffff")
          .height(60)
          .width("70%")
          .fontColor(Color.Blue)
        Image($r("app.media.ic_arrow_right")).width(30).height(30)
      }
      .width("100%")
      .height(60)
      .padding({ left: 20 })
      .backgroundColor("#ffffff")
      .justifyContent(FlexAlign.SpaceBetween)


      Row({ space: 10 }) {
        Text("组织").fontSize(13).width("16%")
        TextInput({ text: "华为技术有限公司" })
          .borderWidth(0)
          .backgroundColor("#ffffff")
          .height(60)
          .width("70%")
        //自动占满空白区域
        // Blank()
        Image($r("app.media.ic_arrow_right")).width(30).height(30)
      }
      .width("100%")
      .height(60)
      .padding({ left: 20 })
      .backgroundColor("#ffffff")
      .justifyContent(FlexAlign.SpaceBetween)


      Row({ space: 10 }) {
        Text("备注").fontSize(13).width("16%")
        TextInput({ text: "此处备注内容" }).borderWidth(0).backgroundColor("#ffffff").height(60).width("70%")
        Image($r("app.media.ic_arrow_right")).width(30).height(30)
      }
      .width("100%")
      .height(60)
      .padding({ left: 20 })
      .backgroundColor("#ffffff")
      .justifyContent(FlexAlign.SpaceBetween)
      .margin({ top: 30 })


      Button("确认").width("80%").margin({ top: 30 }).onClick(() => {
        router.back()
      })

    }.borderWidth(1).width("100%").height("100%").backgroundColor("#eff3fc")
  }
}