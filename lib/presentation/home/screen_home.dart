import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/home/home_bloc.dart';
import 'package:netflix_app/core_things/colors/colors.dart';
import 'package:netflix_app/core_things/width.dart';
import 'package:netflix_app/presentation/home/widgets/MainCard.dart';
import 'package:netflix_app/presentation/home/widgets/MainListCard.dart';
import 'package:netflix_app/presentation/home/widgets/MainTitle.dart';
import 'package:netflix_app/presentation/home/widgets/NumberCard.dart';
import 'package:netflix_app/presentation/home/widgets/number_list_card.dart';
import 'package:netflix_app/presentation/search/widgets/search_result.dart';

ValueNotifier<bool> scrollnotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(const Initialized());
    });
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollnotifier,
      builder: (BuildContext context, index, _) {
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            if (direction == ScrollDirection.reverse) {
              return scrollnotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              return scrollnotifier.value = true;
            }
            return true;
            //    else {
            //   return kheight;
            // }
          },
          child: Stack(
            children: [
              BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
                if (state.isLoading) {
                  return const Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                    ),
                  );
                }
                if (state.isError) {
                  return const Center(
                    child: Text('Error while getting data'),
                  );
                }
                final releasePastyear = state.homelist.map((m) {
                  return m.image;
                }).toList();
                final trending = state.trendinglist.map((m) {
                  return m.image;
                }).toList();
                final top = state.toplist.map((m) {
                  return m.image;
                }).toList();
                final tense = state.tenselist.map((m) {
                  return m.image;
                }).toList();
                final south = state.southlist.map((m) {
                  return m.image;
                }).toList();
                trending.shuffle();
                top.shuffle();
                tense.shuffle();
                south.shuffle();
                return ListView(
                  children: [
                    BackgroundCardWidget(),
                    MainListCard(
                      title: 'Released in the Past Year',
                      posterlist: releasePastyear.sublist(0, 10),
                    ),
                    kheight20,
                    MainListCard(
                      title: 'Trending Now',
                      posterlist: trending.sublist(0, 10),
                    ),
                    kheight20,
                    NumberListCard(
                      title: 'Top 10 Cinemas In India Today',
                      poslist: top.sublist(0, 10),
                    ),
                    kheight20,
                    MainListCard(
                      title: 'Tense Drama',
                      posterlist: tense.sublist(0, 10),
                    ),
                    kheight20,
                    MainListCard(
                      title: 'South Indian Cinema',
                      posterlist: south.sublist(0, 10),
                    ),
                  ],
                );
              }),
              scrollnotifier.value == true
                  ? AnimatedContainer(
                      duration: const Duration(milliseconds: 1000),
                      width: double.infinity,
                      height: 90,
                      color: Colors.black.withOpacity(0.3),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*ty4NvNrGg4ReETxqU2N3Og.png",
                                width: 60,
                                height: 60,
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.cast,
                                color: Colors.white,
                              ),
                              kwidth,
                              Container(
                                width: 30,
                                height: 30,
                                color: Colors.blue,
                              ),
                              kwidth,
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'TV Shows',
                                style: khometitletext,
                              ),
                              Text(
                                'Movies',
                                style: khometitletext,
                              ),
                              Text(
                                'Categories',
                                style: khometitletext,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  : kwidth
            ],
          ),
        );
      },
    ));
  }
}

class BackgroundCardWidget extends StatelessWidget {
  const BackgroundCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                imageUrl1,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CustomButtonWidget(
                  icon: Icons.add,
                  title: 'My List',
                ),
                PlayButtonWidget(),
                CustomButtonWidget(icon: Icons.info_outline, title: 'Info')
              ],
            ),
          ),
        ),
        AnimatedContainer(
            duration: const Duration(milliseconds: 1000),
            width: double.infinity,
            height: 90,
            color: Colors.black.withOpacity(0.3),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.network(
                      "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*ty4NvNrGg4ReETxqU2N3Og.png",
                      width: 60,
                      height: 60,
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.cast,
                      color: Colors.white,
                    ),
                    kwidth,
                    Container(
                      width: 30,
                      height: 30,
                      color: Colors.blue,
                    ),
                    kwidth,
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'TV Shows',
                      style: khometitletext,
                    ),
                    Text(
                      'Movies',
                      style: khometitletext,
                    ),
                    Text(
                      'Categories',
                      style: khometitletext,
                    )
                  ],
                )
              ],
            ))
      ],
    );
  }
}

class CustomButtonWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final double iconSize;
  final double textSize;
  final Color color;
  final Color icolor;
  const CustomButtonWidget(
      {super.key,
      required this.icon,
      required this.title,
      this.iconSize = 30,
      this.textSize = 20,
      this.color = kwhitecolor,
      this.icolor = kwhitecolor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: icolor,
          size: iconSize,
        ),
        Text(
          title,
          style: TextStyle(fontSize: textSize, color: color),
        )
      ],
    );
  }
}

class PlayButtonWidget extends StatelessWidget {
  const PlayButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all(kwhitecolor)),
      onPressed: () {},
      icon: const Icon(
        Icons.play_arrow,
        color: kblackcolor,
        size: 25,
      ),
      label: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          'Play',
          style: TextStyle(color: kblackcolor, fontSize: 20),
        ),
      ),
    );
  }
}
