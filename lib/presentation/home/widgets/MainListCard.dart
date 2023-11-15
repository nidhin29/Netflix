import 'package:flutter/cupertino.dart';

import '../../../core_things/width.dart';
import 'MainCard.dart';
import 'MainTitle.dart';

class MainListCard extends StatelessWidget {
  final String title;
  final List<String> posterlist;
  const MainListCard({
    super.key,
    required this.title, required this.posterlist,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainTitleWidget(title: title),
          const SizedBox(
            height: 5,
          ),
          LimitedBox(
            maxHeight: 170,
            child: ListView.separated(
              itemBuilder: (context, index) => MainCardWidget(imageUr: posterlist[index]),
              separatorBuilder: (context, index) => kwidth,
              itemCount: posterlist.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
