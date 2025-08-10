class Info {
  //如果class类中使用了@Track装饰器
  //则未使用的属性不能在UI中使用

  //不使用@Track，会变成class中一个值发生变化，则整个引用过class的都会被渲染一次，浪费性能，加了就只渲染变动的属性
  @Track public name: string
  @Track public age: number
  @Track public id: number = 1

  //构造函数
  constructor(name: string, age: number) {
    this.name = name
    this.age = age
  }
}

@Entry
@Component
struct TrackDemo {
  @State info: Info = new Info('Jack', 18)

  getFontSize(id: number) {
    console.log(`getFontSize:${id}`)
    return 10
  }

  build() {
    Column({ space: 20 }) {
      Text(`info name：${this.info.name}`)
        .fontSize(this.getFontSize(1))

      Text(`info age：${this.info.age}`)
        .fontSize(this.getFontSize(2))

      Text(`info id：${this.info.id}`)
        .fontSize(this.getFontSize(3))

      Button("Change Name").onClick(() => {
        this.info.name = "Daniel"
      })

      Button("Change age").onClick(() => {
        this.info.age = 29
      })

      Button("Change id").onClick(() => {
        this.info.id = 2
      })
    }.width("100%").height("100%")
  }
}