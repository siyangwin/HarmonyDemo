import { font, router } from "@kit.ArkUI";

@Extend(Button)
function ButtonStyle() {
  .width(220)
  .height(40)
  .fontSize(20)
  .backgroundColor(Color.Green)
}

//接收参数列表  加？ 避免未传值导致错误
interface Params {
  username?: string
}

@Entry
@Component
struct Index {
  //@State message: string = 'Hello World';
  // 安全接收参数
  private params: Params = (router.getParams() as Params) || {};
  // 安全获取用户名，确保有默认值
  private message = this.params.username || "";

  build() {
    Scroll() {
      Column({ space: 20 }) {
        Text() {
          Span("您好！").fontColor(Color.Blue)
          Span(this.message).fontColor(Color.Green)
        }
        .id('HelloWorld')
        //.fontSize($r('app.float.page_text_font_size'))
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          this.message = 'Welcome';
        })


        Button("TextSpan-文本显示").onClick(() => {
          router.pushUrl({ url: "pages/TextSpanDemo" })
        }).ButtonStyle()

        Button("Images-图片显示").onClick(() => {
          router.pushUrl({ url: "pages/ImageDemo" })
        }).ButtonStyle()

        Button("Button").onClick(() => {
          router.pushUrl({ url: "pages/ButtonDemo" })
        }).ButtonStyle()

        Button("TextInput").onClick(() => {
          router.pushUrl({ url: "pages/TextInputDemo" })
        }).ButtonStyle()

        Button("相对布局RelativeContainer").onClick(() => {
          router.pushUrl({ url: "pages/RelativeContainerDemo" })
        }).ButtonStyle()

        Button("模拟登录注册").onClick(() => {
          router.pushUrl({ url: "pages/LoginDemo" })
        }).ButtonStyle()

        Button("钩子-触发事件").onClick(() => {
          router.pushUrl({ url: "pages/hookDemo" })
        }).ButtonStyle()

        Button("Style-公共").onClick(() => {
          router.pushUrl({ url: "pages/StylesPage" })
        }).ButtonStyle()

        Button("Style-状态").onClick(() => {
          router.pushUrl({ url: "pages/SetStyleDemo" })
        }).ButtonStyle()

        Button("ListDemo列表布局").onClick(() => {
          router.pushUrl({ url: "pages/ListDemo" })
        }).ButtonStyle()

        Button("缓存写入-封装").onClick(() => {
          router.pushUrl({ url: "pages/PreferencesDemo" })
        }).ButtonStyle()

        Button("缓存写入-不封装").onClick(() => {
          router.pushUrl({ url: "pages/Preferences2Demo" })
        }).ButtonStyle()

        Button("Lazy-加载List").onClick(() => {
          router.pushUrl({ url: "pages/LazyForEachDemo" })
        }).ButtonStyle()


        Button("ToDoList").onClick(() => {
          router.pushUrl({ url: "pages/TodoListDemo" })
        }).ButtonStyle()

        Button("动画").onClick(() => {
          router.pushUrl({ url: "pages/AnimationDemo" })
        }).ButtonStyle()

        Button("TrackDemo").onClick(() => {
          router.pushUrl({ url: "pages/TrackDemo" })
        }).ButtonStyle()

        Button("进度条").onClick(() => {
          router.pushUrl({ url: "pages/ProgressDemo" })
        }).ButtonStyle()

        Button("Http请求模拟").onClick(() => {
          router.pushUrl({ url: "pages/HttpRequestDemo" })
        }).ButtonStyle()

        Button("Http请求展示List").onClick(() => {
          router.pushUrl({ url: "pages/HttpRequestListDemo" })
        }).ButtonStyle()

        Button("封装Http请求").onClick(() => {
          router.pushUrl({ url: "pages/HttpRequestList2Demo" })
        }).ButtonStyle()

        Button("Http模拟登录注册").onClick(() => {
          router.pushUrl({ url: "pages/Login" })
        }).ButtonStyle()

        Button("侧边栏").onClick(() => {
          router.pushUrl({ url: "pages/SideBarContainerDemo" })
        }).ButtonStyle()

        Button("Tabs导航栏").onClick(() => {
          router.pushUrl({ url: "pages/TabsDemo" })
        }).ButtonStyle()

        Button("Swiper滚动图片").onClick(() => {
          router.pushUrl({ url: "pages/SwiperDemo" })
        }).ButtonStyle()

        Button("二维码").onClick(() => {
          router.pushUrl({ url: "pages/QrCodeDemo" })
        }).ButtonStyle()

        Button("WebView").onClick(() => {
          router.pushUrl({ url: "pages/WebViewDemo" })
        }).ButtonStyle()

      }
    }
    .height('100%')
    .width('100%')
  }
}