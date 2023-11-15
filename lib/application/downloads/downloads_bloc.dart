import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
//import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';
import 'package:netflix_app/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_app/domain/downloads/models/downloads.dart';
part 'downloads_bloc.freezed.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepo downloadRepo;
  DownloadsBloc(this.downloadRepo) : super(DownloadsState.initial()) {
    on<_GetDownloadsImage>((event, emit) async {
      if (state.downloads.isNotEmpty) {
        return;
      }
      emit(
        state.copyWith(isLoading: true, downloadsFailureSuccessOption: None()),
      );
      final Either<MainFailure, List<Downloads>> downloadsOption =
          await downloadRepo.getDownloadsImages();
      // log(downloadsOption.toString());
      emit(
        downloadsOption.fold(
          (failure) => state.copyWith(
              isLoading: false,
              downloadsFailureSuccessOption: Some(left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              downloadsFailureSuccessOption: Some(
                Right(success),
              ),
              downloads: success),
        ),
      );
    });
  }
}
