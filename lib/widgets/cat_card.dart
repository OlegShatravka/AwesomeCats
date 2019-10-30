import 'package:flutter/material.dart';

import 'package:awesome_cats/utils/url.dart';

class CatCard extends StatelessWidget {
  const CatCard({this.assetPath, this.onTap});

  final String assetPath;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    final _imageProvider =
        isRemote(assetPath) ? NetworkImage(assetPath) : AssetImage(assetPath);

    return Ink.image(
      image: _imageProvider,
      fit: BoxFit.cover,
      child: InkWell(
        onTap: onTap,
      ),
    );
  }
}
