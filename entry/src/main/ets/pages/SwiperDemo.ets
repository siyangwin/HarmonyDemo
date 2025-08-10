@Entry
@Component
struct SwiperDemo {
  private swiperController: SwiperController = new SwiperController();

  build() {
    Column({ space: 30 }) {
      Swiper(this.swiperController) {
        ForEach([1, 2, 3, 4, 5, 6], (item: number) => {
          Text("轮播" + item)
            .width("100%")
            .height(200)
            .textAlign(TextAlign.Center)
            .backgroundColor(Color.Yellow)
        })
      }
      .width("100%")
      .height(200)
      .autoPlay(true) //是否自动轮播
      .interval(1500) //轮播速度，默认3000
      .loop(true) //是否循环播放
      //.displayArrow(true) //是否显示切换箭头
      .displayCount(2) //设置一个页面同时展示的数量
      .displayArrow({
        //箭头设置
        showBackground: true, //是否显示背景
        backgroundSize: 24, //背景大小
        isSidebarMiddle: true, //箭头是否居中
        arrowSize: 20, //设置箭头的大小
        backgroundColor: Color.Orange//背景颜色
      })
      .vertical(true) //是否纵向轮播

      Button("上一页").onClick(() => {
        this.swiperController.showPrevious()
      })
      Button("下一页").onClick(() => {
        this.swiperController.showNext()
      })


      Swiper() {
        // ForEach([1, 2, 3, 4, 5, 6], (item: number) => {
        Image($r("app.media.th"))

        Text("轮播文字")
          .width("100%")
          .height(200)
          .textAlign(TextAlign.Center)
          .backgroundColor(Color.Pink)
        // })
      }
      .width("100%")
      .height(200)
      .autoPlay(true) //是否自动轮播
      .interval(1000) //轮播速度，默认3000
      .loop(true) //是否循环播放
      .displayArrow(true) //是否显示切换箭头
    }.width("100%").height("100%")
  }
}