import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:learn_flutter/bundle_image.dart';

class StaggeredGridExample extends StatefulWidget {
  StaggeredGridExample({Key key}) : super(key: key);

  @override
  _StaggeredGridExampleState createState() => _StaggeredGridExampleState();
}

class _StaggeredGridExampleState extends State<StaggeredGridExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Staggered Grid View'),
      ),
      body: StaggeredGridView.countBuilder(
        itemCount: images.length,
        crossAxisCount: 4,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        itemBuilder: (context, index) => ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Image.network(
            images[index],
            fit: BoxFit.cover,
          ),
        ),
        staggeredTileBuilder: (index) =>
            StaggeredTile.count(2, index.isEven ? 2 : 1),
      ),
    );
  }
}
