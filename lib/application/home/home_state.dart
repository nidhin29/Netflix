part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState(
      {required bool isLoading,
      required bool isError,
      required List<Downloads> homelist,
       required List<Downloads> trendinglist,
        required List<Downloads> toplist,
         required List<Downloads> tenselist,
          required List<Downloads> southlist}) = _Initial;

  factory HomeState.initial() =>const
      HomeState(isLoading: true, isError: true, homelist: [], trendinglist: [], southlist: [], tenselist: [], toplist: []);
}
