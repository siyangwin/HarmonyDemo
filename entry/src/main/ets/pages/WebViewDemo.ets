import { webview } from "@kit.ArkWeb"

@Entry
@Component
struct QrCodeDemo {
  private webviewController: WebviewController = new webview.WebviewController();

  build() {
    Column() {
      Row() {
        Button('<-').onClick(() => {
          this.webviewController.backward()
        })

        Button('Refresh').onClick(() => {
          this.webviewController.refresh()
        })

        Button('->').onClick(() => {
          this.webviewController.forward()
        })


      }.justifyContent(FlexAlign.SpaceBetween).alignItems(VerticalAlign.Center).width("90%")


      Web({ src: 'https://www.baidu.com', controller: this.webviewController })
        .domStorageAccess(true) //设置为true开启Dom缓存,否则网页无法访问缓存数据。
    }
  }
}
