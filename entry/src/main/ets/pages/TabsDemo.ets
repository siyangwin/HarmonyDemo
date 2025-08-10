@Entry
@Component
struct TabsDemo {
  @State currentIndex: number = 2;

  @Builder
  ccustomTabBar() {
    Column() {
      Image($r("app.media.Huawei")).width(50).height(20)
      //Text("HUAWEI").fontSize(10).fontColor(this.currentIndex == 2 ? Color.Red : Color.Black)
    }
  }

  build() {
    //barPosition start 显示在顶部
    //barPosition End 显示在底部
    //index 默认选择
    Tabs({ barPosition: BarPosition.End, index: this.currentIndex }) {
      TabContent() {
        Text("Push的内容").fontSize(30)
      }.tabBar('讯息')

      TabContent() {
        Text("通讯录的内容").fontSize(30)
      }.tabBar('通讯录')

      TabContent() {
        //Text("首页的内容").fontSize(30)

        Column() {
          Tabs() {
            ForEach([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], (item: number) => {
              TabContent() {
                Text("首页的内容" + item).fontSize(10)
              }.tabBar("顶部" + item)
            })
          }.barMode(BarMode.Scrollable) //超出区域的可以滚动
          .barWidth(300) //设置Tabd的总宽度
        }

      }.tabBar(this.ccustomTabBar())

      TabContent() {
        Text("发现的内容").fontSize(30)
      }.tabBar('发现')

      TabContent() {
        Text("我的内容").fontSize(30)
      }.tabBar('我')
    }
    //false静止滑动切换Tab栏位
    .scrollable(true)
    //设置动画时间
    .animationDuration(0)
    .onChange((value) => {
      this.currentIndex = value

    })
  }
}