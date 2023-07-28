import 'package:checklist_pictured/data/models/checklist_item.dart';
import 'package:checklist_pictured/screens/widgets/checklist_item.dart';
import 'package:flutter/material.dart';

class CheckList extends StatelessWidget {

  final List<ChecklistItem> items ;
  const CheckList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
  
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index){
        return CheckListItem(item: items[index]);
      }
      
      );
  }
}
