import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Pilihan Game Persona',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PersonaGameForm(),
    );
  }
}

class PersonaGameForm extends StatefulWidget {
  @override
  _PersonaGameFormState createState() => _PersonaGameFormState();
}

class _PersonaGameFormState extends State<PersonaGameForm> {
  // Variabel untuk dropdown dan checkbox
  String? selectedGame;
  List<String> selectedPersonaGames = [];

  // Daftar game dalam seri Persona
  final List<String> personaGames = [
    'Persona 3',
    'Persona 4',
    'Persona 5',
    'Persona 5 Royal',
    'Persona 3 Portable',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Pilihan Game Persona'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Dropdown untuk memilih game
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Pilih Game Persona',
                border: OutlineInputBorder(),
              ),
              value: selectedGame,
              items: personaGames.map((game) {
                return DropdownMenuItem<String>(
                  value: game,
                  child: Text(game),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedGame = newValue;
                });
              },
            ),
            SizedBox(height: 20),

            // Checklist untuk memilih lebih dari satu game
            Text('Pilih beberapa game yang Anda sukai:'),
            Column(
              children: personaGames.map((game) {
                return CheckboxListTile(
                  title: Text(game),
                  value: selectedPersonaGames.contains(game),
                  onChanged: (bool? isSelected) {
                    setState(() {
                      if (isSelected == true) {
                        selectedPersonaGames.add(game);
                      } else {
                        selectedPersonaGames.remove(game);
                      }
                    });
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 20),

            // Tombol untuk menampilkan pilihan yang sudah dipilih
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Pilihan Anda'),
                      content: Text(
                        'Game yang dipilih: ${selectedGame ?? "Tidak ada"}\n\n'
                        'Game lain yang Anda suka: ${selectedPersonaGames.join(", ")}',
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Tutup'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Tampilkan Pilihan'),
            ),
          ],
        ),
      ),
    );
  }
}
