import 'package:flutter/material.dart';
import 'package:letterboxd/UI/photo.dart';
import 'package:provider/provider.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }
  AppBar _buildAppbar() {
    return AppBar(
      title: Text("Letterboxd",
        style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      ),
      centerTitle: true,
    );
  }
  Widget _buildBody(){
    return _buildMovieGridView();
  }
  Widget _buildMovieGridView(){
    return GridView.builder(
        padding: EdgeInsets.all(5),
        physics: BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 2/3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemCount: movieList.length,
        itemBuilder: (context, index){
          final item = movieList[index];
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(item,fit: BoxFit.cover,),
          );
        }
    );
  }
}
