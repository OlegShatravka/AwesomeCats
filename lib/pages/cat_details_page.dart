import 'package:flutter/material.dart';

import 'package:awesome_cats/utils/url.dart';

class CatDetailsPage extends StatelessWidget {
  const CatDetailsPage({Key key, @required this.assetPath})
      : assert(assetPath != null),
        super(key: key);

  final String assetPath;

  Widget _buildImage(String assetPath) {
    final _image =
        isRemote(assetPath) ? Image.network(assetPath) : Image.asset(assetPath);

    return _image;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kitty'),
      ),
      body: Center(child: _buildImage(assetPath)),
    );
  }
}
