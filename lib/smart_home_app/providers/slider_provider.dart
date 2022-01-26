import 'package:flutter/cupertino.dart';

class SliderProvider with ChangeNotifier {
  int currentSliderPage = 0;

  setSliderPage(int page) {
    currentSliderPage = page;
    notifyListeners();
  }
}
