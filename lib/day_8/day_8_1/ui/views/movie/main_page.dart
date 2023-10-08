import 'package:flutter/material.dart';
import 'package:flutter_bootcamp2023/day_8/day_8_1/data/entity/movies_model.dart';
import 'package:flutter_bootcamp2023/day_8/day_8_1/ui/views/movie/detail_page.dart';

class Day8MovieMainPage extends StatefulWidget {
  const Day8MovieMainPage({super.key});

  @override
  State<Day8MovieMainPage> createState() => _Day8MovieMainPageState();
}

class _Day8MovieMainPageState extends State<Day8MovieMainPage> {
  List<MovieModel> movieList = [];

  Future<List<MovieModel>> uploadMovies() async {
    movieList = MovieModel.getMovies();
    return movieList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Movies')),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: FutureBuilder(
            future: uploadMovies(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var mList = snapshot.data;
                return GridView.builder(
                    itemCount: mList!.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 1 / 1.9,
                      // oranlaması
                    ),
                    itemBuilder: (context, index) {
                      var movList = mList[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Day8MovieDetailPage(model: movList),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          padding: EdgeInsets.all(20),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.asset(
                                    movList.movieImagePath,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '${movList.moviePrice} ₺',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(height: 10),
                                ElevatedButton(
                                    onPressed: () {}, child: Text('Sepet'))
                              ],
                            ),
                          ),
                        ),
                      );
                    });
              } else {
                return CircularProgressIndicator();
              }
            }),
      ),
    );
  }
}
