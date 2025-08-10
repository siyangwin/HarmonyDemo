import { PromptAction } from "@kit.ArkUI";

export const Toast = (action: PromptAction, values: string) => {
  action.showToast({
    //Toast显示的内容
    message: $r(values),
    //Toast显示的时长
    duration: 2000
  })

}

