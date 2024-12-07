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
        title: Text('Flutter Layout Example'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Column
              Container(
                color: Colors.amber[100],
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text('Column Widget', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text('Item 1'),
                    Text('Item 2'),
                    Text('Item 3'),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Row
              Container(
                color: Colors.lightGreen[100],
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.home, size: 40, color: Colors.blue),
                    Icon(Icons.star, size: 40, color: Colors.green),
                    Icon(Icons.settings, size: 40, color: Colors.red),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // ListView
              Container(
                height: 200,
                color: Colors.blue[100],
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(Icons.list),
                      title: Text('List Item ${index + 1}'),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),

              // GridView
              Container(
                height: 200,
                color: Colors.orange[100],
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.purple[100],
                      child: Center(child: Text('Grid Item ${index + 1}')),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),

              // Padding
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  color: Colors.yellow[200],
                  padding: EdgeInsets.all(16),
                  child: Text('This container has padding inside it.'),
                ),
              ),
              SizedBox(height: 20),

              // AspectRatio
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  color: Colors.green[200],
                  child: Center(child: Text('AspectRatio 16:9')),
                ),
              ),
              SizedBox(height: 20),

              // Center
              Center(
                child: Container(
                  color: Colors.blue[200],
                  padding: EdgeInsets.all(16),
                  child: Text('This is centered content'),
                ),
              ),
              SizedBox(height: 20),

              // Expanded
              Container(
                color: Colors.red[100],
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(color: Colors.blue, height: 50, child: Center(child: Text('Expanded 1'))),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(color: Colors.green, height: 50, child: Center(child: Text('Expanded 2'))),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // SizedBox
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('This is a SizedBox button'),
                ),
              ),
              SizedBox(height: 20),

              // Wrap
              Container(
                color: Colors.pink[100],
                padding: EdgeInsets.all(10),
                child: Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: List.generate(5, (index) {
                    return Chip(
                      label: Text('Item ${index + 1}'),
                    );
                  }),
                ),
              ),
              SizedBox(height: 20),

              // Stack
              Container(
                color: Colors.teal[100],
                height: 200,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: 20,
                      child: Container(
                        color: Colors.red,
                        width: 100,
                        height: 100,
                        child: Center(child: Text('Top')),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      child: Container(
                        color: Colors.blue,
                        width: 100,
                        height: 100,
                        child: Center(child: Text('Bottom')),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
