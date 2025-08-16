interface healthyCheckList {
  title: string;
  content: string;
  text1: string;
  text2: string;
}


@Component
struct HealthyCheckPageDemo {
  @State healthyCheckLists: healthyCheckList[] = [{
    title: "血压检测",
    content: "血液在血管内流动时，对血管壁的侧压力成为血压。血压通常指动脉血压或体循环血压，是重要的生命体征。血压测量是评估血压水平、诊断高血压及观察降压疗效的主要手段，准确地测量血压是基层开展高血压管理的基础。不同血压测量方法的有机结合是提高高，血压诊断和管理效果的重要因素。",
    text1: "请输入高压",
    text2: "请输入低压"
  },
    {
      title: "心率检测",
      content: "心率是指心脏每分钟跳动的次数，用来描述心脏跳动的频率。在安静、不活动且身体和精神都处于放松状态下测得的心率数值称为静息心率，一般为60~100次/分，受年龄、性别等因素产生个体差异。静息心率持续过高或过低可能暗示存在心脏方面的疾病。",
      text1: "请输入年龄",
      text2: "请输入次数/分钟"
    },
    {
      title: "体重检测",
      content: "本标准适用于成人(18岁及以上)超重和肥胖及中心型肥胖的判定,可用于流行病学筛查和临床初步诊断,但不适用于某些特殊人群,如运动员、孕产妇等。",
      text1: "请输入身高",
      text2: "请输入体重"
    }];

  build() {
    Scroll() {
      Column({ space: 30 }) {

        ForEach(this.healthyCheckLists, (item: healthyCheckList, index) => {

          Column({ space: 10 }) {
            Row() {
              Text(item.title).fontSize(18).fontWeight(FontWeight.Bold).fontColor("#ff0b51bc")
            }.width("100%").padding({ top: 10, left: 10 })

            TextArea({
              text: item.content
            })
              .backgroundColor(Color.White)
              .width("90%")
              .textAlign(TextAlign.Start)
              .borderRadius(25)

            TextInput({ placeholder: item.text1 }).width("90%").backgroundColor(Color.White)
            TextInput({ placeholder: item.text2 }).width("90%").backgroundColor(Color.White)

            Button("检测").width("90%").margin({ bottom: 10 })

          }
          .width("90%")
          .borderRadius(25)
          //.borderWidth(1)
          .backgroundColor("#ffaac3e9")
        })

      }
      .width("100%")
      //.borderWidth(1)
      .backgroundColor("#eff3fc")
      .justifyContent(FlexAlign.Center)
      .alignItems(HorizontalAlign.Center)
    }.width("100%").height("100%") //.borderWidth(1)
  }
}

export default HealthyCheckPageDemo