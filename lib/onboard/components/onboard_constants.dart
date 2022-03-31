class OnBoardConstants {
  static OnBoardConstants? _instance;
  static OnBoardConstants get instance {
    _instance ??= OnBoardConstants._init();
    return _instance!;
  }

  OnBoardConstants._init();
}
