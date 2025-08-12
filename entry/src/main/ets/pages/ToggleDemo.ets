@Entry
@Component
struct  ToggleDemo{
  @State ison:boolean=true
  build() {
    Column({space:20}){

      Toggle({type:ToggleType.Checkbox,isOn:this.ison})
        .width(40)
        .height(40)
        .backgroundColor(Color.Green)
        .selectedColor(Color.Orange)
        .borderRadius(20)
        .onChange(()=>{
            this.ison=!this.ison
        })

      if (this.ison)
      {
        TextInput({placeholder:"请输入"})
          .width("100%")

      }


      Toggle({type:ToggleType.Switch,isOn:this.ison})
        .width(90).height(40)
        .backgroundColor(Color.Green)
        .borderRadius(50)
        .selectedColor(Color.Orange)
        .switchPointColor(Color.Blue)


      Toggle({type:ToggleType.Button,isOn:this.ison}){
        Text("按钮")
      }.width(90).height(40)
      .backgroundColor(Color.Green)
      .selectedColor(Color.Orange)

    }.width("100%").height("100%")
  }
}