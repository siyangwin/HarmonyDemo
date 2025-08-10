@Entry
@Component
struct SideBarContainerDemo {
  @State SelectItem: number = 0

  build() {
    //SideBarContainer(SideBarContainerType.Embed)  //侧边栏推出内容页面
    //侧边栏覆盖内容页面
    SideBarContainer(SideBarContainerType.Embed) {
      //第一个组件为侧边栏内容
      Column() {
        ForEach([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18], (Item: number) => {
          Row() {
            Image($r("app.media.startIcon")).width(30).height(30)
            Text(`index${Item}`).margin({ left: 20 })
          }
          .margin({ top: 2 })
          .height(50)
          .borderWidth(1)
          .width("100%")
          .justifyContent(FlexAlign.Center)

          .onClick(() => {
            this.SelectItem = Item
          })
        })
      }.padding({ top: 45 })

      .height("100%")
      .backgroundColor(Color.Orange)


      //第二个组件是内容区
      Column() {
        Text("主内容" + this.SelectItem)
          .width("100%")
          .height("100%")
          .fontSize(30)
          .textAlign(TextAlign.Center)
      }.height("100%")
      .backgroundColor("#bbccaa")
    }
    .showSideBar(false) //控制侧边栏显示隐藏
    .sideBarWidth(200) //设置侧边栏宽度为150
    .minSideBarWidth(100) //设置侧边栏最小宽度
    .maxSideBarWidth(200) //设置侧边栏最大宽度
    .controlButton({
      //设置侧边栏按钮的宽度
      width: 30,
      //设置侧边栏按钮的高度
      height: 30,
      //设置侧边栏按钮距离容器顶部
      top: 15,
      icons: {
        shown: $r("app.media.back"), //显示时候的icon
        hidden: $r("app.media.menu"), //隐藏时候的icon
        switching: $r("app.media.startIcon") //切换时候的icon
      }
    })
    .onChange((value) => { //侧边栏显示隐藏的时候触发
      console.log("" + value)
    })
    .divider({
      //分割线属性设置
      strokeWidth: "5vp", //宽度
      color: Color.Red, //颜色
      startMargin: "30vp", //分割线距离顶部的距离
      endMargin: "30vp"//分割线距离底部的距离
    })
  }
}