import 'package:flutter/material.dart';
import 'package:nftmarketplacee/screens/home_screen.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({super.key});

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  final List<Map<String, String>> musicItems = [
    {
      'image': 'assets/music1.jpg',
      'title': 'Call Out My Name',
      'artist': 'The Weeknd',
      'price': '0.5 ETH',
    },
    {
      'image': 'assets/music2.jpg',
      'title': 'Torna a casa',
      'artist': 'Måneskin',
      'price': '0.8 ETH',
    },
    {
      'image': 'assets/music3.jpg',
      'title': 'Not Like Us',
      'artist': 'Kendrick Lamar',
      'price': '1.2 ETH',
    },
    {
      'image': 'assets/music4.jpg',
      'title': 'Bécane',
      'artist': 'Yamê',
      'price': '0.7 ETH',
    },
    {
      'image': 'assets/music5.jpg',
      'title': 'The Door',
      'artist': 'Teddy Swims',
      'price': '0.7 ETH',
    },
    {
      'image': 'assets/music6.jpg',
      'title': 'Usikvarulod',
      'artist': 'Megi Gogitidze',
      'price': '0.7 ETH',
    },
    {
      'image': 'assets/music7.jpg',
      'title': 'Notice Me',
      'artist': 'Migos',
      'price': '0.7 ETH',
    },
    {
      'image': 'assets/music1.jpg',
      'title': 'Call Out My Name',
      'artist': 'The Weeknd',
      'price': '0.5 ETH',
    },
    {
      'image': 'assets/music2.jpg',
      'title': 'Torna a casa',
      'artist': 'Måneskin',
      'price': '0.8 ETH',
    },
    {
      'image': 'assets/music3.jpg',
      'title': 'Not Like Us',
      'artist': 'Kendrick Lamar',
      'price': '1.2 ETH',
    },
    {
      'image': 'assets/music4.jpg',
      'title': 'Bécane',
      'artist': 'Yamê',
      'price': '0.7 ETH',
    },
    {
      'image': 'assets/music5.jpg',
      'title': 'The Door',
      'artist': 'Teddy Swims',
      'price': '0.7 ETH',
    },
    {
      'image': 'assets/music6.jpg',
      'title': 'Usikvarulod',
      'artist': 'Megi Gogitidze',
      'price': '0.7 ETH',
    },
    {
      'image': 'assets/music7.jpg',
      'title': 'Notice Me',
      'artist': 'Migos',
      'price': '0.7 ETH',
    },
  ];

  final TextEditingController _searchController = TextEditingController();
  List<Map<String, String>> filteredMusicItems = [];

  @override
  void initState() {
    super.initState();
    filteredMusicItems = List.from(musicItems);
    _searchController.addListener(_filterMusicItems);
  }

  void _filterMusicItems() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      filteredMusicItems = musicItems
          .where((item) =>
              item['title']!.toLowerCase().contains(query) ||
              item['artist']!.toLowerCase().contains(query))
          .toList();
    });
  }

  @override
  void dispose() {
    _searchController.removeListener(_filterMusicItems);
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 11, 13, 26),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text(
            'Music NFTs',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
        ),
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: "Search music...",
                hintStyle: const TextStyle(color: Colors.white54),
                filled: true,
                fillColor: Colors.white.withOpacity(0.1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: const Icon(Icons.search, color: Colors.white54),
              ),
              style: const TextStyle(color: Colors.white),
            ),
          ),

          // Music List
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              itemCount: filteredMusicItems.length,
              itemBuilder: (context, index) {
                final item = filteredMusicItems[index];
                return MusicItemLine(
                  image: item['image']!,
                  title: item['title']!,
                  artist: item['artist']!,
                  price: item['price']!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MusicItemLine extends StatelessWidget {
  final String image;
  final String title;
  final String artist;
  final String price;

  const MusicItemLine({
    required this.image,
    required this.title,
    required this.artist,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        margin: const EdgeInsets.only(bottom: 8.0),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4.0,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              image,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          subtitle: Text(
            artist,
            style: const TextStyle(
              fontSize: 14.0,
              color: Colors.white70,
            ),
          ),
          trailing: Text(
            price,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: Colors.white70,
            ),
          ),
        ),
      ),
    );
  }
}
