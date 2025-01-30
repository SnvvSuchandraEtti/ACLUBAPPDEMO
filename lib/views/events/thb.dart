import 'package:flutter/material.dart';

class MyEPage extends StatefulWidget {
  const MyEPage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyEPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
leading: IconButton(
  icon: const Icon(Icons.arrow_back),
  onPressed: () {
    Navigator.pop(context); // This will navigate backward
  },
),

        title: Text("Programs"),
        backgroundColor: Colors.lightBlueAccent,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.grey],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return ProgramCard(
                      title: ["T-Connect", "Ignite Coder", "SkillUp Coder", "Become Coder", "Code Master", "Dev Academy"][index],
                      image: ["assets/Pdf.jpg", "assets/Pdf.jpg", "assets/Pdf.jpg", "assets/Pdf.jpg", "assets/Pdf.jpg", "assets/Pdf.jpg"][index],
                      description: [
                        "A platform to connect tech enthusiasts.",
                        "Ignite your coding skills with real projects.",
                        "Upskill and stay ahead in your career.",
                        "Become a proficient coder with our guidance.",
                        "Master coding with in-depth knowledge.",
                        "Join the academy to excel in development."
                      ][index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProgramCard extends StatelessWidget {
  final String title;
  final String image;
  final String description;

  const ProgramCard({super.key, required this.title, required this.image, required this.description});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double imageSize = screenWidth / 2; // Image size set to half the screen width

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          // Image container
          SizedBox(
            width: imageSize,
            height: imageSize,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(image, fit: BoxFit.cover),
            ),
          ),
          // Text container next to the image
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
