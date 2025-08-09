@Entry
@Component
struct SetStylDemo {
  @State Flag: boolean = false;
  @State Input1: string = "";

  //可以加监听事件也可以达到变动的通知
  @State @Watch("change") Input2: string = "";
  //只要有变化，就会触发下面的方法
  change() {
    console.log("Print", this.Input2);
    this.Input1=this.Input2;
  }

  build() {
    Column({ space: 10 }) {

      Button("按钮")
        .width(90)
        .height(40)
        .fontColor(Color.White)
        .stateStyles({
          //常规状态
          normal: {
            .fontColor(Color.Gray)
          },
          //点击状态
          clicked: {
            .fontColor(Color.Red)
          },
          //按压状态
          pressed: {
            .fontColor(Color.Brown)
          },
          //聚焦态
          focused: {
            .fontColor(Color.Yellow)
          }
        })
        .onClick(() => {

          this.Flag = !this.Flag
        })


      Button("禁止按钮")
        .enabled(this.Flag)
        .width(90)
        .height(40)
        .stateStyles({
          //常规状态
          normal: {
            .backgroundColor(Color.Black)
          },
          //禁止状态
          disabled: {
            .backgroundColor(Color.Orange)
          }
        })

      Text("使用onchange赋值")
      //使用onchange赋值
      TextInput({ text: this.Input1 })
        .borderWidth(1)
        .onChange((value) => {
          this.Input1 = value
        })

      Text("使用双方绑定赋值 使用$$")
      //使用双方绑定赋值 使用$$
      TextInput({ text: $$this.Input1 })
        .borderWidth(1)

      Text("展示数据")
      //展示数据
      TextInput({ text: this.Input1 })
        .borderWidth(1);

      Text("监听事件")
      //展示数据
      TextInput({ text: $$this.Input2 })
        .borderWidth(1);


    }.width("100%").height("100%")
  }
}