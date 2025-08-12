@Entry
@Component
struct FlexDemo {
  build() {
    //弹性布局 Flex

    Flex({
      direction: FlexDirection.Row, //设置主轴 Row为横轴   Column为纵轴   RowReverse为横轴反向  ColumnReverse为纵轴反向
      //justifyContent: FlexAlign.SpaceBetween,   //针对主轴的布局 主轴两端
      //justifyContent: FlexAlign.SpaceAround,   //针对主轴的布局 主轴两端并且留一定的距离
      justifyContent: FlexAlign.Start,   //针对主轴的布局 主轴开始的位置
      // justifyContent: FlexAlign.End,   //针对主轴的布局 主轴结束的位置
      // justifyContent: FlexAlign.Center,   //针对主轴的布局 主轴中间的位置

      //设置交叉轴   如果主轴是横轴，交叉轴就是纵轴  主轴是纵轴 交叉轴就是横轴
      alignItems:ItemAlign.Start      //设置交叉轴开始的地方
      //alignItems:ItemAlign.End        //设置交叉轴结束的地方
      //alignItems:ItemAlign.Baseline     //设置交叉轴 中心轴
    }) {
      Row().width(100).height(100).backgroundColor(Color.Pink)
      Row().width(100).height(100).backgroundColor(Color.Red)
      // Row().width(100).height(100).backgroundColor(Color.Black)
      // Row().width(100).height(100).backgroundColor(Color.Brown)
      // Row().width(100).height(100).backgroundColor(Color.Gray)
    }.width("100%").height("100%").backgroundColor(Color.Blue)
  }
}