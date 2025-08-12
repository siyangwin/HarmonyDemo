@Entry
@Component
struct GridDemo {
  @State services: Array<string> = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10']

  build() {
    Scroll() {
      Column({ space: 20 }) {
        //ForEach是便利
        //第一个参数是需要便利的数据
        //第二个参数是回调的函数（第一个是便利的值，第二个是下标）
        // ForEach(this.services, (item: string, _index) => {
        //   Column() {
        //     Text(item + '(' + _index + ')').fontColor(Color.Blue).fontSize(30)
        //   }.width("100%").height("50%").backgroundColor(Color.Pink).justifyContent(FlexAlign.Center)
        // }

        //Grid网格
        Grid() {
          // ForEach(this.services,(item:string,_index)=>{
          //   GridItem(){Text(item).fontSize(30)}.backgroundColor(Color.Pink).borderWidth(2)
          // })

          GridItem() {
            Text("1").fontSize(30)
          }.backgroundColor(Color.White).rowStart(1).rowEnd(3)

          GridItem() {
            Text("2").fontSize(30)
          }.backgroundColor(Color.Black)

          GridItem() {
            Text("3").fontSize(30)
          }.backgroundColor(Color.Blue).rowEnd(3)

          GridItem() {
            Text("4").fontSize(30)
          }.backgroundColor(Color.Brown)

          GridItem() {
            Text("5").fontSize(30)
          }.backgroundColor(Color.Gray)

          GridItem() {
            Text("6").fontSize(30)
          }.backgroundColor(Color.Green)

          GridItem() {
            Text("7").fontSize(30)
          }.backgroundColor(Color.Pink)

          GridItem() {
            Text("8").fontSize(30)
          }.backgroundColor(Color.Red)

          GridItem() {
            Text("9").fontSize(30)
          }.backgroundColor(Color.Yellow).columnStart(1).columnEnd(3)

          GridItem() {
            Text("10").fontSize(30)
          }.backgroundColor(Color.Pink)

          GridItem() {
            Text("11").fontSize(30)
          }.backgroundColor(Color.White)

          GridItem() {
            Text("12").fontSize(30)
          }.backgroundColor(Color.Black)

          GridItem() {
            Text("13").fontSize(30)
          }.backgroundColor(Color.Blue)

          GridItem() {
            Text("14").fontSize(30)
          }.backgroundColor(Color.Brown)

          GridItem() {
            Text("15").fontSize(30)
          }.backgroundColor(Color.Gray)

          GridItem() {
            Text("16").fontSize(30)
          }.backgroundColor(Color.Green)

          GridItem() {
            Text("17").fontSize(30)
          }.backgroundColor(Color.Pink)

          GridItem() {
            Text("18").fontSize(30)
          }.backgroundColor(Color.Red)

          GridItem() {
            Text("19").fontSize(30)
          }.backgroundColor(Color.Yellow)

        }
        .height(300) //设置高度
        .rowsTemplate('1fr 1fr 1fr') //设置行的数量
        .columnsTemplate('1fr 1fr 1fr 1fr 1fr 1fr') //设置列的数量
      }
    }
  }
}