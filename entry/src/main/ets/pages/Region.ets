import LoginViewHttp from '../components/LoginViewHttp';

@Entry
@Component
struct Region {
  build() {
    Column() {
      LoginViewHttp({ isLogin: false, Logo: false })
    }
  }
}