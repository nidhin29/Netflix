import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:netflix_app/core_things/colors/colors.dart';
import 'package:netflix_app/presentation/search/widgets/search_result.dart';

class MainCardWidget extends StatelessWidget {
  final String imageUr;
  const MainCardWidget({super.key, required this.imageUr});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.28,
      height: size.width * 0.35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imageUr),
        ),
      ),
    );
  }
}
