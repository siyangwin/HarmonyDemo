import { BasicDataSource } from "../utils/BasicDataSource"

@Entry
@Component
struct LazyForEachDemo {
  @State numList: BasicDataSource<string> = new BasicDataSource()

  onPageShow(): void {
    for (let index = 0; index < 50; index++) {
      this.numList.PushData(`${index}`)
    }
  }

  build() {
    List({ space: 20 }) {
      LazyForEach(this.numList, (item: string) => {
        ListItem() {
          Text(item)
        }
        .width("100%")
        .height(200)
        .backgroundColor(Color.Red)
      }, (item: string) => item.toString()) //唯一的Key，会加快获取速度
    }

  }
}