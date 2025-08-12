import TextCom from '../components/TextCom'
import { router } from '@kit.ArkUI';


@Entry
@Component
struct hookDemo {
  @State message: string = 'Hello World';

  //页面生命周期 onPageShow onPageHide onBackPress
  //页面每次显示的时候触发一次
  onPageShow(): void {
    console.log("钩子", "onPageShow")
  }

  //页面每次隐藏的触发一次
  onPageHide(): void {
    console.log("钩子", "onPageHide")
  }

  //用户点击返回按钮的时候触发一次
  onBackPress(): void {
    console.log("钩子", "onBackPress")
  }

  //组件生命周期钩子
  //组件即将出现时会执行
  aboutToAppear(): void {
    console.log("组件钩子", "aboutToAppear")
  }

  //组件在触发Build函数之前执行
  onDidBuild(): void {
    console.log("组件钩子", "onDidBuild")
  }

  //组件在即将销毁的时候执行
  aboutToDisappear(): void {
    console.log("组件钩子", "aboutToDisappear")
  }

  @State flag: boolean = true

  build() {
    RelativeContainer() {
      Column({ space: 20 }) {
        Button("销毁")
          .fontSize(30)
          .onClick(() => {
            this.flag = !this.flag
          }).width(200).height(100)

        Button("Toggle展示")
          .fontSize(30)
          .onClick(() => {
            router.pushUrl({ url: "pages/ToggleDemo" })
          }).width(200).height(100)

        Button("Grid展示")
          .fontSize(30)
          .onClick(() => {
            router.pushUrl({ url: "pages/GridDemo" })
          }).width(200).height(100)

        Button("Flex展示")
          .fontSize(30)
          .onClick(() => {
            router.pushUrl({ url: "pages/FlexDemo" })
          }).width(200).height(100)

        if (this.flag) {
          TextCom()
        }
      }
      .height('100%')
      .width('100%')
    }.borderWidth(2)
  }
}