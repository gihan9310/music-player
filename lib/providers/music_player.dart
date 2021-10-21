import 'package:flutter/foundation.dart';

class MusicPlayerPlayer with ChangeNotifier {
  bool _isShowPlayer = false;

  bool get isShowPlayer => _isShowPlayer;

  set isShowPlayer(bool isShowPlayer) {
    print("Calling");
    _isShowPlayer = isShowPlayer;
    notifyListeners();
  }
}
