import { preferences } from "@kit.ArkData"

@Entry
@Component
struct Preferences2Demo {
  //使用缓存，不封装
  private context = getContext(this)
  //创建一个缓存对象
  private store = preferences.getPreferencesSync(this.context, { name: "textInput" })
  //将数据读取出来赋值给变量
  @State @Watch("textChange") TextValue: preferences.ValueType = this.store.getSync("text", null);

  textChange() {
    //往缓存加入数据
    this.store.putSync("text", this.TextValue)
    //持久化处理，写入缓存
    this.store.flush()
  }

  async onPageShow() {
    //打开页面读取数据
    //this.TextValue =

    console.log("打开页面");

  }

  build() {
    Column({ space: 20 }) {
      Text("输入内容")
      //写数据，双向绑定存入缓存
      TextInput({ text: $$this.TextValue })
        .borderWidth(1)
    }
  }
}