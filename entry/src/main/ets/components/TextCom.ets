//@Component表示自定义组件
@Component
struct TextCom {
  //组件生命周期钩子
  //组件即将出现时会执行
  aboutToAppear(): void {
    console.log("自定义组件钩子", "aboutToAppear")
  }

  //组件在触发Build函数之前执行
  onDidBuild(): void {
    console.log("自定义组件钩子", "onDidBuild")
  }

  //组件在即将销毁的时候执行
  aboutToDisappear(): void {
    console.log("自定义组件钩子", "aboutToDisappear")
  }

  build() {
    Text("123")
  }
}

export default TextCom

