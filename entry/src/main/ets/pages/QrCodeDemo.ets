@Entry
@Component
struct QrCodeDemo {
  build() {
    Row({ space: 20 }) {
      QRCode('Hello,Bro')
        .width(100)
        .height(100)
        .color(Color.Blue)

      QRCode('i\'m you Bro')
        .width(100)
        .height(100)
        .color(Color.Blue)
        .backgroundColor(Color.Red)

    }
    .width('100%')
    .height('100%')
    .borderWidth(1)
    .justifyContent(FlexAlign.Center)
  }
}
