interface HealthyHomeList {
  icon: string;
  title: string;
  content: string;
}

@Component
struct HealthyHomePageDemo {
  //定义滚动组件
  private swiperController: SwiperController = new SwiperController();
  @State HealthyHomeLists: Array<HealthyHomeList> = [
    { icon: "app.media.sports_guidance", title: "运动辅导", content: "跑步姿势矫正" },
    { icon: "app.media.nutrition", title: "营养搭配", content: "蛋白质、碳水、脂肪的比例搭配" },
    { icon: "app.media.body", title: "身体指标", content: "三高人群运动注意事项" },
    { icon: "app.media.sleep", title: "睡眠", content: "睡眠对于保持健康的重要性" },
    { icon: "app.media.sports_guidance", title: "运动指导", content: "如何进行搞笑的有氧运动" },
    { icon: "app.media.nutrition", title: "运动营养搭配", content: "运动后的饮食搭配" },
    { icon: "app.media.body", title: "身体指标", content: "跑步姿势矫正" },
    { icon: "app.media.sleep", title: "睡眠", content: "跑步姿势矫正" },
    { icon: "app.media.sports_guidance", title: "运动指导", content: "跑步姿势矫正" }];

  build() {
    Scroll() {
      Column({ space: 10 }) {
        //滚动组件
        Swiper(this.swiperController) {
          Image($r("app.media.th"))

          Text("轮播1")
            .width("100%")
            .height(200)
            .textAlign(TextAlign.Center)
            .backgroundColor(Color.Yellow)

          Image("/Images/2.jpg")
        }.width("100%")
        .height(200)
        .autoPlay(true) //是否自动轮播

        Row() {
          Text().backgroundColor(Color.Blue).width(7).height(30).margin({ left: 10 })
          Text("热门资讯").margin({ left: 10 })
        }.width("100%").height(40) //.backgroundColor(Color.White)

        //Divider().color(Color.Grey).strokeWidth(5)

        ForEach(this.HealthyHomeLists, (item: HealthyHomeList, index) => {
          Row() {
            Image($r(item.icon)).width(40).height(40)
            Column({ space: 3 }) {
              Text(item.title).fontColor(Color.Red)
              Text(item.content).fontWeight(FontWeight.Bold)
            }.alignItems(HorizontalAlign.Start).margin({ left: 20 })
          }.width("90%").backgroundColor(Color.White).height(60).padding({ left: 10 })

        })

        Row() {
          Image($r("app.media.startIcon")).width(40).height(40)
          Column({ space: 3 }) {
            Text("运动辅导").fontColor(Color.Red)
            Text("跑步姿势矫正").fontWeight(FontWeight.Bold)
          }.alignItems(HorizontalAlign.Start).margin({ left: 20 })
        }.width("90%").backgroundColor(Color.White).height(60).padding({ left: 10 })

        Row() {
          Image($r("app.media.startIcon")).width(40).height(40)
          Column({ space: 3 }) {
            Text("运动辅导").fontColor(Color.Red)
            Text("跑步姿势矫正").fontWeight(FontWeight.Bold)
          }.alignItems(HorizontalAlign.Start).margin({ left: 20 })
        }.width("90%").backgroundColor(Color.White).height(60).padding({ left: 10 })

        Row() {
          Image($r("app.media.startIcon")).width(40).height(40)
          Column({ space: 3 }) {
            Text("运动辅导").fontColor(Color.Red)
            Text("跑步姿势矫正").fontWeight(FontWeight.Bold)
          }.alignItems(HorizontalAlign.Start).margin({ left: 20 })
        }.width("90%").backgroundColor(Color.White).height(60).padding({ left: 10 })

        Row() {
          Image($r("app.media.startIcon")).width(40).height(40)
          Column({ space: 3 }) {
            Text("运动辅导").fontColor(Color.Red)
            Text("跑步姿势矫正").fontWeight(FontWeight.Bold)
          }.alignItems(HorizontalAlign.Start).margin({ left: 20 })
        }.width("90%").backgroundColor(Color.White).height(60).padding({ left: 10 })

        Row() {
          Image($r("app.media.startIcon")).width(40).height(40)
          Column({ space: 3 }) {
            Text("运动辅导").fontColor(Color.Red)
            Text("跑步姿势矫正").fontWeight(FontWeight.Bold)
          }.alignItems(HorizontalAlign.Start).margin({ left: 20 })
        }.width("90%").backgroundColor(Color.White).height(60).padding({ left: 10 })

        Row() {
          Image($r("app.media.startIcon")).width(40).height(40)
          Column({ space: 3 }) {
            Text("运动辅导").fontColor(Color.Red)
            Text("跑步姿势矫正").fontWeight(FontWeight.Bold)
          }.alignItems(HorizontalAlign.Start).margin({ left: 20 })
        }.width("90%").backgroundColor(Color.White).height(60).padding({ left: 10 })

        Row() {
          Image($r("app.media.startIcon")).width(40).height(40)
          Column({ space: 3 }) {
            Text("运动辅导").fontColor(Color.Red)
            Text("跑步姿势矫正").fontWeight(FontWeight.Bold)
          }.alignItems(HorizontalAlign.Start).margin({ left: 20 })
        }.width("90%").backgroundColor(Color.White).height(60).padding({ left: 10 })

        Row() {
          Image($r("app.media.startIcon")).width(40).height(40)
          Column({ space: 3 }) {
            Text("运动辅导").fontColor(Color.Red)
            Text("跑步姿势矫正").fontWeight(FontWeight.Bold)
          }.alignItems(HorizontalAlign.Start).margin({ left: 20 })
        }.width("90%").backgroundColor(Color.White).height(60).padding({ left: 10 })

        Row() {
          Image($r("app.media.startIcon")).width(40).height(40)
          Column({ space: 3 }) {
            Text("运动辅导").fontColor(Color.Red)
            Text("跑步姿势矫正").fontWeight(FontWeight.Bold)
          }.alignItems(HorizontalAlign.Start).margin({ left: 20 })
        }.width("90%").backgroundColor(Color.White).height(60).padding({ left: 10 })

      }.width("100%").borderWidth(1).backgroundColor("#eff3fc")
    }.width("100%").height("100%")
  }
}

export default HealthyHomePageDemo