import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  final double _height;
  final double _width;
  final Color _backgroundColor;

  AppLogo(this._height, this._width, this._backgroundColor);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: PhysicalModel(
          borderRadius: new BorderRadius.circular(96.0),
          color: _backgroundColor,
          child: Image(
            image: AssetImage('assets/images/google-logo.png'),
            height: _height,
            width: _width,
          ),
        ));
  }
}
