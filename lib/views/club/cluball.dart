import 'package:flutter/material.dart';


// group Screen with ListView
class ClubsScreen extends StatefulWidget {
  const ClubsScreen({super.key});

  @override
  State<ClubsScreen> createState() => _ClubsScreenState();
}

class _ClubsScreenState extends State<ClubsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Map<String, dynamic>> groupItems = [
    {
      'title': 'Shivaji deshmukh',
      'speaker': 'Shiva shankar',
      'time': '3rd year',
      'duration': 'ECE',
      'profile': 'assets/NSS.png',
      'social': ['facebook', 'instagram', 'linkedin', 'web'],
      'organization': 'SHIVA',
    },
    {
      'title': 'Shivaji deshmukh',
      'speaker': 'Shiva shankar',
      'time': '3rd year',
      'duration': 'ECE',
      'profile': 'assets/NSS.png',
      'social': ['facebook', 'instagram', 'linkedin', 'web'],
      'organization': 'SHIVA',
    },
    {
      'title': 'babji deshmukh',
      'speaker': 'baba shankar',
      'time': '3rd year',
      'duration': 'CSE',
      'profile': 'assets/NSS.png',
      'social': ['facebook', 'instagram', 'linkedin', 'web'],
      'organization': 'BABA',
    },
    {
      'title': 'Shivaji Babu',
      'speaker': 'Shiva shyam',
      'time': '2nd year',
      'duration': 'EEE',
      'profile': 'assets/NSS.png',
      'social': ['facebook', 'instagram', 'linkedin', 'web'],
      'organization': 'SHIVARAM',
    },
        {
      'title': 'Shivaji deshmukh',
      'speaker': 'Shiva shankar',
      'time': '3rd year',
      'duration': 'ECE',
      'profile': 'assets/NSS.png',
      'social': ['facebook', 'instagram', 'linkedin', 'web'],
      'organization': 'SHIVA',
    },
    {
      'title': 'babji deshmukh',
      'speaker': 'baba shankar',
      'time': '3rd year',
      'duration': 'CSE',
      'profile': 'assets/NSS.png',
      'social': ['facebook', 'instagram', 'linkedin', 'web'],
      'organization': 'BABA',
    },
    {
      'title': 'Shivaji Babu',
      'speaker': 'Shiva shyam',
      'time': '2nd year',
      'duration': 'EEE',
      'profile': 'assets/NSS.png',
      'social': ['facebook', 'instagram', 'linkedin', 'web'],
      'organization': 'SHIVARAM',
    }
  ];
final List<Map<String, dynamic>> eventsItems = [

  {
      'title': 'Rama deshmukh',
      'speaker': 'Rama shankar',
      'time': '2nd year',
      'duration': 'AIML',
      'profile': 'assets/ROT.png',
      'social': ['facebook', 'instagram', 'linkedin', 'web'],
      'organization': 'Ram',
    },
    {
      'title': 'Shivaji deshmukh',
      'speaker': 'Shiva shankar',
      'time': '3rd year',
      'duration': 'ECE',
      'profile': 'assets/ROT.png',
      'social': ['facebook', 'instagram', 'linkedin', 'web'],
      'organization': 'SHIVA',
    },
    {
      'title': 'babji deshmukh',
      'speaker': 'baba shankar',
      'time': '3rd year',
      'duration': 'CSE',
      'profile': 'assets/ROT.png',
      'social': ['facebook', 'instagram', 'linkedin', 'web'],
      'organization': 'BABA',
    },
    {
      'title': 'Shivaji Babu',
      'speaker': 'Shiva shyam',
      'time': '2nd year',
      'duration': 'EEE',
      'profile': 'assets/ROT.png',
      'social': ['facebook', 'instagram', 'linkedin', 'web'],
      'organization': 'SHIVARAM',
    },
    {
      'title': 'babji deshmukh',
      'speaker': 'baba shankar',
      'time': '3rd year',
      'duration': 'CSE',
      'profile': 'assets/ROT.png',
      'social': ['facebook', 'instagram', 'linkedin', 'web'],
      'organization': 'BABA',
    },

    {
      'title': 'Shivaji Babu',
      'speaker': 'Shiva shyam',
      'time': '2nd year',
      'duration': 'EEE',
      'profile': 'assets/ROT.png',
      'social': ['facebook', 'instagram', 'linkedin', 'web'],
      'organization': 'SHIVARAM',
    },
        
];

