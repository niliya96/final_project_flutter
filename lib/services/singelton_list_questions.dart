class SingletonList {
  static final SingletonList _singleton = SingletonList._internal();

  factory SingletonList() {
    return _singleton;
  }

  SingletonList._internal();
}