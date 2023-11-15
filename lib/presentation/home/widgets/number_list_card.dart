import 'package:flutter/cupertino.dart';

import 'MainTitle.dart';
import 'NumberCard.dart';

class NumberListCard extends StatelessWidget {
  final List<String> poslist;
  final String title;
  const NumberListCard({
    super.key,
    required this.title, required this.poslist,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: LimitedBox(
              maxHeight: 170,
              child: ListView.separated(
                itemBuilder: (context, index) => NumberCard(
                  index: index, imageUrl: poslist[index],
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 0,
                ),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
