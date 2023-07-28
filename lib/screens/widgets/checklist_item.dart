
import 'dart:io';

import 'package:checklist_pictured/data/models/checklist_item.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CheckListItem extends StatefulWidget {

  final ChecklistItem item;
  const CheckListItem({super.key, required this.item});

  @override
  State<CheckListItem> createState() => _CheckListItemState();
}

class _CheckListItemState extends State<CheckListItem> {

  Future<void> _captureImage() async {
    final imagePicker = ImagePicker();
    final image = await imagePicker.pickImage(source: ImageSource.camera);

    if (image != null) {
      setState(() {
        widget.item.imageUrl = image.path;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return ListTile(
            leading: Checkbox(
              value: widget.item.isChecked,
              onChanged: (value) {
                setState(() {
                  widget.item.isChecked = value!;
                });
              },
            ),
            title: Text(widget.item.title),
            subtitle: Text(widget.item.description),
            trailing: widget.item.imageUrl.isNotEmpty
                ? GestureDetector(
                    onTap: () => _showImagePreview(context, widget.item.imageUrl),
                    child: CircleAvatar(
                      backgroundImage: FileImage(File(widget.item.imageUrl)),
                    ),
                  )
                : GestureDetector(
                    onTap: () => _captureImage(),
                    child: const Icon(Icons.camera_alt),
                  ),
          );
  }


   void _showImagePreview(BuildContext context, String imageUrl) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Image.file(File(imageUrl)),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }


}