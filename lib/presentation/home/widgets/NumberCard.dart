import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:netflix_app/core_things/colors/colors.dart';

import '../../search/widgets/search_result.dart';

class NumberCard extends StatelessWidget {
  final String imageUrl;
  final int index;
  const NumberCard({super.key, required this.index, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 30,
            ),
            Container(
              width: size.width * 0.28,
              height: size.width * 0.42,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imageUrl),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: -1,
          bottom: -19,
          child: BorderedText(
            strokeWidth: 2.0,
            strokeColor: kwhitecolor,
            child: Text(
              '${index + 1}',
              style: TextStyle(
                  fontSize: 100,
                  color: kblackcolor,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
