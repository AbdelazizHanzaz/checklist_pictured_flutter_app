import 'dart:developer';

import 'package:checklist_pictured/data/provider/checklist_provider.dart';
import 'package:checklist_pictured/screens/widgets/checklist_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckListScreen extends StatelessWidget {
  const CheckListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final checklistProvider = Provider.of<ChecklistProvider>(context);
    final checklistItems = checklistProvider.checklistItems;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Checklist Pictured"),
        centerTitle: true,
      ),
      body: checklistItems.isNotEmpty ? CheckList(items: checklistItems) : const Center(
        child: Text("Not Checklist except"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> _sendDataToFirebase(context),
        tooltip: "Send data", 
        child: const Icon(Icons.send),
        ),
    );
  }


  void _sendDataToFirebase(BuildContext context) async{
      final checklistProvider = Provider.of<ChecklistProvider>(context, listen: false);
    try {
      await checklistProvider.sendDataToFirebase();
      log("Data is sent to firebase with success");
    }catch(e) {
      log("Error sending data to firebase with error message: $e");
    }
  }
}