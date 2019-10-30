import 'package:flutter/material.dart';

import 'package:awesome_cats/pages/cat_details_page.dart';
import 'package:awesome_cats/widgets/cat_card.dart';

class CatsListPage extends StatefulWidget {
  const CatsListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CatsListPageState createState() => _CatsListPageState();
}

class _CatsListPageState extends State<CatsListPage> {
  final cats = [
    'resources/cats/1.jpeg',
    'resources/cats/2.jpeg',
    'resources/cats/3.jpeg',
    'https://images2.minutemediacdn.com/image/upload/c_crop,h_1193,w_2121,x_0,y_64/f_auto,q_auto,w_1100/v1565279671/shape/mentalfloss/578211-gettyimages-542930526.jpg',
  ];

  void _onTap(BuildContext context, String assetPath) {
    Navigator.push<void>(
        context,
        MaterialPageRoute(
            builder: (context) => CatDetailsPage(assetPath: assetPath)));
  }

  Widget _buildGrid() {
    return GridView.builder(
      itemCount: cats.length,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, mainAxisSpacing: 5),
      itemBuilder: (BuildContext context, int index) => CatCard(
          assetPath: cats[index], onTap: () => _onTap(context, cats[index])),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _buildGrid(),
    );
  }
}
