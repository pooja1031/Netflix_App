import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        sboxW,
        Expanded(
          child: Text(
            title,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Icon(
          Icons.cast_sharp,
          color: bgwhite,
          size: 30,
        ),
        sboxW,
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png"),
            ),
          ),
        ),
        sboxW,
      ],
    );
  }
}
