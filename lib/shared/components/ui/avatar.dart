import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String _image;

  const Avatar(this._image, {super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(_image),
      radius: 50,
    );
  }
}
