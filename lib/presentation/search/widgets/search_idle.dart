import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/search/search_bloc.dart';
import 'package:netflix_app/core_things/colors/colors.dart';
import 'package:netflix_app/core_things/width.dart';

const imageUrl =
    "https://m.media-amazon.com/images/M/MV5BZmM4OGEzMjItMjYxZC00ODNjLWE1MGUtMTE1NTJmZmIzM2QzXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_UX100_CR0,0,100,100_AL_.jpg";

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Top Searches',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        kheight,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
               else if (state.isError) {
                return const Center(
                  child: Text('Error while getting data'),
                );
              } else if (state.idlelist.isEmpty) {
                return const Center(child: Text('List is empty'));
              }
              return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final movie = state.idlelist[index];
                    return TopeSearchTile(
                      title: movie.title ?? 'no title provided',
                      imageUrl: '${movie.image}'.trim(),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return kheight20;
                  },
                  itemCount: state.idlelist.length);
            },
          ),
        )
      ],
    );
  }
}

class TopeSearchTile extends StatelessWidget {
  final String title;
  final String imageUrl;
  const TopeSearchTile(
      {super.key, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final sizewidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
            width: sizewidth * 0.35,
            height: 65,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(imageUrl)))),
        kwidth,
        Expanded(
          child: Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        const Icon(
          Icons.play_circle_outline_outlined,
          color: kwhitecolor,
          size: 35,
        )
      ],
    );
  }
}
