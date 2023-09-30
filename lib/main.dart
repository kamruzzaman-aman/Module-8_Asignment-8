import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: OrientationBuilder(builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return PortraitMode();
        } else {
          return LandscapeMode();
        }
      }),
    );
  }
}

Widget PortraitMode() {
  return SingleChildScrollView(
    child: Center(
      child: Column(children: [
        ///image circle way================01
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AspectRatio(
            aspectRatio: 16 / 16,
            child: ClipOval(
              child: Image.network(
                'https://t3.ftcdn.net/jpg/05/66/82/02/360_F_566820278_N8xRuEKEdFsCJpywmSg1TmFdCDNo2jkn.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(
            'John Doe',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
        ),

        SizedBox(
          height: 200,
          child: GridView.builder(
            // controller: ScrollController(keepScrollOffset: false),
            itemCount: 12,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.all(6.0),
                child: Image.network(
                  'https://www.australiangeographic.com.au/wp-content/uploads/2018/06/orange-bellied-parrot-500x294.jpg',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
              );
            },
          ),
        )
      ]),
    ),
  );
}

Widget LandscapeMode() {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: AspectRatio(
          aspectRatio: 16 / 16,
          child: ClipOval(
            child: Image.network(
              'https://t3.ftcdn.net/jpg/05/66/82/02/360_F_566820278_N8xRuEKEdFsCJpywmSg1TmFdCDNo2jkn.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Expanded(
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'John Doe',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
            ),
      
            SizedBox(
              height: 180,
              child: GridView.builder(
                itemCount: 12,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.network(
                      'https://www.australiangeographic.com.au/wp-content/uploads/2018/06/orange-bellied-parrot-500x294.jpg',
                      fit: BoxFit.cover,
                      width: 100,
                      height: 100,
                    ),
                  );
                },
              ),
            )
          ]),
        ),
      )
    ],
  );
}
