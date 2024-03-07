import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_app_bar_icon.dart';

class NotesViewAppBar extends StatelessWidget {
  const NotesViewAppBar({super.key, required this.title, required this.icon, this.onPressed});
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 48,
        bottom: 16,
      ),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 28,
            ),
          ),
          const Spacer(),
          NotesAppBarIcon(
            onPressed: onPressed,
            icon: icon,
          ),
        ],
      ),
    );
  }
}
