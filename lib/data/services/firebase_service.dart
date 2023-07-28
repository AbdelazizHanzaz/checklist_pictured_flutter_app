// services/firebase_service.dart
import 'dart:developer';

import 'package:checklist_pictured/data/models/checklist_item.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';

class FirebaseService {
  Future<void> sendDataToFirebase(List<ChecklistItem> checklistItems) async {
    try {
      final firestore = FirebaseFirestore.instance;
      final storage = firebase_storage.FirebaseStorage.instance;

      for (final item in checklistItems) {
        final itemRef = firestore.collection('checklist').doc();
        final imagePath = 'checklist/${itemRef.id}.jpg';

        // Upload the image to Firebase Cloud Storage
        if (item.imageUrl.isNotEmpty) {
          final imageFile = File(item.imageUrl);
          final uploadTask = storage.ref().child(imagePath).putFile(imageFile);
          final snapshot = await uploadTask.whenComplete(() => null);

          if (snapshot.state == firebase_storage.TaskState.success) {
            // Get the public download URL of the image
            final imageUrl = await storage.ref(imagePath).getDownloadURL();

            // Save the image URL in Firestore
            await itemRef.set({
              'title': item.title,
              'description': item.description,
              'isChecked': item.isChecked,
              'imageUrl': imageUrl,
            });
          }
        } else {
          await itemRef.set({
            'title': item.title,
            'description': item.description,
            'isChecked': item.isChecked,
            'imageUrl': '',
          });
        }
      }
    } catch (e) {
      log('Error sending data to Firebase: $e');
      throw FirebaseException;
    }
  }
}
