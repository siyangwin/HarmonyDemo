@Entry
@Component
struct RelativeContainerDemo {
  build() {
    //相对布局
    RelativeContainer() {
      //top设置头部 对于id或者目前容器的位置
      //left设置左边 对于id或者目前容器的位置
      //right设置右边 对于id或者目前容器的位置
      //bottom设置下边 对于id或者目前容器的位置
      //center设置(上下中间) 对于id或者目前容器的位置
      //middle设置(左右中间) 对于id或者目前容器的位置

      //VerticalAlign(上下) 只有Top center Bottom
      //HorizontalAlign(左右) 只有Start center End

      // Row() {
      //   Text("Row1")
      //     .fontSize(30) //设置字体大小
      // }
      // .justifyContent(FlexAlign.Center) //使子元素水平居中
      // .alignItems(VerticalAlign.Center) //使子元素垂直居中
      // .height(100) //设置高度
      // .width(100) //设置宽度
      // .backgroundColor(Color.Orange) //设置背景颜色
      // .alignRules({
      //   //设置相对布局
      //   top: { anchor: '__container__', align: VerticalAlign.Bottom }, //__container__ 表示父元素，如果有ID，此处用ID也行
      //   left: { anchor: '__container__', align: HorizontalAlign.Start },
      // })
      // .id("row1") //给个id
      //
      //
      // Row() {
      //   Text("Row2")
      //     .fontSize(30) //设置字体大小
      // }
      // .justifyContent(FlexAlign.Center) //使子元素水平居中
      // .alignItems(VerticalAlign.Center) //使子元素垂直居中
      // .height(100) //设置高度
      // .width(100) //设置宽度
      // .backgroundColor(Color.Blue) //设置背景颜色
      // .alignRules({
      //   //设置相对布局
      //   top: { anchor: 'row1', align: VerticalAlign.Top }, //__container__ 表示父元素，如果有ID，此处用ID也行
      //   left: { anchor: 'row3', align: HorizontalAlign.End },
      // })
      // .id("row2") //给个id
      //
      //
      // Row() {
      //   Text("Row3")
      //     .fontSize(30)//设置字体大小
      //     .fontColor(Color.White)
      // }
      // .justifyContent(FlexAlign.Center) //使子元素水平居中
      // .alignItems(VerticalAlign.Center) //使子元素垂直居中
      // .height(100) //设置高度
      // .width(100) //设置宽度
      // .backgroundColor(Color.Black) //设置背景颜色
      // .alignRules({
      //   //设置相对布局
      //   top: { anchor: 'row1', align: VerticalAlign.Bottom }, //__container__ 表示父元素，如果有ID，此处用ID也行
      //   left: { anchor: 'row1', align: HorizontalAlign.End },
      // })
      // .id("row3") //给个id
      //
      //
      // Row() {
      //   Text("Row4")
      //     .fontSize(30)//设置字体大小
      //     .fontColor(Color.White)
      // }
      // .justifyContent(FlexAlign.Center) //使子元素水平居中
      // .alignItems(VerticalAlign.Center) //使子元素垂直居中
      // .height(100) //设置高度
      // .width(100) //设置宽度
      // .backgroundColor(Color.Pink) //设置背景颜色
      // .alignRules({
      //   //设置相对布局
      //   top: { anchor: 'row3', align: VerticalAlign.Bottom }, //__container__ 表示父元素，如果有ID，此处用ID也行
      //   right: { anchor: 'row3', align: HorizontalAlign.Start },
      // })
      // .id("row4") //给个id
      //
      //
      // Row() {
      //   Text("Row5")
      //     .fontSize(30)//设置字体大小
      //     .fontColor(Color.White)
      // }
      // .justifyContent(FlexAlign.Center) //使子元素水平居中
      // .alignItems(VerticalAlign.Center) //使子元素垂直居中
      // .height(100) //设置高度
      // .width(100) //设置宽度
      // .backgroundColor(Color.Brown) //设置背景颜色
      // .alignRules({
      //   //设置相对布局
      //   top: { anchor: 'row3', align: VerticalAlign.Bottom }, //__container__ 表示父元素，如果有ID，此处用ID也行
      //   left: { anchor: 'row3', align: HorizontalAlign.End },
      // })
      // .id("row5") //给个id
      //
      // Row() {
      //   Text("Row6")
      //     .fontSize(30)//设置字体大小
      //     .fontColor(Color.White)
      // }
      // .justifyContent(FlexAlign.Center) //使子元素水平居中
      // .alignItems(VerticalAlign.Center) //使子元素垂直居中
      // .height(100) //设置高度
      // .width(100) //设置宽度
      // .backgroundColor(Color.Green) //设置背景颜色
      // .alignRules({
      //   //设置相对布局
      //   top: { anchor: 'row4', align: VerticalAlign.Bottom }, //__container__ 表示父元素，如果有ID，此处用ID也行
      //   left: { anchor: 'row4', align: HorizontalAlign.End },
      // })
      // .id("row6") //给个id
      //
      //
      // Row() {
      //   Text("Row7")
      //     .fontSize(30)//设置字体大小
      //     .fontColor(Color.White)
      // }
      // .justifyContent(FlexAlign.Center) //使子元素水平居中
      // .alignItems(VerticalAlign.Center) //使子元素垂直居中
      // .height(100) //设置高度
      // .width(100) //设置宽度
      // .backgroundColor(Color.Red) //设置背景颜色
      // .alignRules({
      //   //设置相对布局
      //   top: { anchor: 'row6', align: VerticalAlign.Bottom }, //__container__ 表示父元素，如果有ID，此处用ID也行
      //   left: { anchor: 'row4', align: HorizontalAlign.Start },
      // })
      // .id("row7") //给个id
      //
      //
      // Row() {
      //   Text("Row8")
      //     .fontSize(30)//设置字体大小
      //     .fontColor(Color.White)
      // }
      // .justifyContent(FlexAlign.Center) //使子元素水平居中
      // .alignItems(VerticalAlign.Center) //使子元素垂直居中
      // .height(100) //设置高度
      // .width(100) //设置宽度
      // .backgroundColor(Color.Yellow) //设置背景颜色
      // .alignRules({
      //   //设置相对布局
      //   top: { anchor: 'row6', align: VerticalAlign.Bottom }, //__container__ 表示父元素，如果有ID，此处用ID也行
      //   left: { anchor: 'row6', align: HorizontalAlign.End },
      // })
      // .id("row8") //给个id


      Row() {
        Text("Row9")
          .fontSize(30) //设置字体大小
      }
      .justifyContent(FlexAlign.Center) //使子元素水平居中
      .alignItems(VerticalAlign.Center) //使子元素垂直居中
      .height(100) //设置高度
      .width(100) //设置宽度
      .backgroundColor(Color.Brown) //设置背景颜色
      .alignRules({
        //设置相对布局
        center: { anchor: '__container__', align: VerticalAlign.Center }, //__container__ 表示父元素，如果有ID，此处用ID也行
        middle: { anchor: '__container__', align: HorizontalAlign.Center },
      })
      .id("row9") //给个id


      Row() {
        Text("Row10")
          .fontSize(30)//设置字体大小
          .fontColor(Color.White)
      }
      .justifyContent(FlexAlign.Center) //使子元素水平居中
      .alignItems(VerticalAlign.Center) //使子元素垂直居中
      .height(100) //设置高度
      .width(100) //设置宽度
      .backgroundColor(Color.Black) //设置背景颜色
      .alignRules({
        //设置相对布局
        bottom: { anchor: 'row9', align: VerticalAlign.Top }, //__container__ 表示父元素，如果有ID，此处用ID也行
        right: { anchor: 'row9', align: HorizontalAlign.Start },
      })
      .id("row10") //给个id


      Row() {
        Text("Row11")
          .fontSize(30)//设置字体大小
          .fontColor(Color.White)
      }
      .justifyContent(FlexAlign.Center) //使子元素水平居中
      .alignItems(VerticalAlign.Center) //使子元素垂直居中
      .height(100) //设置高度
      .width(100) //设置宽度
      .backgroundColor(Color.Blue) //设置背景颜色
      .alignRules({
        //设置相对布局
        bottom: { anchor: 'row9', align: VerticalAlign.Top }, //__container__ 表示父元素，如果有ID，此处用ID也行
        left: { anchor: 'row9', align: HorizontalAlign.End },
      })
      .id("row11") //给个id


      Row() {
        Text("Row12")
          .fontSize(30)//设置字体大小
          .fontColor(Color.White)
      }
      .justifyContent(FlexAlign.Center) //使子元素水平居中
      .alignItems(VerticalAlign.Center) //使子元素垂直居中
      .height(100) //设置高度
      .width(100) //设置宽度
      .backgroundColor(Color.Gray) //设置背景颜色
      .alignRules({
        //设置相对布局
        top: { anchor: 'row9', align: VerticalAlign.Bottom }, //__container__ 表示父元素，如果有ID，此处用ID也行
        right: { anchor: 'row9', align: HorizontalAlign.Start },
      })
      .id("row12") //给个id


      Row() {
        Text("Row13")
          .fontSize(30)//设置字体大小
          .fontColor(Color.White)
      }
      .justifyContent(FlexAlign.Center) //使子元素水平居中
      .alignItems(VerticalAlign.Center) //使子元素垂直居中
      .height(100) //设置高度
      .width(100) //设置宽度
      .backgroundColor(Color.Orange) //设置背景颜色
      .alignRules({
        //设置相对布局
        top: { anchor: 'row9', align: VerticalAlign.Bottom }, //__container__ 表示父元素，如果有ID，此处用ID也行
        left: { anchor: 'row9', align: HorizontalAlign.End }
      })
      .id("row13") //给个id


      Row() {
        Text("Row14")
          .fontSize(30)//设置字体大小
          .fontColor(Color.White)
      }
      .justifyContent(FlexAlign.Center) //使子元素水平居中
      .alignItems(VerticalAlign.Center) //使子元素垂直居中
      .height(100) //设置高度
      .width(100) //设置宽度
      .backgroundColor(Color.Pink) //设置背景颜色
      .alignRules({
        //设置相对布局
        top: { anchor: 'row12', align: VerticalAlign.Bottom }, //__container__ 表示父元素，如果有ID，此处用ID也行
        left: { anchor: 'row12', align: HorizontalAlign.End }
      })
      .id("row14") //给个id

      Row() {
        Text("Row15")
          .fontSize(30)//设置字体大小
          .fontColor(Color.White)
      }
      .justifyContent(FlexAlign.Center) //使子元素水平居中
      .alignItems(VerticalAlign.Center) //使子元素垂直居中
      .height(100) //设置高度
      .width(100) //设置宽度
      .backgroundColor(Color.Red) //设置背景颜色
      .alignRules({
        //设置相对布局
        top: { anchor: 'row14', align: VerticalAlign.Bottom }, //__container__ 表示父元素，如果有ID，此处用ID也行
        right: { anchor: 'row14', align: HorizontalAlign.Start }
      })
      .id("row15") //给个id


      Row() {
        Text("Row16")
          .fontSize(30)//设置字体大小
          .fontColor(Color.White)
      }
      .justifyContent(FlexAlign.Center) //使子元素水平居中
      .alignItems(VerticalAlign.Center) //使子元素垂直居中
      .height(100) //设置高度
      .width(100) //设置宽度
      .backgroundColor(Color.Yellow) //设置背景颜色
      .alignRules({
        //设置相对布局
        top: { anchor: 'row14', align: VerticalAlign.Bottom }, //__container__ 表示父元素，如果有ID，此处用ID也行
        left: { anchor: 'row14', align: HorizontalAlign.End },
      })
      .id("row16") //给个id
    }
    .width("100%")
    .height(300)

    // .border({
    //   width: 1, // 边框宽度（单位vp）
    //   color: Color.Red, // 边框颜色
    //   radius: 8, // 边框圆角半径
    //   style: BorderStyle.Solid          // 边框样式（实线/虚线等）
    // })
  }
}