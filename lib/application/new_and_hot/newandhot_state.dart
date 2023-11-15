part of 'newandhot_bloc.dart';

@freezed
class NewandhotState with _$NewandhotState {
  const factory NewandhotState(
      {required bool isLoading,
      required bool isError,
      required List<Downloads> hotlist,
      required List<Downloads> comelist}) = _Initial;

  factory NewandhotState.initial() =>
      const NewandhotState(isLoading: false, isError: false, hotlist: [], comelist: []);
}
