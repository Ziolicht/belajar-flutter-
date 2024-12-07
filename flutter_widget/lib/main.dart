import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Widgets Example'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.amber,
              child: Text(
                'This is a Container widget!',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 20),

            // Row with Icon and Text
            Row(
              children: [
                Icon(Icons.home, size: 40, color: Colors.blue),
                SizedBox(width: 10),
                Text(
                  'This is a Row with an Icon',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Column with Texts
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('This is a Column:', style: TextStyle(fontSize: 18)),
                Text('First Line', style: TextStyle(fontSize: 16)),
                Text('Second Line', style: TextStyle(fontSize: 16)),
              ],
            ),
            SizedBox(height: 20),

            // ElevatedButton
            ElevatedButton(
              onPressed: () {
                print('Button pressed!');
              },
              child: Text('Press Me'),
            ),
            SizedBox(height: 20),

            // Image from URL
            Image.network(
              ('d:\Picture\Cosplay IMG\IMG_20240211_174232.jpg'),
              height: 150,
              width: 150,
            ),
            SizedBox(height: 20),

            // CircleAvatar
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            ),
          ],
        ),
      ),
    );
  }
}
