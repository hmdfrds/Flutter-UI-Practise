import 'package:flutter/cupertino.dart';

class DeviceCardProvider with ChangeNotifier {
  int cardHashCode = 0;

  setCardHashCode(int code) {
    cardHashCode = code;
    notifyListeners();
  }
}
