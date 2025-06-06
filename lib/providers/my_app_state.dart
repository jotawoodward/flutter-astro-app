import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/api_service.dart';

class MyAppState extends ChangeNotifier {
  String status = "Unknown";
  bool error = false;

  void getNext() {
    notifyListeners();
  }
  Future<void> fetchStatus() async {
    final result = await StatusService.fetchStatus();
    if (result.statusId != null) {
      status = result.statusId!;
    }
    if (result.error == true) {
      error = result.error!;
    }
    notifyListeners();
  }
}

