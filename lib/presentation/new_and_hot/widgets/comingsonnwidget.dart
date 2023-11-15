import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core_things/width.dart';
import 'package:netflix_app/presentation/home/screen_home.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/videowidget.dart';

import '../../search/widgets/search_result.dart';

class ComingSoonWidget extends StatelessWidget {
  final int date;
  final String title;
  final String description;
  final String poster1;
  const ComingSoonWidget({
    super.key,
    required this.date,
    required this.title,
    required this.description,
    required this.poster1,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 420,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                date.toString(),
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const Text(
                '',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 420,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(poster: poster1),
              kheight20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: FittedBox(
                      child: Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 38,
                          letterSpacing: -4,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Row(
                    //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      CustomButtonWidget(
                        icon: Icons.notifications_outlined,
                        title: 'Remind Me',
                        iconSize: 20,
                        textSize: 12,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CustomButtonWidget(
                        icon: Icons.info_outline_rounded,
                        title: 'Info',
                        iconSize: 20,
                        textSize: 12,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                    ],
                  ),
                ],
              ),
              kheight,
              const Text('Coming on Friday'),
              kheight,
              Text(
                title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              kheight,
              Text(
                description,
                style: const TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
      ],
    );
  }
}
