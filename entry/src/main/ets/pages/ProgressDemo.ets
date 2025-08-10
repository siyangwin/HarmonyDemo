@Entry
@Component
struct ProgressDemo {
  @State value: number = 50;

  build() {
    Scroll() {
      Column({ space: 20 }) {

        Row() {
          Button("进度+").onClick((event: ClickEvent) => {
            this.value = this.value + 10;
          })

          Button("进度-").onClick((event: ClickEvent) => {
            this.value = this.value - 10;
          })
        }

        //totle的总值是100
        //组件宽度大于或等于高度，保持水平
        //组件宽度小于高度，保持垂直
        Progress({ value: this.value, total: 100 }).width(100).height(120)
        Progress({ value: this.value, total: 100 }).width(100).height(100)

        //type: Linear  线  默认
        Progress({ value: this.value, total: 100, type: ProgressType.Linear }).width(100).height(120)

        //type: Ring  环形
        Progress({ value: this.value, total: 100, type: ProgressType.Ring }).width(100).height(100)

        //type: Eclipse  球形
        Progress({ value: this.value, total: 100, type: ProgressType.Eclipse }).width(100).height(100)

        //type: ScaleRing  刻度 style  strokeWidth：设置进度条的宽度  scaleCount:设置刻度的数量 scaleWidth:设置刻度的宽度
        Progress({ value: this.value, total: 100, type: ProgressType.ScaleRing })
          .width(100)
          .height(100)
          .style({ strokeWidth: 20, scaleCount: 30, scaleWidth: 5 })

        //type: Capsule  球形
        Progress({ value: this.value, total: 100, type: ProgressType.Capsule }).width(100).height(100)
      }
    }.width("100%").height("100%")
  }
}