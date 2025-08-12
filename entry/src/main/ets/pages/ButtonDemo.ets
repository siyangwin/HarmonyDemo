@Entry
@Component
struct ButtonDemo {
  //设置变量
  @State message: string = "按钮"
  @State flag: boolean = false;

  build() {
    Column() {
      Button(this.message)
        .stateEffect(false)//设置按钮的反馈 True为有反馈  false为没反馈  默认是true
        .width(150)//宽度
        .height(40)//高度
        .backgroundColor(Color.Red)//背景颜色
        .fontColor(Color.White)//字体颜色
        .type(ButtonType.Normal)//ButtonType.Normal 矩形按钮
        .borderRadius(10)//设置边框弧度
        .onClick(() => {
          console.log("矩形按钮");
          this.message = "按钮"
        })

      //胶囊按钮
      Button("胶囊按钮")
        .width(150)//宽度
        .height(40)//高度
        .backgroundColor(Color.Red)//背景颜色
        .fontColor(Color.White)//字体颜色
        .margin({ top: 10 })//上边距
        .type(ButtonType.Capsule)//ButtonType.Normal 胶囊按钮
        .onClick(() => {
          console.log("胶囊按钮");
          this.message = "胶囊按钮"
        })

      //胶囊按钮
      Button("圆形按钮")
        .width(150)//宽度
        .height(40)//高度
        .backgroundColor(Color.Red)//背景颜色
        .fontColor(Color.White)//字体颜色
        .margin({ top: 20 })//上边距
        .type(ButtonType.Circle)//ButtonType.Normal 圆形按钮
        .onClick(() => {
          console.log("圆形按钮");
          this.message = this.flag ? '点一下' : '点两下'
          this.flag = !this.flag
        })
    }
    .width("100%")
    .height("100%")
  }
}
