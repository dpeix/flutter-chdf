import 'package:flutter/material.dart';

void main() {
  runApp(const AlumniNetworkApp());
}

class AlumniNetworkApp extends StatelessWidget {
  const AlumniNetworkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Réseau Anciens Élèves',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Données brutes pour afficher des exemples d'utilisateurs et de publications
  final List<Map<String, dynamic>> alumniData = [
    {'name': 'Alice Dupont', 'promotion': 2015, 'profession': 'Développeuse Web'},
    {'name': 'Jean Martin', 'promotion': 2010, 'profession': 'Ingénieur'},
    {'name': 'Claire Lemoine', 'promotion': 2020, 'profession': 'Designer UX/UI'},
  ];

  final List<Map<String, dynamic>> posts = [
    {
      'author': 'Alice Dupont',
      'content': 'Salut tout le monde ! Quelqu’un participe à l’événement de samedi ?',
      'date': '2025-01-20'
    },
    {
      'author': 'Jean Martin',
      'content': 'Super d’être ici ! Voici une photo de notre promotion 2010.',
      'date': '2025-01-18'
    },
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget currentPage;

    switch (_selectedIndex) {
      case 0:
        currentPage = _buildHomePage();
        break;
      case 1:
        currentPage = _buildAlumniPage();
        break;
      case 2:
        currentPage = _buildSettingsPage();
        break;
      default:
        currentPage = _buildHomePage();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Réseau Anciens Élèves'),
        centerTitle: true,
      ),
      body: currentPage,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Anciens Élèves',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Paramètres',
          ),
        ],
      ),
    );
  }

  Widget _buildHomePage() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '👋 Bienvenue !',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Connectez-vous avec vos anciens camarades, échangez et participez aux événements.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 32),
            const Text(
              '📋 Dernières Publications',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ...posts.map((post) {
              return Card(
                margin: const EdgeInsets.only(bottom: 16),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        post['author'],
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(post['content']),
                      const SizedBox(height: 8),
                      Text(
                        post['date'],
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildAlumniPage() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '👥 Anciens Élèves',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          ...alumniData.map((alumnus) {
            return ListTile(
              leading: CircleAvatar(
                child: Text(alumnus['name'][0]),
              ),
              title: Text(alumnus['name']),
              subtitle: Text(
                  'Promotion ${alumnus['promotion']} - ${alumnus['profession']}'),
            );
          }).toList(),
        ],
      ),
    );
  }

  Widget _buildSettingsPage() {
    return const Center(
      child: Text('Page Paramètres'),
    );
  }
}
