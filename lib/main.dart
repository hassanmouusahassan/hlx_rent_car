import 'package:flutter/material.dart';
import 'package:hlx/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: 'AIzaSyCTnRE-Aa_YngVJPvZcmd0SBLdzqahBfqM',
        appId: '1:514986799268:android:c4613180a934fa1865b631',
        messagingSenderId: '514986799268',
        projectId: 'hlxx-5c16f',
        storageBucket: 'hlxx-5c16f.appspot.com',
      )
  );
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,

      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
