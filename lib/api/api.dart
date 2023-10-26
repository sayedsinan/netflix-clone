import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:netflixxclone/constant/constant.dart';
import 'package:netflixxclone/models/movie.dart';

class Api {
  static const _trendingurl =
      'https://api.themoviedb.org/3/trending/movie/day?api_key=${Constan.apiKey}';
  static const _topRatedUrl =
      'https://api.themoviedb.org/3/movie/top_rated?api_key=${Constan.apiKey}';

  static const _upcomgurl =
      'https://api.themoviedb.org/3/movie/upcoming?api_key=dae8fecb5a88060e62df175f22c61eba';
  static const _previewurl =
      'https://api.themoviedb.org/3/discover/movie?api_key=dae8fecb5a88060e62df175f22c61eba';
  Future<List<Movie>> getTrendingMovies() async {
    final response = await http.get(Uri.parse(_trendingurl));
    if (response.statusCode == 200) {
      final decodedData = jsonDecode(response.body)['results'] as List;
      // print(decodedData);
      return decodedData.map((movieData) => Movie.fromJson(movieData)).toList();
    } else {
      throw Exception('Something happened');
    }
  }

  Future<List<Movie>> getToprated() async {
    final response = await http.get(Uri.parse(_topRatedUrl));
    if (response.statusCode == 200) {
      final decodedData = jsonDecode(response.body)['results'] as List;
      // print(decodedData);
      return decodedData.map((movieData) => Movie.fromJson(movieData)).toList();
    } else {
      throw Exception('Something happened');
    }
  }

 Future<List<Movie>> getpreview() async {
  final response = await http.get(Uri.parse(_previewurl));
  if (response.statusCode == 200) {
    final decodedData = jsonDecode(response.body)['results'] as List;
    // print('Preview Data: $decodedData'); // Add this line for debugging
    return decodedData.map((movieData) => Movie.fromJson(movieData)).toList();
  } else {
    throw Exception('Something happened');
  }
}

Future<List<Movie>> getupcoming() async {
  final response = await http.get(Uri.parse(_upcomgurl));
  if (response.statusCode == 200) {
    final decodedData = jsonDecode(response.body)['results'] as List;
    // print('Upcoming Data: $decodedData'); // Add this line for debugging
    return decodedData.map((movieData) => Movie.fromJson(movieData)).toList();
  } else {
    throw Exception('Something happened');
  }
}

}
