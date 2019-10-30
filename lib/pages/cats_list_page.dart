import 'package:flutter/material.dart';

import 'package:awesome_cats/widgets/app_bar_text.dart';
import 'package:awesome_cats/pages/cat_details_page.dart';
import 'package:awesome_cats/widgets/cat_card.dart';

class CatsListPage extends StatefulWidget {
  const CatsListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CatsListPageState createState() => _CatsListPageState();
}

class _CatsListPageState extends State<CatsListPage> {
  int _visibleCount = 3;
  final _cats = <String>[
    'resources/images/cats/1.jpeg',
    'resources/images/cats/2.jpeg',
    'resources/images/cats/3.jpeg',
    'https://images2.minutemediacdn.com/image/upload/c_crop,h_1193,w_2121,x_0,y_64/f_auto,q_auto,w_1100/v1565279671/shape/mentalfloss/578211-gettyimages-542930526.jpg',
    'https://images.unsplash.com/photo-1532386236358-a33d8a9434e3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
    'http://www.petsworld.in/blog/wp-content/uploads/2014/09/cute-kittens.jpg',
  ];

  void _addCat() {
    setState(() {
      if (_visibleCount < _cats.length) {
        _visibleCount++;
      }
    });
  }

  void _onTap(BuildContext context, String assetPath) {
    Navigator.push<void>(
        context,
        MaterialPageRoute(
            builder: (context) => CatDetailsPage(assetPath: assetPath)));
  }

  Widget _buildCatsGrid() {
    return GridView.builder(
      itemCount: _visibleCount,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, mainAxisSpacing: 5),
      itemBuilder: (BuildContext context, int index) => CatCard(
          assetPath: _cats[index], onTap: () => _onTap(context, _cats[index])),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarText(text: widget.title),
      ),
      body: _buildCatsGrid(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addCat(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
