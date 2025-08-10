import loginView from '../components/LoginView';

@Entry
@Component
struct Region {
  build() {
    Column() {
      loginView({ isLogin: false, Logo: false })
    }
  }
}