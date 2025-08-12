import loginView from '../components/LoginView';

@Entry
@Component
struct RegionDemo {
  build() {
    Column() {
      loginView({ isLogin: false, Logo: false })
    }
  }
}