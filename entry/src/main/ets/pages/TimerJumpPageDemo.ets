//指定组件样式复用，只有这个组件能用
// @Extend(Button)
// function ButtonStylesTimer(size: number, color: Color) {
//   //.fontSize(size)
//   .fontWeight(FontWeight.Bold)
//   .type(ButtonType.Circle)
//   .backgroundColor(color)
// }
import { webview } from "@kit.ArkWeb";
import { Type } from "@kit.ArkUI";

@Extend(Button)
function ButtonStylesTimer(size: number, color: Color, callback: () => void) {
  //.fontSize(size)
  .fontWeight(FontWeight.Bold)
  .type(ButtonType.Circle)
  .backgroundColor(color)
  .onClick(callback)
}


interface ImagesInfo {
  ImageUrl: string;
  Type: number;
  linkUrl: string;
}

@Entry
@Component
struct TimerJumpPageDemo {
  //定义滚动组件
  private swiperController: SwiperController = new SwiperController();
  //定义WebView组件
  private webviewController: WebviewController = new webview.WebviewController();
  @State Url: string = "";
  @State data: ImagesInfo[] = [
    { ImageUrl: "app.media.th", Type: 1, linkUrl: "https://www.360.com/" },
    { ImageUrl: "/Images/2.jpg", Type: 2, linkUrl: "https://www.taobao.com/" },
    { ImageUrl: "/Images/1.PNG", Type: 2, linkUrl: "https://www.jd.com/" }];

  build() {
    Column({ space: 10 }) {
      Row() {
        Button("←").ButtonStylesTimer(10, Color.Grey, () => {
          this.webviewController.backward()
        })
        Button("→").ButtonStylesTimer(10, Color.Grey, () => {
          this.webviewController.forward()
        })
        Button("↺").ButtonStylesTimer(10, Color.Grey, () => {
          this.webviewController.refresh()
        })
      }.borderWidth(1).width("100%")

      //滚动组件
      Swiper(this.swiperController) {

        ForEach(this.data, (item: ImagesInfo, index) => {
          if (item.Type === 1) {
            Image($r(item.ImageUrl)).onClick(() => {
              this.Url = item.linkUrl
              this.webviewController.loadUrl(this.Url)
              console.log("url链接" + this.Url);
            })
          } else {
            Image(item.ImageUrl).onClick(() => {
              this.Url = item.linkUrl
              this.webviewController.loadUrl(this.Url)
              console.log("url链接" + this.Url);
            })
          }
        })


        // Image($r("app.media.th")).onClick(() => {
        //   this.Url = "https://www.taobao.com/"
        //   this.webviewController.loadUrl(this.Url)
        //   console.log("url" + this.Url);
        //
        // })
        //
        // Text("轮播1")
        //   .width("100%")
        //   .height(200)
        //   .textAlign(TextAlign.Center)
        //   .backgroundColor(Color.Yellow)
        //   .onClick(() => {
        //     this.Url = "https://www.jd.com/"
        //     this.webviewController.loadUrl(this.Url)
        //     console.log("url" + this.Url);
        //   })
        //
        // Image("/Images/2.jpg").onClick(() => {
        //   this.Url = "https://www.360.com/"
        //   // 关键：通过控制器加载新URL
        //   this.webviewController.loadUrl(this.Url)
        //   console.log("url" + this.Url);
        // })
      }
      .width("100%")
      .height(200)
      .autoPlay(true) //是否自动轮播

      Web({ src: "https://www.baidu.com", controller: this.webviewController })
        .domStorageAccess(true) //设置为true开启Dom缓存,否则网页无法访问缓存数据。
    }
    .width("100%")
    .height("100%")
    .borderWidth(1)
  }
}