final List<Map<String, dynamic>> aboutItems = [
      {
      'title': 'Shivaji Babu',
      'speaker': 'Shiva shyam',
      'time': '2nd year',
      'duration': 'EEE',
      'profile': 'assets/RED.jpg',
      'social': ['facebook', 'instagram', 'linkedin', 'web'],
      'organization': 'SHIVARAM',
    },
        {
      'title': 'Shivaji deshmukh',
      'speaker': 'Shiva shankar',
      'time': '3rd year',
      'duration': 'ECE',
      'profile': 'assets/RED.jpg',
      'social': ['facebook', 'instagram', 'linkedin', 'web'],
      'organization': 'SHIVA',
    },
    {
      'title': 'babji deshmukh',
      'speaker': 'baba shankar',
      'time': '3rd year',
      'duration': 'CSE',
      'profile': 'assets/RED.jpg',
      'social': ['facebook', 'instagram', 'linkedin', 'web'],
      'organization': 'BABA',
    },
    {
      'title': 'Shivaji Babu',
      'speaker': 'Shiva shyam',
      'time': '2nd year',
      'duration': 'EEE',
      'profile': 'assets/RED.jpg',
      'social': ['facebook', 'instagram', 'linkedin', 'web'],
      'organization': 'SHIVARAM',
    },
    {
      'title': 'Shivaji deshmukh',
      'speaker': 'Shiva shankar',
      'time': '3rd year',
      'duration': 'ECE',
      'profile': 'assets/RED.jpg',
      'social': ['facebook', 'instagram', 'linkedin', 'web'],
      'organization': 'SHIVA',
    },
    {
      'title': 'babji deshmukh',
      'speaker': 'baba shankar',
      'time': '3rd year',
      'duration': 'CSE',
      'profile': 'assets/RED.jpg',
      'social': ['facebook', 'instagram', 'linkedin', 'web'],
      'organization': 'BABA',
    },
];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  Widget buildtabCard(Map<String, dynamic> item) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(data: item),
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 3,
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(item['profile']),
          ),
          title: Text(
            item['title'],
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text('${item['duration']} | ${item['time']}'),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.orange),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: const Text(
    'LEO CLUB',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24,
      fontFamily: 'Roboto',
      letterSpacing: 1.5,
      color: Colors.white,
    ),
  ),
  centerTitle: true,
  backgroundColor: Colors.blueAccent,
  elevation: 4,
  shadowColor: Colors.black45,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(
      bottom: Radius.circular(20),
    ),
  ),
  actions: [
    IconButton(
      icon: const Icon(Icons.notifications),
      onPressed: () {
        // Add notification action here
      },
      tooltip: 'Notifications',
    ),

  ],
  bottom: TabBar(
    controller: _tabController,
    indicatorColor: Colors.white,
    indicatorWeight: 4.0,
    labelStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    unselectedLabelStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    labelColor: Colors.white,
    unselectedLabelColor: Colors.white70,
    tabs: const [
      Tab(
        text: 'Members',
        icon: Icon(Icons.group),
      ),
      Tab(
        text: 'Events',
        icon: Icon(Icons.calendar_month_outlined),
      ),
      Tab(
        text: 'About',
        icon: Icon(Icons.info),
      ),
    ],
  ),
),

     body: TabBarView(
  controller: _tabController,
  children: [
    // Members tab
    ListView.builder(
      itemCount: groupItems.length,
      itemBuilder: (context, index) {
        return buildtabCard(groupItems[index]);
      },
    ),
    // Events tab
    ListView.builder(
      itemCount: eventsItems.length,
      itemBuilder: (context, index) {
        return buildtabCard(eventsItems[index]);
      },
    ),
    // About tab
    ListView.builder(
      itemCount: aboutItems.length,
      itemBuilder: (context, index) {
        return buildtabCard(aboutItems[index]);
      },
    ),
  ],
),

    );
  }
}

// Detail Screen
class DetailScreen extends StatelessWidget {
  final Map<String, dynamic> data;

  const DetailScreen({super.key, required this.data});

  Widget buildSocialIcons(List<String> social) {
    final Map<String, IconData> icons = {
      'facebook': Icons.facebook,
      'instagram': Icons.airplanemode_on_outlined,
      'linkedin': Icons.camera_alt,
      'web': Icons.language,
    };

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: social
          .map(
            (platform) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Icon(icons[platform], size: 36, color: Colors.grey[700]),
        ),
      )
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          data['speaker'],
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {
              // Share functionality
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage(data['profile']),
            ),
            const SizedBox(height: 16),
            Text(
              data['organization'],
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            buildSocialIcons(data['social']),
          ],
        ),
      ),
    );
  }
}
