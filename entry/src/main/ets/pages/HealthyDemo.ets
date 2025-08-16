import HealthyHomePageDemo from "../components/HealthyHomePageDemo"
import HealthyCheckPageDemo from "../components/HealthyCheckPageDemo"

@Entry
@Component
struct HealthyDemo {
  @Builder
  customTabBar(image: string, text: string) {
    Column({ space: 5 }) {
      Image($r(image)).width(30).height(30)
      Text(text).fontSize(10)
      //.fontColor(this.currentIndex == 2 ? Color.Red : Color.Black)
    }
  }

  build() {
    Tabs({ barPosition: BarPosition.End, index: 1 }) {
      TabContent() {
        HealthyHomePageDemo()
      }.tabBar(this.customTabBar("app.media.icon_home_main", "首页"))

      TabContent() {
        HealthyCheckPageDemo()
      }.tabBar(this.customTabBar("app.media.icon_permission_main", "检测"))

      TabContent() {
        Column() {
          Text("2")
        }
      }.tabBar(this.customTabBar("app.media.icon_person_main", "我的"))
    }
    .scrollable(false)
  }
}