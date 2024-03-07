import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/helper/constants.dart';
import 'package:notes_app/widgets/colors_avatar_item.dart';

class ColorsListBuilder extends StatefulWidget {
  const ColorsListBuilder({super.key});

  @override
  State<ColorsListBuilder> createState() => _ColorsListBuilderState();
}

class _ColorsListBuilderState extends State<ColorsListBuilder> {
  int currentIndex = 0;

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
                BlocProvider.of<AddNoteCubit>(context).selectedColor =
                    kColorsPalette[index];
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
