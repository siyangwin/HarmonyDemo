import { router } from "@kit.ArkUI"

@Entry
@Component
struct ImageDemo {
  build() {
    //滚动组件
    Scroll() {

      //纵向布局 space 元素上下之间的距离
      Column({ space: 10 }) {
        Row() {
          //按钮，跳转
          Button("返回上一页按钮")
            .onClick(() => {
              router.back() //核心返回代码
            })
        }
        .width("100%")

        //设置边框
        // .border({
        //   width: 1, // 边框宽度（单位vp）
        //   color: Color.Red, // 边框颜色
        //   radius: 8, // 边框圆角半径
        //   style: BorderStyle.Solid          // 边框样式（实线/虚线等）
        // })


        // Image($r('app.media.startIcon'))
        //   .width(100)
        //   .height(100)
        //
        // Image($r('app.media.startIcon'))
        //   .width(100)
        //   .height(100)
        //
        // Image($r('app.media.startIcon'))
        //   .width(100)
        //   .height(100)

        Image($r('app.media.startIcon'))
          .width(100)
          .height(100)

        Image('https://p3-passport.byteacctimg.com/img/user-avatar/88c000ffd89aab2c910baea527709d33~50x50.awebp')
          .width(100)
          .height(100)
          .alt($r('app.media.startIcon')) //上面的图片展示不出来，就显示默认的图Alt

        //横向布局 space元素左右之间的距离
        Row({ space: 2 }) {
          Image("Images/2.jpg")
            .width(90)
            .height(100)
            .alt($r('app.media.startIcon'))//上面的图片展示不出来，就显示默认的图Alt
            .objectFit(ImageFit.Contain)//图片缩放，保持图片宽高同比例，使得图片刚好显示区域内
            .border({
              width: 1, // 边框宽度（单位vp）
              color: Color.Red, // 边框颜色
              radius: 8, // 边框圆角半径
              style: BorderStyle.Solid          // 边框样式（实线/虚线等）
            })

          Image("Images/2.jpg")
            .width(90)
            .height(100)
            .alt($r('app.media.startIcon'))//上面的图片展示不出来，就显示默认的图Alt
            .objectFit(ImageFit.Cover)//图片缩放，保存图片宽高同比例，自动缩放，使得图片刚好完全覆盖显示区域
            .border({
              width: 1, // 边框宽度（单位vp）
              color: Color.Red, // 边框颜色
              radius: 8, // 边框圆角半径
              style: BorderStyle.Solid          // 边框样式（实线/虚线等）
            })

          Image("Images/2.jpg")
            .width(90)
            .height(100)
            .alt($r('app.media.startIcon'))//上面的图片展示不出来，就显示默认的图Alt
            .objectFit(ImageFit.Fill)//图片缩放，不保持图片宽高同比例，使得图片刚好占满宽高区域
            .border({
              width: 1, // 边框宽度（单位vp）
              color: Color.Red, // 边框颜色
              radius: 8, // 边框圆角半径
              style: BorderStyle.Solid          // 边框样式（实线/虚线等）
            })


        }

        Row({ space: 2 }) {
          Image("Images/2.jpg")
            .width(90)
            .height(100)
            .alt($r('app.media.startIcon'))//上面的图片展示不出来，就显示默认的图Alt
            .objectFit(ImageFit.ScaleDown)//图片缩放，保持图片宽高同比例进行缩小或者不变，使得图片完全显示在显示区域
            .border({
              width: 1, // 边框宽度（单位vp）
              color: Color.Red, // 边框颜色
              radius: 8, // 边框圆角半径
              style: BorderStyle.Solid          // 边框样式（实线/虚线等）
            })

          Image("Images/2.jpg")
            .width(90)
            .height(100)
            .alt($r('app.media.startIcon'))//上面的图片展示不出来，就显示默认的图Alt
            .objectFit(ImageFit.Auto)//图片缩放，自适应显示
            .border({
              width: 1, // 边框宽度（单位vp）
              color: Color.Red, // 边框颜色
              radius: 8, // 边框圆角半径
              style: BorderStyle.Solid          // 边框样式（实线/虚线等）
            })
        }

        //横向布局 space元素左右之间的距离
        Row({ space: 2 }) {
          Image("Images/1.PNG")
            .width(90)
            .height(100)
            .alt($r('app.media.startIcon'))//上面的图片展示不出来，就显示默认的图Alt
            .objectFit(ImageFit.Contain)//图片缩放，保持图片宽高同比例，使得图片刚好显示区域内
            .border({
              width: 1, // 边框宽度（单位vp）
              color: Color.Red, // 边框颜色
              radius: 8, // 边框圆角半径
              style: BorderStyle.Solid          // 边框样式（实线/虚线等）
            })

          Image("Images/1.PNG")
            .width(90)
            .height(100)
            .alt($r('app.media.startIcon'))//上面的图片展示不出来，就显示默认的图Alt
            .objectFit(ImageFit.Cover)//图片缩放，保存图片宽高同比例，自动缩放，使得图片刚好完全覆盖显示区域
            .border({
              width: 1, // 边框宽度（单位vp）
              color: Color.Red, // 边框颜色
              radius: 8, // 边框圆角半径
              style: BorderStyle.Solid          // 边框样式（实线/虚线等）
            })

          Image("Images/1.PNG")
            .width(90)
            .height(100)
            .alt($r('app.media.startIcon'))//上面的图片展示不出来，就显示默认的图Alt
            .objectFit(ImageFit.Fill)//图片缩放，不保持图片宽高同比例，使得图片刚好占满宽高区域
            .border({
              width: 1, // 边框宽度（单位vp）
              color: Color.Red, // 边框颜色
              radius: 8, // 边框圆角半径
              style: BorderStyle.Solid          // 边框样式（实线/虚线等）
            })


        }

        Row({ space: 2 }) {
          Image("Images/1.PNG")
            .width(90)
            .height(100)
            .alt($r('app.media.startIcon'))//上面的图片展示不出来，就显示默认的图Alt
            .objectFit(ImageFit.ScaleDown)//图片缩放，保持图片宽高同比例进行缩小或者不变，使得图片完全显示在显示区域
            .border({
              width: 1, // 边框宽度（单位vp）
              color: Color.Red, // 边框颜色
              radius: 8, // 边框圆角半径
              style: BorderStyle.Solid          // 边框样式（实线/虚线等）
            })

          Image("Images/1.PNG")
            .width(90)
            .height(100)
            .alt($r('app.media.startIcon'))//上面的图片展示不出来，就显示默认的图Alt
            .objectFit(ImageFit.Auto)//图片缩放，自适应显示
            .border({
              width: 1, // 边框宽度（单位vp）
              color: Color.Red, // 边框颜色
              radius: 8, // 边框圆角半径
              style: BorderStyle.Solid          // 边框样式（实线/虚线等）
            })
        }

        Row({ space: 2 }) {
          Text("232323")
            .backgroundColor(Color.Blue)
            .fontColor("#fff3f2f2")
            .padding(20)//圆角
            .borderRadius(20)
            .borderWidth(1)
        }


        Column({ space: 20 }) {
          //图片插值
          Image($r('app.media.startIcon'))
            .width(100)
            .height(100)
            .interpolation(ImageInterpolation.High) //插值，高质量插值，可能会影响图片的渲染速度

          Image($r('app.media.startIcon'))
            .width(100)
            .height(100)
            .interpolation(ImageInterpolation.Medium) //插值，中质量插值


          Image($r('app.media.startIcon'))
            .width(100)
            .height(100)
            .interpolation(ImageInterpolation.Low) //插值，低质量插值


        }.border({
          width: 2, // 边框宽度（单位vp）
          color: Color.Red, // 边框颜色
          radius: 8, // 边框圆半径
          style: BorderStyle.Solid          // 边框样式（实线/虚线等）
        })
      }
      //设置边框
      .border({
        width: 2, // 边框宽度（单位vp）
        color: Color.Red, // 边框颜色
        radius: 8, // 边框圆半径
        style: BorderStyle.Solid          // 边框样式（实线/虚线等）
      })
    } //设置高度
    .height('100%')
    //设置宽度
    .width('100%')
  }
}