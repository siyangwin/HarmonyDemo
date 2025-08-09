export class BasicDataSource<T> implements IDataSource {
  private listeners: DataChangeListener[] = [];
  private originDataArray: T[] = [];

  //获取数据总数量
  public totalCount(): number {
    return this.originDataArray.length;
  }

  //获取数据
  public getData(index: number): T {
    return this.originDataArray[index];
  }

  //修改数据
  public PushData(data: T) {
    this.originDataArray.push(data);
    this.notifyDataAdd(this.originDataArray.length - 1);
    return;
  }

  //写入数据
  public setData(data: Array<T>) {
    this.originDataArray = data;
    this.notifyDataReload();
    return;
  }

  //方法为框架自带调用
  //LazyForEach数据添加监听
  registerDataChangeListener(listener: DataChangeListener): void {
    if (this.listeners.indexOf(listener) < 0) {
      console.info('add listener');
      this.listeners.push(listener);
    }
  }

  //方法为框架自带调用
  //LazyForEach数据移除监听
  unregisterDataChangeListener(listener: DataChangeListener): void {
    const pos = this.listeners.indexOf(listener);
    if (pos >= 0) {
      console.info('remove listener');
      this.listeners.splice(pos, 1);
    }
  }

  //我们的组件和监听器全部重新加载
  //数据重新赋值调用
  notifyDataReload(): void {
    this.listeners.forEach(listener => {
      listener.onDataReloaded();
    });
  }

  //数据添加的时候调用
  notifyDataAdd(index: number): void {
    this.listeners.forEach(listener => {
      listener.onDataAdd(index);
    });
  }

  //LazyForEach数据改变的时候调用
  notifyDataChange(index: number): void {
    this.listeners.forEach(listener => {
      listener.onDataChange(index);
    });
  }

  //LazyForEach数据删除的时候调用
  notifyDataDelete(index: number): void {
    this.listeners.forEach(listener => {
      listener.onDataDelete(index);
    });
  }

  //LazyForEach数据改变位置的时候调用
  notifyDataMove(from: number, to: number): void {
    this.listeners.forEach(listener => {
      listener.onDataMove(from, to);
    });
  }

  //LazyForEach数据数据改变的时候调用
  notifyDatasetChange(operations: DataOperation[]): void {
    this.listeners.forEach(listener => {
      listener.onDatasetChange(operations);
    });
  }
}