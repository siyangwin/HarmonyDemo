import { preferencesUtils } from "../utils/PreferencesUtils"

@Entry
@Component
struct PreferencesDemo {
  //使用缓存，封装
  private store = preferencesUtils({ storeName: "textInputNew" })
  //监听
  @State @Watch("textChange") TextValue: string = "";

  textChange() {
    this.store.set({ key: "textNew", value: this.TextValue });
    console.info("改变数据" + this.TextValue)
  }

  //打开页面就去缓存获取数据
  onPageShow(): void {
    const cache = this.store.get({ key: "textNew" })

    if (cache != null) {
      this.TextValue = cache.toString();
    }
  }

  build() {
    Column() {
      Text("输入并存入缓存")
      TextInput({ text: $$this.TextValue }).borderWidth(1);

      //获取

      //删除
      //清空
    }.borderWidth(1).width("100%").height("100%")
  }
}