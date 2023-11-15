import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/application/fast_laugh/fastlaugh_bloc.dart';
import 'package:netflix_app/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_app/domain/downloads/models/downloads.dart';

part 'newandhot_event.dart';
part 'newandhot_state.dart';
part 'newandhot_bloc.freezed.dart';

@injectable
class NewandhotBloc extends Bloc<NewandhotEvent, NewandhotState> {
  NewandhotBloc(
    IDownloadsRepo _downloadService,
  ) : super(NewandhotState.initial()) {
    on<Initialize>((event, emit) async {
      if (state.hotlist.isNotEmpty) {
        emit(NewandhotState(
          hotlist: state.hotlist,
          isLoading: false,
          isError: false,
          comelist: [],
        ));
      }

      emit(NewandhotState(
        hotlist: [],
        isLoading: true,
        isError: false,
        comelist: [],
      ));
      final _result = await _downloadService.getDownloadsImages();
      _result.fold((l) {
        emit(NewandhotState(
          hotlist: [],
          isLoading: true,
          isError: true,
          comelist: [],
        ));
      }, (resp) {
      
        emit(NewandhotState(
          hotlist: resp,
          isLoading: false,
          isError: false,
          comelist: [],
        ));
      });
      
    });

    on<Initialize1>((event, emit) async {
      if (state.comelist.isNotEmpty) {
        emit(NewandhotState(
          hotlist: [],
          isLoading: false,
          isError: false,
          comelist: state.comelist,
        ));
      }
      emit(NewandhotState(
        hotlist: [],
        isLoading: true,
        isError: false,
        comelist: [],
      ));
      final _result = await _downloadService.getDownloadsImages();
      _result.fold((l) {
        emit(NewandhotState(
          hotlist: [],
          isLoading: true,
          isError: true,
          comelist: [],
        ));
      }, (resp) {
        emit(NewandhotState(
          hotlist: [],
          isLoading: false,
          isError: false,
          comelist: resp,
        ));
      });
    });
  }
}
