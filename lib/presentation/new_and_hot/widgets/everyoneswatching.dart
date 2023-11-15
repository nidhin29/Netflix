import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/videowidget.dart';

import '../../../core_things/width.dart';
import '../../home/screen_home.dart';

class EveryoneswatchingWidget extends StatelessWidget {
   final int date;
  final String title;
  final String description;
   final String poster1;
  const EveryoneswatchingWidget({
    super.key, required this.date, required this.title, required this.description, required this.poster1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kheight,
          Text(
            title,
            style:const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          kheight,
          Text(
           title,
            style:const TextStyle(color: Colors.grey),
          ),
          kheight50,
          VideoWidget(poster: poster1),
          kheight,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children:const [
              CustomButtonWidget(
                icon: Icons.share,
                title: 'Share',
                iconSize: 25,
                textSize: 16,
                color: Colors.grey,
              ),
              kwidth,
              CustomButtonWidget(
                icon: Icons.add,
                title: 'My List',
                iconSize: 25,
                textSize: 16,
                color: Colors.grey,
              ),
              kwidth,
              CustomButtonWidget(
                icon: Icons.play_arrow,
                title: 'Play',
                iconSize: 25,
                textSize: 16,
                color: Colors.grey,
              ),
              kwidth
            ],
          )
        ],
      ),
    );
  }
}
