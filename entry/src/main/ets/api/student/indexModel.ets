import { PagingRequestResult } from '../model/baseModel'

export class Student {
  // 学生唯一标识
  id: number = 0;
  // 学生姓名
  name: string = "";
  // 学生年龄
  age: number = 0;
  // 班级名称
  class_name: string = "";
  // 性别（男/女）
  gender: string = "";
}

export type StudentRequestDataDTO = PagingRequestResult<Student>