import { font, router } from "@kit.ArkUI";

@Extend(Button)
function ButtonStyle() {
  .width(220)
  .height(40)
  .fontSize(20)
  .backgroundColor(Color.Green)
}


@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Scroll() {
      Column({ space: 20 }) {
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
      }
    }
    .height('100%')
    .width('100%')
  }
}