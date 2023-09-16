import 'package:flutter/material.dart';
import 'package:kupa/screens/homepage.dart';
import 'package:kupa/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(child:
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: green,
        hintColor: sage,
        appBarTheme: appBarTheme,
        textTheme: screenWidth < 500 ? textThemeSmall : textThemeDefault,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: screenWidth < 500 ? const Center(child:  Text('Home')): const Text('Home'),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.notifications,color: colorBlack,))
          ],
        ),
        body:  HomePage(screenWidth: screenWidth,),
      ),
    ));

  }
}
