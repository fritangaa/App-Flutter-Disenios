import 'package:disenios/src/pages/slideshow_page.dart';
import 'package:flutter/material.dart';

class LayoutModel with ChangeNotifier {
  Widget _currentPage = SlideshowPage();

  Widget get currentPage => this._currentPage;
  set currentPage(Widget currentPage) {
    this._currentPage = currentPage;
    notifyListeners();
  }
}
