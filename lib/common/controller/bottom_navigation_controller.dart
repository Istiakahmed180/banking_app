import 'package:banking_app/screens/card/view/card_screen.dart';
import 'package:banking_app/screens/home/view/home_screen.dart';
import 'package:banking_app/screens/profile/view/profile_screen.dart';
import 'package:banking_app/screens/transaction/view/transaction_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  final List<List<Widget>> pageStacks = [
    [CardScreen()],
    [CardScreen()],
    [CardScreen()],
    [CardScreen()],
  ];

  void onTapItem(int index) {
    if (selectedIndex.value == index && pageStacks[index].length > 1) {
      pageStacks[index] = [pageStacks[index].first];
      update();
    }
    selectedIndex.value = index;
  }

  void pushPage(Widget page) {
    pageStacks[selectedIndex.value].add(page);
    update();
  }

  bool popPage() {
    if (pageStacks[selectedIndex.value].length > 1) {
      pageStacks[selectedIndex.value].removeLast();
      update();
      return true;
    }
    return false;
  }

  Widget get currentPage => pageStacks[selectedIndex.value].last;
}
