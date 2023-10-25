class Movie {
  String title;
  String original_title;
  String backdrop_path;
  double vote_average;
  String overview;

  Movie({
    required this.title,
    required this.original_title,
    required this.backdrop_path,
    required this.vote_average,
    required this.overview,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        title: json["title"]??"Movie title",
        original_title: json["original_title"],
        backdrop_path: json["poster_path"],
        vote_average: json["vote_average"],
        overview: json["overview"]);
  }
}
