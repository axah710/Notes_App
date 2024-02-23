import 'package:flutter/material.dart';

class AppBarIcon extends StatelessWidget {
  const AppBarIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 44,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            16,
          ),
          color: Colors.white.withOpacity(
            0.123,
          )),
      child: const Icon(
        Icons.search,
        size: 28,
      ),
    );
  }
}
