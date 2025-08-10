import loginView from '../components/LoginView';

@Entry
@Component
struct Login {
  build() {
    Column() {
      loginView({ isLogin: true, Logo: false })
    }
  }
}