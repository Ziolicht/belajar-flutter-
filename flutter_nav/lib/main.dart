import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animein Aja',
      theme: ThemeData(
        brightness: Brightness.dark, // Menetapkan tema gelap
        primaryColor: Colors.deepPurple, // Warna utama (purple)
        scaffoldBackgroundColor: Color(0xFF121212), // Warna latar belakang gelap
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF1F1F1F), // Warna latar belakang AppBar
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20), // Warna teks AppBar
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF1F1F1F), // Latar belakang BottomNavigationBar
          selectedItemColor: Colors.purpleAccent, // Warna item yang dipilih
          unselectedItemColor: Colors.white54, // Warna item yang tidak dipilih
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white, fontSize: 18),
          bodyLarge: TextStyle(color: Colors.white70),
        ),
      ),
      home: AnimeinAjaNavigation(),
    );
  }
}

class AnimeinAjaNavigation extends StatefulWidget {
  @override
  _AnimeinAjaNavigationState createState() => _AnimeinAjaNavigationState();
}

class _AnimeinAjaNavigationState extends State<AnimeinAjaNavigation> {
  int _currentIndex = 0;

  // Daftar halaman untuk setiap tab
  final List<Widget> _pages = [
    HomePage(),
    SearchPage(),
    WatchPage(),
    NotificationsPage(),
    ProfilePage(),
  ];

  // Fungsi untuk mengubah halaman berdasarkan index tab
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animein Aja'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              setState(() {
                _currentIndex = 3; // Pindah ke halaman notifikasi
              });
            },
          ),
        ],
      ),
      body: _pages[_currentIndex], // Menampilkan halaman sesuai index
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped, // Menangani perubahan tab
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow),
            label: 'Watch',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

// Halaman Home - Menampilkan daftar anime populer atau trending
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Home Page - Daftar Anime Trending',
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
    );
  }
}

// Halaman Search - Mencari anime
class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Search Page - Cari Anime',
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
    );
  }
}

// Halaman Watch - Menonton anime
class WatchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Watch Page - Nonton Anime',
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
    );
  }
}

// Halaman Notifications - Notifikasi update anime terbaru
class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Notifications Page - Notifikasi Anime',
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
    );
  }
}

// Halaman Profile - Profil pengguna
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile Page - Profil Pengguna',
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
    );
  }
}
