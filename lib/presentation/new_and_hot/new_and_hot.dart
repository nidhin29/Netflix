import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/new_and_hot/newandhot_bloc.dart';
import 'package:netflix_app/core_things/colors/colors.dart';
import 'package:netflix_app/presentation/home/screen_home.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/comingsonnwidget.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/everyoneswatching.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/videowidget.dart';
import 'package:netflix_app/presentation/search/widgets/search_result.dart';
import 'package:netflix_app/widgets/app_bar_widget.dart';

import '../../core_things/width.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
   
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            title: const Text(
              'New & Hot',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            actions: [
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
              kwidth
            ],
            bottom: TabBar(
                unselectedLabelColor: kwhitecolor,
                isScrollable: true,
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                labelColor: kblackcolor,
                indicator: BoxDecoration(
                    color: kwhitecolor,
                    borderRadius: BorderRadius.circular(30)),
                tabs: const [
                  Tab(
                    text: '🍿 Coming Soon',
                  ),
                  Tab(
                    text: '👀 Everyone\'s Watching',
                  )
                ]),
          ),
        ),
        body:const TabBarView(
            children: [ ComingSoonList(key:Key( 'coming_soon'),),  EveryonesWatchingList()]),
      ),
    );
  }
  


}
class ComingSoonList extends StatelessWidget {
  const ComingSoonList({super.key});

  @override
  Widget build(BuildContext context) {
     WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<NewandhotBloc>(context).add(const Initialize());
    });
    return  RefreshIndicator(
      onRefresh: () async{
         WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<NewandhotBloc>(context).add(const Initialize());
    });
      },
      child: BlocBuilder<NewandhotBloc, NewandhotState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(strokeWidth: 2),
            );
          }
          if (state.isError) {
            return const Center(
              child: Text('Error while displaying data'),
            );
          }
          if (state.hotlist.isEmpty) {
            return const Center(
              child: Text('List is empty'),
            );
          }
          return ListView.builder(
            itemBuilder: (context, index) {
              final movie = state.hotlist[index];
          return    ComingSoonWidget(
                  date: movie.year!,
                  title: movie.title??'',
                  description: movie.description??
                  '',
                  poster1: movie.image);
            },
            itemCount: state.hotlist.length,
          );
        },
      ),
    ); 
  }
}
class EveryonesWatchingList extends StatelessWidget {
  const EveryonesWatchingList({super.key});

  @override
  Widget build(BuildContext context) {
     WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<NewandhotBloc>(context).add(const Initialize1());
    });
    return  RefreshIndicator(
      onRefresh: () async{
         WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<NewandhotBloc>(context).add(const Initialize1());
    });
      },
      child: BlocBuilder<NewandhotBloc, NewandhotState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(strokeWidth: 2),
            );
          }
          if (state.isError) {
            return const Center(
              child: Text('Error while displaying data'),
            );
          }
          if (state.comelist.isEmpty) {
            return const Center(
              child: Text('List is empty'),
            );
          }
          return ListView.builder(
            itemBuilder: (context, index) {
              final movie1 = state.comelist[index];
          return    EveryoneswatchingWidget(
                  date: movie1.year!,
                  title: movie1.title??'',
                  description: movie1.description??
                  '',
                  poster1: movie1.image);
            },
            itemCount: state.comelist.length,
          );
        },
      ),
    ); 
  }
}