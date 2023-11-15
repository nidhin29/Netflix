// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializedCopyWith<$Res> {
  factory _$$InitializedCopyWith(
          _$Initialized value, $Res Function(_$Initialized) then) =
      __$$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$Initialized>
    implements _$$InitializedCopyWith<$Res> {
  __$$InitializedCopyWithImpl(
      _$Initialized _value, $Res Function(_$Initialized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initialized implements Initialized {
  const _$Initialized();

  @override
  String toString() {
    return 'HomeEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements HomeEvent {
  const factory Initialized() = _$Initialized;
}

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<Downloads> get homelist => throw _privateConstructorUsedError;
  List<Downloads> get trendinglist => throw _privateConstructorUsedError;
  List<Downloads> get toplist => throw _privateConstructorUsedError;
  List<Downloads> get tenselist => throw _privateConstructorUsedError;
  List<Downloads> get southlist => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<Downloads> homelist,
      List<Downloads> trendinglist,
      List<Downloads> toplist,
      List<Downloads> tenselist,
      List<Downloads> southlist});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? homelist = null,
    Object? trendinglist = null,
    Object? toplist = null,
    Object? tenselist = null,
    Object? southlist = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      homelist: null == homelist
          ? _value.homelist
          : homelist // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      trendinglist: null == trendinglist
          ? _value.trendinglist
          : trendinglist // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      toplist: null == toplist
          ? _value.toplist
          : toplist // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      tenselist: null == tenselist
          ? _value.tenselist
          : tenselist // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      southlist: null == southlist
          ? _value.southlist
          : southlist // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<Downloads> homelist,
      List<Downloads> trendinglist,
      List<Downloads> toplist,
      List<Downloads> tenselist,
      List<Downloads> southlist});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? homelist = null,
    Object? trendinglist = null,
    Object? toplist = null,
    Object? tenselist = null,
    Object? southlist = null,
  }) {
    return _then(_$_Initial(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      homelist: null == homelist
          ? _value._homelist
          : homelist // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      trendinglist: null == trendinglist
          ? _value._trendinglist
          : trendinglist // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      toplist: null == toplist
          ? _value._toplist
          : toplist // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      tenselist: null == tenselist
          ? _value._tenselist
          : tenselist // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      southlist: null == southlist
          ? _value._southlist
          : southlist // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.isLoading,
      required this.isError,
      required final List<Downloads> homelist,
      required final List<Downloads> trendinglist,
      required final List<Downloads> toplist,
      required final List<Downloads> tenselist,
      required final List<Downloads> southlist})
      : _homelist = homelist,
        _trendinglist = trendinglist,
        _toplist = toplist,
        _tenselist = tenselist,
        _southlist = southlist;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<Downloads> _homelist;
  @override
  List<Downloads> get homelist {
    if (_homelist is EqualUnmodifiableListView) return _homelist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_homelist);
  }

  final List<Downloads> _trendinglist;
  @override
  List<Downloads> get trendinglist {
    if (_trendinglist is EqualUnmodifiableListView) return _trendinglist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendinglist);
  }

  final List<Downloads> _toplist;
  @override
  List<Downloads> get toplist {
    if (_toplist is EqualUnmodifiableListView) return _toplist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_toplist);
  }

  final List<Downloads> _tenselist;
  @override
  List<Downloads> get tenselist {
    if (_tenselist is EqualUnmodifiableListView) return _tenselist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tenselist);
  }

  final List<Downloads> _southlist;
  @override
  List<Downloads> get southlist {
    if (_southlist is EqualUnmodifiableListView) return _southlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_southlist);
  }

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, isError: $isError, homelist: $homelist, trendinglist: $trendinglist, toplist: $toplist, tenselist: $tenselist, southlist: $southlist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality().equals(other._homelist, _homelist) &&
            const DeepCollectionEquality()
                .equals(other._trendinglist, _trendinglist) &&
            const DeepCollectionEquality().equals(other._toplist, _toplist) &&
            const DeepCollectionEquality()
                .equals(other._tenselist, _tenselist) &&
            const DeepCollectionEquality()
                .equals(other._southlist, _southlist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      const DeepCollectionEquality().hash(_homelist),
      const DeepCollectionEquality().hash(_trendinglist),
      const DeepCollectionEquality().hash(_toplist),
      const DeepCollectionEquality().hash(_tenselist),
      const DeepCollectionEquality().hash(_southlist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool isError,
      required final List<Downloads> homelist,
      required final List<Downloads> trendinglist,
      required final List<Downloads> toplist,
      required final List<Downloads> tenselist,
      required final List<Downloads> southlist}) = _$_Initial;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<Downloads> get homelist;
  @override
  List<Downloads> get trendinglist;
  @override
  List<Downloads> get toplist;
  @override
  List<Downloads> get tenselist;
  @override
  List<Downloads> get southlist;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
