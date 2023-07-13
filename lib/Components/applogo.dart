import 'package:flutter/material.dart';
import 'package:maudit/Components/app_extensions.dart';

import 'image.dart';


class AppLogoWithName extends StatelessWidget {
  final bool back;
  const AppLogoWithName({Key? key, required this.back}) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      GestureDetector(
        onTap: () {
          if (back) {
            Navigator.pop(context);
          }
        },
        child:  const Image(
          height: 30,
          width: 30,
          image: AssetImage('assets/images/logo.png'),
          fit: BoxFit.cover,
        ),

      ),
      const SizedBox(width: 10),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'iTHRED QApp',
            style: TextStyle(
              color: context.res.color.black,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "Audit and Quality Check",
            style: TextStyle(
              color: context.res.color.textGray,
              fontSize: 12,
            ),
          ),
        ],
      )
    ],
  );
}