import { router, Router } from "@kit.ArkUI";

//表示定义组件入口文件
@Entry
  //表示自定义组件
@Component
struct TextSpanDemo {
  //变量
  //变量发生变化，视图内容发生变化
  @State message: string = 'Hello World--By Siyang';
  @State message1: string = 'Hello World1--By Siyang';
  @State test: string =
    'New Text那你年Saks拉开了打算肯定会 ask来得及ask来得及埃里克刻录机ask来得及ask来得及卡死了大家ask了大家阿斯利康大家ask来得及ask了大家阿斯利康的ask来得及ask来得及ask来得及ask来得及ask来得及ask来得及ask来得及ask了大家阿斯利康的就撒开了多久ask来得及ask了';

  //UI相关的代码
  build() {
    //纵向布局
    Column() {
      //设置文本内容
      Text('123')//设置字体大小
        .fontSize(30)

      //通过$r取资源文件的配置
      Text($r('app.string.module_desc'))//字体大小
        .fontSize(30)//字体粗细(100-900)
          //.fontWeight(900)
          //从枚举中取粗细（默认Normal）Normal是正常大小
          //.fontWeight(FontWeight.Normal)
        .fontWeight(FontWeight.Bolder)


      //直接读取变量内容
      Text(this.message)//字体大小
        .fontSize(20)//字体粗细(100-900)
          //.fontWeight(900)
          //从枚举中取粗细（默认Normal）Normal是正常大小
          //.fontWeight(FontWeight.Normal)
        .fontWeight(FontWeight.Bolder)//设置字体颜色，从配置
          //.fontColor($r('app.color.start_window_background'))
          //设置字体颜色
        .fontColor(Color.Red)//设置大小写转换 UpperCase转大写 LowerCase转小写
        .textCase(TextCase.UpperCase)//设置装饰线  type:LineThrough 中划线  type:Underline 下划线  type:Overline 上划线
        .decoration({ type: TextDecorationType.Overline, color: Color.Orange })//边距
        .margin({ top: 10, right: 10, bottom: 10 })//背景颜色
        .backgroundColor(Color.Blue)

      Text(this.message1).fontSize(20).fontColor(Color.White).backgroundColor(Color.Blue)

      //设置超长文本
      Text(this.test)
        .fontSize(15)
        .margin({ top: 10 })//设置最大行数
        .maxLines(1)//超出部分处理方式  TextOverflow.Ellipsis:省略掉  TextOverflow.MARQUEE:跑马灯，循环
        .textOverflow({ overflow: TextOverflow.MARQUEE })
        .clip(true) // 启用裁剪加速

      //设置超Span 只能在Text中使用
      Text() {
        Span('左边').fontSize(15).fontColor(Color.Red)
        Span('右边').fontSize(15).fontColor(Color.Pink)
      }
      .margin({ top: 10 })
      .onClick(() => {
        this.test = "hellllo1"
        console.log('输出')
      })

      //按钮，跳转
      Button("跳转ImagerDemo")
        .margin({ top: 10 })
        .onClick(() => {
          console.log('打开新页面')
          router.pushUrl({ url: "pages/ImageDemo" })
        })

    }
    //设置高度
    .height('100%')
    //设置宽度
    .width('100%')
    //设置边框
    .border({
      width: 2, // 边框宽度（单位vp）
      color: Color.Red, // 边框颜色
      radius: 8, // 边框圆角半径
      style: BorderStyle.Solid          // 边框样式（实线/虚线等）
    })
  }
}