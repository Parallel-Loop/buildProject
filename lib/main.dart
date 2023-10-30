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

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool horizontal = true;

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
          child: Column(
            children: [
              const Text('The Firebase distribution App',style: TextStyle(color: Colors.red),),
              const Text(
                'If you are reading this text it means the app is automatically distributed to you.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.green),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  setState(() {
                    horizontal = !horizontal;
                  });
                },
                child: FlutterLogo(
                    size: 200,
                    style: horizontal
                        ? FlutterLogoStyle.horizontal
                        : FlutterLogoStyle.stacked,
                    curve: Curves.bounceIn,
                    duration: const Duration(seconds: 3),
                    textColor: Colors.indigo),
              ),
              const Spacer(),
              const Text(
                'the purpose of this app is to automate the process of testing the release versions.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.deepPurpleAccent),
              ),
              const Text(
                'This app itself contains nothing, but it will make the way for others.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.teal),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
