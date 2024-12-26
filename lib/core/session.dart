class SessionSingleton {
  static late final String _user;
  static bool _initialized = false;
  SessionSingleton._();

  static String get user {
    if (!_initialized){
      _user = "a";
      _initialized = true;
    }
    return _user;
  }

}