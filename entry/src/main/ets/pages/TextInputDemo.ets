@Entry
@Component
struct TextInputDemo {
  @State textvalues: string = "AbCd123>>>12@##"

  build() {
    Column({ space: 10 }) {
      Text("TextInput").fontSize(30)

      TextInput({ text: this.textvalues })//默认值
        .type(InputType.Normal) //任意文字输入类型


      TextInput({ placeholder: "请输入数字" })//提示值
        .type(InputType.Number)//数字输入类型
        .onChange((value) => {
          this.textvalues = value
        })
        .onSubmit((EnterKeyType) => {
          console.log("提交" + EnterKeyType);


        })
        .onFocus(() => { //聚焦监听
          console.log("获取聚焦");
        })

      TextInput({ placeholder: "请输入电话号码" })//提示值
        .type(InputType.PhoneNumber)//电话号码输入类型
        .onChange((value) => {
          this.textvalues = value
        })

      TextInput({ placeholder: "请输入电子邮箱" })//提示值
        .type(InputType.Email)//电邮输入类型
        .onChange((value) => {
          this.textvalues = value
        })

      TextInput({ placeholder: "请输入密码" })//提示值
        .type(InputType.Password)//密码输入类型
        .onChange((value) => {
          this.textvalues = value
        })

      TextInput({ placeholder: "请再次输入密码" })//提示值
        .type(InputType.NEW_PASSWORD)//密码输入类型
        .onChange((value) => {
          this.textvalues = value
        })

      TextInput({ placeholder: "请输入数字密码" })//提示值
        .type(InputType.NUMBER_PASSWORD)//密码输入类型
        .onChange((value) => {
          this.textvalues = value
        })

      TextInput({ placeholder: "请输入Url" })//提示值
        .type(InputType.URL)//Url输入类型
        .onChange((value) => {
          this.textvalues = value
        })

      TextArea({ placeholder: "请输入内容" })//提示值
        .backgroundColor(Color.Pink)


      Search({ placeholder: "搜索" })
      

      Search({ placeholder: "搜索" }).searchButton("放大镜", {})

    }
    .width("100%")
    .height("100%")
    .alignItems(HorizontalAlign.Start) //内容布局方式  默认是Center   END是右边   Start是左边
  }
}