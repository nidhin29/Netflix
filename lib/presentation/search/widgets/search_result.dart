import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/search/search_bloc.dart';
import 'package:netflix_app/core_things/width.dart';
import 'package:netflix_app/presentation/search/widgets/title.dart';

const imageUrl1 =
    "https://imageio.forbes.com/specials-images/imageserve/644851f6592881c776f33129/0x0.jpg?format=jpg&width=1200";

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(title: 'Movies & TV'),
        kheight,
        Expanded(child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return GridView.count(
              mainAxisSpacing: 8,
              crossAxisSpacing: 7,
              childAspectRatio: 1 / 1.4,
              shrinkWrap: true,
              crossAxisCount: 3,
              children: List.generate(state.d.length, (index) {
                final movie = state.d[index];

                return MainCard(
                  imageUrl2: movie.i.imageUrl ?? '',
                );
              }),
            );
          },
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  final String imageUrl2;
  const MainCard({super.key, required this.imageUrl2});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(imageUrl2)),
          borderRadius: BorderRadius.circular(7)),
    );
  }
}
