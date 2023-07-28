import 'package:checklist_pictured/data/provider/checklist_provider.dart';
import 'package:checklist_pictured/firebase_options.dart';
import 'package:checklist_pictured/screens/checklist_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ChangeNotifierProvider(
      create: (context) => ChecklistProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CheckList Pictured V0.1',
      theme: ThemeData(
        primaryColor: Colors.purpleAccent,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CheckListScreen(),
    );
  }
}
