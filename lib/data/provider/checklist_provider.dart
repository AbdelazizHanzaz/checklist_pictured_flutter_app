// providers/checklist_provider.dart
import 'package:checklist_pictured/data/models/checklist_item.dart';
import 'package:checklist_pictured/data/services/firebase_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ChecklistProvider extends ChangeNotifier {
  final List<ChecklistItem> _checklistItems = [
    ChecklistItem(title: 'Task 1', description: 'Description for Task 1'),
    ChecklistItem(title: 'Task 2', description: 'Description for Task 2'),
    ChecklistItem(title: 'Task 3', description: 'Description for Task 3'),
    ChecklistItem(title: 'Task 4', description: 'Description for Task 4'),
    ChecklistItem(title: 'Task 5', description: 'Description for Task 5'),
  ];

  List<ChecklistItem> get checklistItems => _checklistItems;

  void updateChecklistItem(int index, bool value) {
    _checklistItems[index].isChecked = value;
    notifyListeners();
  }

  void addChecklistItem(ChecklistItem item) {
    _checklistItems.add(item);
    notifyListeners();
  }

  //Send the checklist to the firebase server
  Future<void> sendDataToFirebase() async {
    final firebaseService = FirebaseService();
    await firebaseService.sendDataToFirebase(_checklistItems);
  }
}
