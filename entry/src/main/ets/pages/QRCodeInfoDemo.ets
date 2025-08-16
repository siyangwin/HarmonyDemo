import { router } from "@kit.ArkUI"

@Entry
@Component
struct QRCodeInfoDemo {
  build() {
    Column({ space: 20 }) {
      Row({ space: 20 }) {
        Image($r("app.media.ic_back")).width(20).height(20)
      }.width("100%").onClick(() => {
        router.back()
      }).margin({ top: 10, left: 10 }).position({ x: 5, y: 5 })

      Text("我的名片").fontSize(20).fontWeight(FontWeight.Bold)
      QRCode("SiYang").width(200).height(200)
      Text("扫描二维码获取我的联络方式")
    }
    .width("100%")
    .height("100%")
    .borderWidth(1)
    .alignItems(HorizontalAlign.Center)
    .justifyContent(FlexAlign.Center)

  }
}