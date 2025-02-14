import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              // Ajoute ici la logique pour éditer le profil
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // En-tête : Photo de profil, Nom, Titre professionnel
              Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('https://www.example.com/avatar.jpg'),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nom: Doe',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Prénom: John',
                        style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            'Date de naissance: 2000-01-01',
                            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Âge: 25 ans',
                            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),

              // Section : Établissement fréquenté
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 10),
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Établissement(s) fréquenté(s)',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text('St Jean', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ),
              ),

              // Section : Filière de lycée
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 10),
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Filière de lycée',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text('Scientifique', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ),
              ),

              // Section : Adresse mail
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 10),
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Adresse mail',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text('john.doe@example.com', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ),
              ),

              // Section : Année de scolarité
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 10),
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Année de scolarité',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text('2025', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ),
              ),

              // Section : Biographie et description
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 10),
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Biographie',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Je suis un développeur passionné par la création d\'applications mobiles et web. '
                          'Je cherche constamment de nouveaux défis et de nouvelles opportunités.',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              // Section : Situation professionnelle actuelle
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 10),
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Situation professionnelle actuelle',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text('Développeur mobile', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ),
              ),

              // Section : Entreprise actuelle
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 10),
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Entreprise actuelle',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text('Tech Solutions', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              // Section : CP / Ville d’habitation / Pays
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 10),
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CP / Ville / Pays',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text('75001, Paris, France', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              // Section : Hobbies (avec émoticons)
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 10),
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hobbies',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.sports_soccer, size: 20, color: Colors.blue),
                            SizedBox(width: 10),
                            Text('Football', style: TextStyle(fontSize: 16)),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(Icons.music_note, size: 20, color: Colors.blue),
                            SizedBox(width: 10),
                            Text('Musique', style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              // Section : Poursuite d'études
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 10),
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Poursuite d\'études',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'École: Université de Paris\nNiveau: Master\nFormation: Développement mobile',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              // Section : Champs libre
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 10),
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Champs libre',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Je suis toujours à la recherche de nouvelles opportunités professionnelles et d\'apprentissage.',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              // Section : Réseaux sociaux
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 10),
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Réseaux sociaux',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text('Twitter: @johndoe', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ),
              ),

              // Section : Numéro de téléphone
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 10),
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Numéro de téléphone',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text('+33 1 23 45 67 89', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
