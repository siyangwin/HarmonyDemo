import { preferences } from '@kit.ArkData'

export interface StoreParams {
  storeName: string
}

export interface getOptions {
  key: string;
}

export interface setOptions extends getOptions {
  value: preferences.ValueType
}

export interface PreferencesUtils {
  set: (options: setOptions) => void
  get: (options: getOptions) => preferences.ValueType
  deleteFn: (options: getOptions) => void
  removeFn: () => void
}