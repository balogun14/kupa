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
    Future dialogShow(){
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Notifications'),
              content: SingleChildScrollView(
                child: ListView(
                  children: const [
                    Text(
                        'Do you want to recieve Notifications from us'),
                  ],
                ),
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Yes')),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('No')),
              ],
            );
          });
    }
    double screenWidth = MediaQuery.of(context).size.width;
    var bellColor = Colors.black;
    return SafeArea(
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: green,
        hintColor: sage,
        appBarTheme: appBarTheme,
        textTheme: screenWidth < 500 ? textThemeSmall : textThemeDefault,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: screenWidth < 500
              ? const Center(child: Text('Home'))
              : const Text('Home'),
          actions: [
            IconButton(
                onPressed: dialogShow,
                icon: Icon(
                  Icons.notifications,
                  color: bellColor,
                ))
          ],
        ),
        body: HomePage(
          screenWidth: screenWidth,
        ),
      ),
    ));
  }
}
