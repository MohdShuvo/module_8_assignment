import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? PortraitLayout()
              : LandscapeLayout();
        },
      ),
    );
  }
}

class PortraitLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            child: CircleAvatar(
              radius: 200,
              backgroundImage: Image.network(
                'https://images.squarespace-cdn.com/content/v1/500f7a14c4aa5f5d4ca1ac08/1455220490474-KATUX6NM1QAK9QDA2WQE/image-asset.jpeg',
                fit: BoxFit.cover,
              ).image,
            ),
          ),
        SizedBox(height: 16),
        Text(
          'Camera Gear',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
        SizedBox(height: 16),
        GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemBuilder: (context, index) {
            return Image.network('https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bGVuc3xlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80_$index.jpg');
          },
          itemCount: 6,
        ),
      ],
      )
    );
  }
}

class LandscapeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            child: CircleAvatar(
              radius: 150,
              backgroundImage:  Image.network(
                'https://images.squarespace-cdn.com/content/v1/500f7a14c4aa5f5d4ca1ac08/1455220490474-KATUX6NM1QAK9QDA2WQE/image-asset.jpeg',
                fit: BoxFit.cover,
              ).image,
            ),
          ),
          Expanded(
            child: Column (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Camera Gear',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
                SizedBox(height: 16),
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  itemBuilder: (context, index) {
                    return Image.network('https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bGVuc3xlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80_$index.jpg');
                  },
                  itemCount: 6,
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}

