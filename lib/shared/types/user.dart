class User {
  String _name;
  String _email;
  String _avatarUrl;
  String _telegramId;
  int _thumbsUp;

  User(
      {required String name,
      required String email,
      required String avatarUrl,
      required String telegramId,
      int thumbsUp = 0})
      : _name = name,
        _email = email,
        _avatarUrl = avatarUrl,
        _telegramId = telegramId,
        _thumbsUp = thumbsUp;

  String get name => _name;
  String get email => _email;
  String get avatarUrl => _avatarUrl;
  String get telegramId => _telegramId;
  int get thumbsUp => _thumbsUp;

  set name(String name) => _name = name;
  set email(String email) => _email = email;
  set avatarUrl(String avatarUrl) => _avatarUrl = avatarUrl;
  set telegramId(String telegramId) => _telegramId = telegramId;
  set thumbsUp(int thumbsUp) => _thumbsUp = thumbsUp;
}
