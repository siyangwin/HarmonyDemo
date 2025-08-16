import { router } from "@kit.ArkUI";

interface ListItems {
  Icon: string;
  Name: string;
  Url: string;
}


@Entry
@Component
struct QRCodeProjectDemo {
  @State data: ListItems[] = [
    { Icon: "app.media.ic_my_qrcode", Name: "我的名片", Url: "pages/QRCodeInfoDemo" },
    { Icon: "app.media.ic_article", Name: "我的发布", Url: "" },
    { Icon: "app.media.ic_favorite", Name: "我的收藏", Url: "" },
    { Icon: "app.media.ic_location_item", Name: "我的足迹", Url: "" },
    { Icon: "app.media.ic_member_center", Name: "会员中心", Url: "" },
    { Icon: "app.media.ic_customer_service", Name: "我的客服", Url: "" },
    { Icon: "app.media.ic_setting", Name: "设置", Url: "" }];

  build() {
    Column({ space: 10 }) {
      Row({ space: 20 }) {
        Image($r("app.media.profile03")).borderRadius(60).width(60).height(60)
        Text("个人情况").fontSize(18).fontColor(Color.Blue).fontWeight(FontWeight.Bold)
      }.width("100%").padding({ left: 20 }).backgroundColor("#ffffff").onClick(() => {
        router.pushUrl({ url: "pages/QRCodeUserInfoDemo" })
      })

      Row({ space: 10 }) {
        Row({ space: 10 }) {
          Image($r("app.media.ic_my_qrcode")).width(30).height(30)
          Text("我的名片-直接生成").fontSize(18).fontColor(Color.Blue).fontWeight(FontWeight.Bold)
        }

        Image($r("app.media.ic_arrow_right")).width(30).height(30)
      }
      .width("100%")
      .padding({ left: 20 })
      .backgroundColor("#ffffff")
      .height(60)
      .justifyContent(FlexAlign.SpaceBetween)
      .onClick(() => {
        router.pushUrl({ url: "pages/QRCodeInfoDemo" })
      })


      List({ space: 10 }) {
        ForEach(this.data, (item: ListItems, index) => {
          ListItem() {
            Row({ space: 10 }) {
              Row({ space: 10 }) {
                Image($r(item.Icon)).width(30).height(30)
                Text(item.Name).fontSize(18).fontColor(Color.Black).fontWeight(FontWeight.Bold)
              }

              Image($r("app.media.ic_arrow_right")).width(30).height(30)
            }
            .width("100%")
            .padding({ left: 20 })
            .backgroundColor("#ffffff")
            .height(60)
            .justifyContent(FlexAlign.SpaceBetween)
            .onClick(() => {

              if (item.Url != "") {
                console.log("跳转页面")
                router.pushUrl({ url: item.Url })
              } else {
                console.log("没有跳转数据")
              }

            })
          }
        })
      }
    }.borderWidth(1).width("100%").height("100%").backgroundColor("#eff3fc")
  }
}