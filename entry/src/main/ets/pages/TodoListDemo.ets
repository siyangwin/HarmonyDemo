import { preferencesUtils } from "../utils/PreferencesUtils"

//创建Model
interface TaskList {
  title: string;
  selected: boolean;
}

@Extend(Checkbox)
function CheckBoxStyle(select: boolean) {
  .width(20)
  .height(20)
  .shape(CheckBoxShape.ROUNDED_SQUARE)
  .select(select)
  .selectedColor(Color.Yellow)

}

@Entry
@Component
struct TodoListDemo {
  //使用缓存，封装
  private store = preferencesUtils({ storeName: "ToDoList" })
  @State @Watch("TaskChangeFun") ToDoListArray: Array<TaskList> =
    this.store.get({ key: "ToDoListItem" }) as Array<TaskList> || []
  // [{
  //   title: "叫外卖", selected: false
  // }, {
  //   title: "写代码", selected: false
  // }]
  @State SelectNum: number = this.ToDoListArray.filter((item) => item.selected).length;
  @State UnSelectNum: number = this.ToDoListArray.length - this.SelectNum;
  @State SelectAll: boolean = false;
  @State taskAll: boolean = false;
  @State taskText: string = "";

  // @State @Watch("TaskChangeFun") TaskChange: boolean = true

  TaskChangeFun() {
    this.store.set({ key: "ToDoListItem", value: this.ToDoListArray });

    this.SelectNum = this.ToDoListArray.filter((item) => item.selected).length;
    console.log("SelectNum" + this.SelectNum);
    this.UnSelectNum = this.ToDoListArray.length - this.SelectNum;
    console.log("UnSelectNum" + this.UnSelectNum);
    if (this.UnSelectNum == 0 && this.SelectNum != 0) {
      this.SelectAll = true
    } else {
      this.SelectAll = false
    }
  }

  build() {
    Scroll() {
      Column({ space: 20 }) {
        TextInput({ placeholder: "请输入任务后，按回车确定", text: this.taskText })
          .margin({ bottom: 10 })
          .id('nextInputId')// 设置唯一标识
          .focusable(true)// 确保可获焦（默认值，可省略）
          .onChange((value) => {
            this.taskText = value;
          })
          .onSubmit((key, Event) => {
            console.log("回车", key)
            console.log("回车", JSON.stringify((Event)))
            if (key == 6) {
              this.ToDoListArray.push({
                title: Event.text
              , selected: false
              })

              this.taskText = ""
              // 提交逻辑
              focusControl.requestFocus('nextInputId'); // 转移焦点到指定组件
            }
          })


        List() {
          ForEach(this.ToDoListArray, (item: TaskList, index) => {
            ListItem() {
              Row() {
                Checkbox().CheckBoxStyle(item.selected).onClick((value) => {
                  this.ToDoListArray = this.ToDoListArray.map((item, _index) => {
                    console.log(item.title + "-----" + item.selected)
                    //index === _index && item.selected == !item.selected
                    if (index === _index) {
                      console.log(item.title + "[" + index + "]Checkbox" + item.selected)
                      item.selected = !item.selected
                      console.log(item.title + "[" + index + "]Checkbox" + item.selected)
                    }
                    return item
                  })
                })
                Text(item.title).fontSize(20).margin({ left: 20 })

              }.borderWidth(1).padding(10).width("90%")

            }.width("100%")
          })

        }.width("100%")

        Row() {
          Row() {
            Checkbox().CheckBoxStyle(this.SelectAll).onClick((value) => {
              console.log("按钮" + value)
              this.SelectAll = !this.SelectAll
              if (this.SelectAll == true) {
                this.ToDoListArray = this.ToDoListArray.map((item, _index) => {
                  item.selected = true
                  return item
                })
              } else {
                this.ToDoListArray = this.ToDoListArray.map((item, _index) => {
                  item.selected = false
                  return item
                })
              }
            }
            )
            Text() {
              Span(`已完成${this.SelectNum} /`)
              Span(`未完成${this.UnSelectNum}`)
            }
          }

          Button("清楚已完成任务").backgroundColor(Color.Red).onClick(() => {
            this.ToDoListArray = this.ToDoListArray.filter((item) => item.selected === false);
          })

        }.width("95%").borderWidth(0).justifyContent(FlexAlign.SpaceBetween)
      }
      .borderWidth(1)
      .width("100%")
      .height("100%")
      .justifyContent(FlexAlign.Center)
      .alignItems(HorizontalAlign.Center)
    }.width("100%").height("100%")
  }
}