import 'package:app/shared/types/user.dart';

class UserService {
  User getUser() {
    return User(
        name: "Mykyta Kasianenko",
        email: "mykytakasianenko@gmail.com",
        avatarUrl:
            'https://miro.medium.com/v2/resize:fit:2000/0*5gXmB8UxhAjoPwq2.jpg',
        telegramId: '@IamTheFuturePirateKing');
  }
}
