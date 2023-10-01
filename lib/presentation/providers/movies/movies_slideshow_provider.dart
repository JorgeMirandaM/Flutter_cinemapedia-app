


import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/presentation/providers/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


//Provider de solo lectura -Provider-
final moviesSlidesshowProvider = Provider<List<Movie>>((ref) {

  final nowPlayingMovies = ref.watch(nowPlayingMoviesProvider);

  if (nowPlayingMovies.isEmpty) return [];

  return nowPlayingMovies.sublist(0,6);

});