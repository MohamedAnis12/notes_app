import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/cubits/add_note_cubit/add_note_cubit_cubit.dart';

class CustomColorItem extends StatelessWidget {
  const CustomColorItem({
    super.key,
    required this.isActive,
    required this.color,
  });
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              radius: 38,
              backgroundColor: Colors.white,

              child: CircleAvatar(radius: 34, backgroundColor: color),
            ),
          )
        : Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CircleAvatar(radius: 38, backgroundColor: color),
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  List<Color> color = [
    Color(0xffac3931),
    Color(0xffe5d352),
    Color(0xffd9e76c),
    Color(0xff537d8d),
    Color(0xff482c3d),
  ];
  int colorIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              colorIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color=color[index];
              setState(() {});
            },
            child: CustomColorItem(
              color: color[index],
              isActive: colorIndex == index,
            ),
          );
        },
      ),
    );
  }
}
