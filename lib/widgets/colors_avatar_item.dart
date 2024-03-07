import 'package:flutter/material.dart';

class ColorsAvatarItem extends StatelessWidget {
  const ColorsAvatarItem(
      {super.key, required this.isSelected, required this.color});
  final bool isSelected;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 28,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 24,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 28,
          );
  }
}
