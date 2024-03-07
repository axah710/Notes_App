import 'package:flutter/material.dart';
import 'package:notes_app/helper/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/colors_avatar_item.dart';

class EditColorsListBuilder extends StatefulWidget {
  const EditColorsListBuilder({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditColorsListBuilder> createState() => _EditColorsListBuilderState();
}

class _EditColorsListBuilderState extends State<EditColorsListBuilder> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColorsPalette.indexOf(
      Color(widget.note.color),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28 * 2,
      child: ListView.builder(
          itemCount: kColorsPalette.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = kColorsPalette[index].value;
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                child: ColorsAvatarItem(
                  isSelected: currentIndex == index,
                  color: kColorsPalette[index],
                ),
              ),
            );
          }),
    );
  }
}
