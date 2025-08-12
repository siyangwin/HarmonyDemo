import loginView from '../components/LoginView';

@Entry
@Component
struct LoginDemo {
  build() {
    Column() {
      loginView({ isLogin: true, Logo: false })
    }
  }
}