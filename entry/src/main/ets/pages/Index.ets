import { router } from "@kit.ArkUI";

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Column({ space: 20 }) {
      Button("Style-公共").onClick(() => {
        router.pushUrl({ url: "pages/StylesPage" })
      })

      Button("Style-状态").onClick(() => {
        router.pushUrl({ url: "pages/SetStyleDemo" })
      })

      Button("ListDemo列表布局").onClick(() => {
        router.pushUrl({ url: "pages/ListDemo" })
      })

      Button("缓存写入-封装").onClick(() => {
        router.pushUrl({ url: "pages/PreferencesDemo" })
      })

      Button("缓存写入-不封装").onClick(() => {
        router.pushUrl({ url: "pages/Preferences2Demo" })
      })

    }
    .height('100%')
    .width('100%')
  }
}