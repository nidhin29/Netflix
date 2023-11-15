import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';
import 'package:netflix_app/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_app/domain/downloads/models/downloads.dart';
import 'package:netflix_app/domain/search/model/search_response/search_response.dart';
import 'package:netflix_app/domain/search/search_service.dart';

import '../../domain/search/model/search_response/d.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo _downloadsService;
  final SearchService _searchService;
  SearchBloc(this._downloadsService, this._searchService)
      : super(SearchState.initial()) {
    on<Initialize>((event, emit) async {
      if (state.idlelist.isNotEmpty) {
        emit(SearchState(
          d: [],
          idlelist: state.idlelist,
          isLoading: false,
          isError: false,
        ));
        return;
      }
      emit(
        const SearchState(
          d: [],
          idlelist: [],
          isLoading: true,
          isError: false,
        ),
      );
      final _result = await _downloadsService.getDownloadsImages();
      _result.fold((MainFailure f) {
        emit(const SearchState(
          d: [],
          idlelist: [],
          isLoading: false,
          isError: true,
        ));
      }, (List<Downloads> list) {
        // log(list.toString());
        emit(SearchState(
          d: [],
          idlelist: list,
          isLoading: false,
          isError: false,
        ));
      });

      // log(_result.toString());
    });
    on<SearchMovie>((event, emit) async {
      emit(const SearchState(
        d: [],
        idlelist: [],
        isLoading: false,
        isError: true,
      ));

      final _result =
          await _searchService.searchmovies(moviequery: event.movieQuery);
      print(_result);
      final _state = _result.fold((MainFailure f) {
        return const SearchState(
          d: [],
          idlelist: [],
          isLoading: false,
          isError: true,
        );
      }, (SearchResponse r) {
        return SearchState(
          d: r.d,
          idlelist: [],
          isLoading: false,
          isError: false,
        );
      });
      emit(_state);
    });
  }
}
