class MovieModel {
  final int movieId;
  final String movieName;
  final String movieImagePath;
  final int moviePrice;

  MovieModel(
      {required this.movieId,
      required this.movieName,
      required this.movieImagePath,
      required this.moviePrice});

  static List<MovieModel> getMovies() {
    List<MovieModel> movieList = [];

    movieList.add(
      MovieModel(
          movieId: 1,
          movieName: 'Avatar',
          movieImagePath: 'assets/day8/ic_avatar.jpg',
          moviePrice: 24),
    );
    movieList.add(
      MovieModel(
          movieId: 2,
          movieName: 'Haryy Potter',
          movieImagePath: 'assets/day8/ic_harry.jpg',
          moviePrice: 30),
    );
    movieList.add(
      MovieModel(
          movieId: 3,
          movieName: 'Ironman',
          movieImagePath: 'assets/day8/ic_ironman.jpg',
          moviePrice: 35),
    );
    movieList.add(
      MovieModel(
          movieId: 4,
          movieName: 'Joker',
          movieImagePath: 'assets/day8/ic_joker.jpg',
          moviePrice: 35),
    );
    movieList.add(
      MovieModel(
          movieId: 5,
          movieName: 'Oppenheimer',
          movieImagePath: 'assets/day8/ic_oppenheimer.jpg',
          moviePrice: 42),
    );
    movieList.add(
      MovieModel(
          movieId: 6,
          movieName: 'Spiderman',
          movieImagePath: 'assets/day8/ic_spiderman.jpg',
          moviePrice: 30),
    );

    return movieList;
  }
}
