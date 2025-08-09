import { text } from "@kit.ArkGraphics2D"

@Entry
@Component
struct  ListDemo{
  //提供一个轻量的UI复用
  @Builder
  itemHead(src:string)
  {
     Text(src).fontColor(Color.Orange).backgroundColor(Color.Blue)
       .width("100%")
  }

  build() {
    //列表布局
    List({space:50}){
      ListItemGroup({header:this.itemHead("A组")}) {
        ForEach([1,2,3,4],(item:number)=>{
          ListItem() {
            Text(`A组数据 ${item}`)
          //   ''   常用字符串
          //   ``   模板字符串 用于加载变量
          }
        },(item:number)=>item.toString())
      }

      ListItemGroup({header:this.itemHead("B组")}) {
        ForEach([1,2,3,4],(item:number)=>{
          ListItem() {
            Text(`B组数据 ${item}`)
            //   ''   常用字符串
            //   ``   模板字符串 用于加载变量
          }
        },(item:number)=>item.toString())
      }

      ListItemGroup({header:this.itemHead("C组")}) {
        ForEach([1,2,3,4],(item:number)=>{
          ListItem() {
            Text(`C组数据 ${item}`)
            //   ''   常用字符串
            //   ``   模板字符串 用于加载变量
          }
        },(item:number)=>item.toString())
      }
    }.width("100%").height("100%").borderWidth(1)
  }
}