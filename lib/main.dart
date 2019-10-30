import 'package:flutter/material.dart';

import 'package:awesome_cats/pages/cats_list_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Awesome Cats',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CatsListPage(title: 'Awesome Cats'),
    );
  }
}
