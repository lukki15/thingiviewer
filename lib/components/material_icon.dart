import 'package:flutter/material.dart';

class MaterialIcon extends StatelessWidget {
  final IconData iconData;
  final double iconSize;
  final Color iconColor;

  const MaterialIcon(this.iconData,
      {Key? key, this.iconSize = 24.0, this.iconColor = Colors.grey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      this.iconData,
      size: this.iconSize,
      color: this.iconColor,
    );
  }
}
