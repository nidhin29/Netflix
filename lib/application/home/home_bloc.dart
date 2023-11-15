import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/application/new_and_hot/newandhot_bloc.dart';
import 'package:netflix_app/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_app/domain/downloads/models/downloads.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(IDownloadsRepo _downloadservice) : super(HomeState.initial()) {
    emit(HomeState(
        isLoading: true,
        isError: false,
        homelist: [],
        southlist: [],
        toplist: [],
        tenselist: [],
        trendinglist: []));

    on<Initialized>(((event, emit) async {
      final _result = await _downloadservice.getDownloadsImages();
      _result.fold((l) {
        emit(HomeState(
          homelist: [],
          isLoading: true,
          isError: true,
          southlist: [],
          tenselist: [],
          toplist: [],
          trendinglist: [],
        ));
      }, (resp) {
        final home = resp;
         final south = resp;
          final tense = resp;
           final top = resp;
            final trending = resp;
        
        home.shuffle;
         south.shuffle;
          tense.shuffle;
           top.shuffle;
            trending.shuffle;
        emit(HomeState(
          homelist: home,
          isLoading: false,
          isError: false,
          southlist: south,
          tenselist: tense,
          toplist: top,
          trendinglist: trending,
        ));
      });
    }));
  }
}
