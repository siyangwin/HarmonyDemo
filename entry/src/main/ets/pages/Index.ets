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

      Button("ListDemo").onClick(() => {
        router.pushUrl({ url: "pages/ListDemo" })
      })
    }
    .height('100%')
    .width('100%')
  }
}