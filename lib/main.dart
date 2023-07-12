import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Distribution Testing App'),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: const Column(
            children: [
              Text('The Firebase distribution App'),
              Text(
                'If you are reading this text it means the app is automatically distributed to you.',
                textAlign: TextAlign.center,
              ),
              Spacer(),
              FlutterLogo(
                  size: 200,
                  style: FlutterLogoStyle.horizontal,
                  textColor: Colors.indigo),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
