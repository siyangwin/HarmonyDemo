// 分页数据
export interface PagingRequestData<T> {
  total: number;
  page: number;
  pageSize: number;
  list: Array<T>
}

export interface PagingRequestResult<T> {
  code: number;
  message: string;
  data: PagingRequestData<T>
}

//不分页
export interface RequestResult<T> {
  code: number;
  message: string
  data: T
}

export interface EntryDataRequestResult {
  code: number;
  message: string;
  success: boolean
}

