import { PromptAction, router } from "@kit.ArkUI";
import { Toast } from '../utils/toast'
import { login, register } from '../api/login/index'
import { LoginParams } from "../api/login/indexModel"

@Component
struct LoginViewHttp {
  @State UserName: string = "";
  @State PassWord: string = "";
  @State PassWordTwo: string = "";
  //定义Toast
  private context: UIContext = this.getUIContext()
  private promptAction: PromptAction = this.context.getPromptAction();
  //接受父组件传过来的值，判断是注册页面，还是登录页面
  @Prop isLogin: boolean = true
  @Prop Logo: boolean = true
  @State message: string = this.isLogin ? "欢迎登录[Http]" : "欢迎注册[Http]"
  // 提交HTTP请求
  @State Url: string = "https://api.hejian.cyou/api/list"
  @State LoginParamsReq: LoginParams = {
    username: "", // 提供空字符串而非不写
    password: ""
  };
  //定义方法
  private UserNameOnChange = (value: string) => {
    //Toast(this.promptAction, value)
    this.promptAction.showToast({
      //Toast显示的内容
      message: value,
      //Toast显示的时长
      duration: 2000
    })
  }
  //定义方法
  private GoMain = async () => {
    //检测内容是都有输入值
    if (this.UserName.length == 0) {
      Toast(this.promptAction, 'app.string.usernameCanNoEmpty');
      // this.promptAction.showToast({
      //   //Toast显示的内容
      //   message: "请输入用户名",
      //   //Toast显示的时长
      //   duration: 2000
      // })

      //弹窗提示
      return
    }

    if (this.PassWord.length == 0) {
      Toast(this.promptAction, 'app.string.passwordCanNoEmpty');
      // this.promptAction.showToast({
      //   //Toast显示的内容
      //   message: "请输入密码",
      //   //Toast显示的时长
      //   duration: 2000
      // })

      //弹窗提示
      return
    }

    if (!this.isLogin) {

      if (this.PassWordTwo.length == 0) {
        Toast(this.promptAction, 'app.string.passwordCanNoEmpty');
        // this.promptAction.showToast({
        //   //Toast显示的内容
        //   message: "请输入密码",
        //   //Toast显示的时长
        //   duration: 2000
        // })

        //弹窗提示
        return
      }

      if (this.PassWord != this.PassWordTwo) {
        Toast(this.promptAction, 'app.string.passwordCanNoSame')
        // this.promptAction.showToast({
        //   //Toast显示的内容
        //   message: "两次输入密码不一致",
        //   //Toast显示的时长
        //   duration: 2000
        // })

        //弹窗提示
        return
      }


      console.log("注册");
      Toast(this.promptAction, 'app.string.RegionSuccess');
      // this.promptAction.showToast({
      //   //Toast显示的内容
      //   message: "注册成功",
      //   //Toast显示的时长
      //   duration: 2000
      // })

      //返回页面会销毁当前页面
      router.back()
      //跳转页面-不会销毁，会存储在页面栈中
      //router.pushUrl({ url: "pages/Login" })
    } else {
      this.LoginParamsReq.username = this.UserName
      this.LoginParamsReq.password = this.PassWord
      console.log("登录1" + JSON.stringify(this.LoginParamsReq));

      const res = await login(this.LoginParamsReq)

      //console.log("登录" + JSON.stringify(res));
      Toast(this.promptAction, 'app.string.LoginSuccess');
      this.promptAction.showToast({
        //Toast显示的内容
        message: "登录成功",
        //Toast显示的时长
        duration: 2000
      })
      console.log("登录");

      //const xx = await login()

      //跳转页面
      router.pushUrl({ url: "pages/Index", params: { username: this.UserName } })
    }
  }

  build() {
    Column({ space: 20 }) {
      Text(this.message).fontSize(30).fontWeight(FontWeight.Bold).fontColor(Color.Green)

      if (this.Logo) {
        Image($r("app.media.Huawei")).width("70%").height(100).objectFit(ImageFit.Auto).margin({ bottom: 30 })
      } else {
        Image($r("app.media.th")).width("100%").height(100).objectFit(ImageFit.Auto).margin({ bottom: 30 })
      }

      TextInput({ placeholder: "请输入用户名" }).type(InputType.USER_NAME).onChange((value) => {
        this.UserName = value
        this.UserNameOnChange(value)
      })

      TextInput({ placeholder: "请输入密码" }).type(InputType.NEW_PASSWORD).onChange((value) => {
        this.PassWord = value

      })

      if (!this.isLogin) {
        TextInput({ placeholder: "请再次输入密码" }).type(InputType.NEW_PASSWORD).onChange((value) => {
          this.PassWordTwo = value
        })

        Button("注册").width("100%")
          .height(40)
          .onClick(this.GoMain)
      } else {
        //按钮横向布局
        Row() {
          Button("登录")
            .width(90)
            .height(40)
            .onClick(this.GoMain)


          Button("注册")
            .width(90)
            .height(40)
            .onClick(() => {
              console.log("注册");
              //跳转页面
              router.pushUrl({ url: "pages/Region" })
            })
        }
        .width("100%")
        .justifyContent(FlexAlign.SpaceBetween)
      }
    }
    .width("100%")
    .height("100%")
    //设置主轴布局，跟谁布局的主轴方向
    .justifyContent(FlexAlign.Center)
    //设置交叉轴布局， 作用垂直
    .alignItems(HorizontalAlign.Center)
    //设置内边距 Left right top bottom
    .padding({ left: 20, right: 20 })
  }
}

export default LoginViewHttp