import 'package:flutter/material.dart';

import 'components/my_texta.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const myTabView(),
    );
  }
}

// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last


class myTabView extends StatefulWidget {
  const myTabView({super.key});

  @override
  State<myTabView> createState() => _myTabViewState();
}

class _myTabViewState extends State<myTabView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          title: const MyTexts(
              color: Colors.orange, text: 'T A B  B A R', fontSize: 2),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(
                Icons.home,
                size: 35,
                color: Colors.brown[400],
              ),
            ),
            
            Tab(
              icon: Icon(
                Icons.settings,
                size: 35,
                color: Colors.grey[500],
              ),
            ),

            Tab(
              icon: Icon(
                Icons.supervised_user_circle,
                size: 35,
                color: Colors.blueGrey[400],
              ),
            ),
          ]),
        ),
        body: TabBarView(children: [
          Container(
            child: Center(
                child: MyTexts(
                    color: Colors.white60, text: 'H O M E', fontSize: 2)),
            color: Colors.brown[400],
          ),

          Container(
            child: Center(
                child: MyTexts(
                    color: Colors.white60, text: 'SETTINGS', fontSize: 2)),
            color: Colors.grey[500],
          ),

          Container(
            child: Center(
                child: MyTexts(
                    color: Colors.white60, text: 'PROFILE', fontSize: 2)),
            color: Colors.blueGrey[400],
          ),
        ]),
      ),
    );
  }
}
