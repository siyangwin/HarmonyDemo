import { router } from "@kit.ArkUI";

@Entry
@Component
struct TimerDemo {
  //定义变量
  @State timer: number = 5
  timeId: number = -1;
  SettimeId: number = -1;
  settimermes: string = "SetTimerOut未触发";

  //   1. 计时器
  //   定时器只执行一次
  //   settimeout
  //   定时器会一直运行
  //   setInterval
  //
  //   this.timeid=setInterval(()=>{
  //   //此处执行方法
  //   //比如到时间跳转页面等等
  //   //必须清楚定时器，下一秒就不会执行了。
  //   clearInterval(this.timeid)
  // },1000)


  //组件生命周期
  aboutToAppear(): void {

    // this.settimermes = "SetTimerOut触发一次"
    // //只触发一次
    // setTimeout(() => {
    //   this.settimermes = "SetTimerOut触发er次"
    // }, 1000)


    this.timeId = setInterval(() => {
      this.timer--
      //此处执行方法
      //比如到时间跳转页面等等
      if (this.timer <= 0) {
        router.pushUrl({ url: "pages/TimerJumpPageDemo" })
        //必须清楚定时器，下一秒就不会执行了。
        clearInterval(this.timeId)
      }
    }, 1000)
  }

  build() {
    Column() {
      //背景图片
      Image("/Images/2.jpg").width("100%").height("100%")


      //按钮
      Button(`${this.timer}秒后跳过`).onClick(() => {
        // //只触发一次
        // setTimeout(() => {
        //   this.settimermes = "按钮点击SetTimerOut触发er次"
        //
        //   router.pushUrl({ url: "pages/TimerJumpPageDemo" })
        //   //必须清楚定时器，下一秒就不会执行了。
        //   clearInterval(this.timeId)
        //
        // }, 1000)

        router.pushUrl({ url: "pages/TimerJumpPageDemo" })
        //必须清楚定时器，下一秒就不会执行了。
        clearInterval(this.timeId)
      })
        .position({ x: 0, y: 0 })
        .width(100)

      Text(this.settimermes).position({ x: 100, y: 100 }).fontColor(Color.White)

    }.width("100%").height("100%").borderWidth(1)
  }
}