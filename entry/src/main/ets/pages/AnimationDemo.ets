@Entry
@Component
struct AnimationDemo {
  @State positionX: number = 0;
  @State positionY: number = 0;

  build() {
    Column() {
      Image($r('app.media.startIcon'))
        .width(50)
        .height(50)
        .position({
          x: this.positionX,
          y: this.positionY
        })
        .animation({
          //动画持续时间
          duration: 2000,
          //动画的播放速度，数值越大动画速度越快
          tempo: 1,
          //动画次数  -1是无限
          iterations: -1,
          //动画延迟 ms
          delay: 1000,
          //播放模式
          //Reverse 反着来
          //playMode: PlayMode.Reverse
          //Normal 正着来
          //playMode: PlayMode.Normal
          playMode: PlayMode.AlternateReverse
        })


      Button("点击让图片运动")
        .width(200)
        .height(50)
        .fontSize(20)
        .onClick(() => {
          this.positionX = 40;
          this.positionY = 500;

        })
    }.borderWidth(1).width("100%").height("100%")
  }
}