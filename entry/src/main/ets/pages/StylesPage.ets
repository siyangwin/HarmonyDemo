// 定义在全局的@Styles封装的样式
@Styles
function globalFancy () {
  .width(150)
  .height(100)
  .backgroundColor(Color.Pink)
}

//指定组件样式复用，只有这个组件能用
@Extend(Button)
function ButtonStyles(size:number,color:Color)
{
.fontSize(size)
  .backgroundColor(color)
}






@Entry
@Component

struct  StylesPage {
  @State heightValue: number = 40;

  //设置通用样式复用
  //定义在组件内的@Styles封装的样式
  @Styles CommonStyled(){
    .width(80)
    .height(this.heightValue)
    .onClick(() => {
      this.heightValue = 20;
    })
  }

  // 定义在组件内的@Styles封装的样式
  @Styles fancy() {
    .width(200)
    .height(this.heightValue)
    .backgroundColor(Color.Yellow)
    .onClick(() => {
      this.heightValue = 200;
    })
  }



  build() {
    Column({space:20}){
      // 使用全局的@Styles封装的样式
      Text('FancyA')
        .globalFancy()
        .fontSize(30)

      // 使用组件内的@Styles封装的样式
      Text('FancyB')
        .fancy()
        .fontSize(30)

      Button("1").CommonStyled().ButtonStyles(30,Color.Blue)
      Button("2").CommonStyled().ButtonStyles(30,Color.Blue)
      Button("3").CommonStyled().ButtonStyles(30,Color.Blue)
      Button("4").CommonStyled().ButtonStyles(30,Color.Blue)
    }.width("100%").height("100%").borderWidth(1).borderColor(Color.Red)
  }
}