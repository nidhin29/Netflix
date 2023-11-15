// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:netflix_app/application/downloads/downloads_bloc.dart' as _i8;
import 'package:netflix_app/application/fast_laugh/fastlaugh_bloc.dart' as _i9;
import 'package:netflix_app/application/home/home_bloc.dart' as _i10;
import 'package:netflix_app/application/new_and_hot/newandhot_bloc.dart' as _i5;
import 'package:netflix_app/application/search/search_bloc.dart' as _i11;
import 'package:netflix_app/domain/downloads/i_downloads_repo.dart' as _i3;
import 'package:netflix_app/domain/search/search_service.dart' as _i6;
import 'package:netflix_app/infrastructure/downloads/downloads_reposi.dart'
    as _i4;
import 'package:netflix_app/infrastructure/search/search_impl.dart' as _i7;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IDownloadsRepo>(() => _i4.DownloadsRepository());
    gh.factory<_i5.NewandhotBloc>(
        () => _i5.NewandhotBloc(gh<_i3.IDownloadsRepo>()));
    gh.lazySingleton<_i6.SearchService>(() => _i7.SearchImpl());
    gh.factory<_i8.DownloadsBloc>(
        () => _i8.DownloadsBloc(gh<_i3.IDownloadsRepo>()));
    gh.factory<_i9.FastlaughBloc>(
        () => _i9.FastlaughBloc(gh<_i3.IDownloadsRepo>()));
    gh.factory<_i10.HomeBloc>(() => _i10.HomeBloc(gh<_i3.IDownloadsRepo>()));
    gh.factory<_i11.SearchBloc>(() => _i11.SearchBloc(
          gh<_i3.IDownloadsRepo>(),
          gh<_i6.SearchService>(),
        ));
    return this;
  }
}
