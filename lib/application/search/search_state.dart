part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required List<D> d,
    required List<Downloads> idlelist,
    required bool isLoading,
    required bool isError,
  }) = _SearchState;

  factory SearchState.initial() =>
      const SearchState(d: [], idlelist: [], isLoading: false, isError: false);
}
