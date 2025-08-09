import { preferences } from "@kit.ArkData"
import { setOptions, StoreParams, getOptions, PreferencesUtils } from './type'

//使用缓存，封装
const context = getContext(this)

//创建一个缓存对象
export const preferencesUtils = (options: StoreParams): PreferencesUtils => {
  //不支持结构语法
  //const {storeName} = options

  // 获取preferences实例
  const getStore = (StoreName: string) => {
    return preferences.getPreferencesSync(context, { name: StoreName })
  }

  const store = getStore(options.storeName)

  // 存储
  const set = (options: setOptions) => {
    store.putSync(options.key, options.value)
    store.flush() //做持久化处理，挂在到缓存
  }

  // 获取
  const get = (options: getOptions) => {
    return store.getSync(options.key, null)
  }

  // 删除
  const deleteFn = (options: getOptions) => {
    store.deleteSync(options.key)
    store.flush()
  }

  // 从内存中移除指定的preferences实例
  const removeFn = () => {
    preferences.removePreferencesFromCacheSync(context, options.storeName)
  }

  return {
    set,
    get,
    deleteFn,
    removeFn
  }
}