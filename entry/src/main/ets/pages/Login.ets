import LoginViewHttp from '../components/LoginViewHttp';

@Entry
@Component
struct Login {
  build() {
    Column() {
      LoginViewHttp({ isLogin: true, Logo: false })
    }
  }
}