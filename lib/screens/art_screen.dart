import 'package:flutter/material.dart';
import 'package:nftmarketplacee/screens/home_screen.dart';

class ArtScreen extends StatefulWidget {
  const ArtScreen({super.key});

  @override
  State<ArtScreen> createState() => _ArtScreenState();
}

class _ArtScreenState extends State<ArtScreen> {
  final List<Map<String, String>> artItems = [
    {
      'image': 'assets/art1.jpg',
      'title': 'Starry Night',
      'artist': 'Van Gogh',
      'price': '1.5 ETH',
    },
    {
      'image': 'assets/art2.jpg',
      'title': 'Mona Lisa',
      'artist': 'Leonardo da Vinci',
      'price': '2.0 ETH',
    },
    {
      'image': 'assets/art3.jpg',
      'title': 'The Scream',
      'artist': 'Edvard Munch',
      'price': '1.2 ETH',
    },
    {
      'image': 'assets/art6.jpg',
      'title': 'The Kiss',
      'artist': 'Gustav Klimt',
      'price': '1.9 ETH',
    },
    {
      'image': 'assets/art4.jpg',
      'title': 'Girl with a Pearl Earring',
      'artist': 'Johannes Vermeer',
      'price': '1.8 ETH',
    },
    {
      'image': 'assets/art5.jpg',
      'title': 'The Persistence of Memory',
      'artist': 'Salvador Dalí',
      'price': '2.5 ETH',
    },
  ];

  final TextEditingController _searchController = TextEditingController();
  List<Map<String, String>> filteredArtItems = [];

  @override
  void initState() {
    super.initState();
    filteredArtItems = List.from(artItems);
    _searchController.addListener(_filterArtItems);
  }

  void _filterArtItems() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      filteredArtItems = artItems
          .where((item) =>
              item['title']!.toLowerCase().contains(query) ||
              item['artist']!.toLowerCase().contains(query))
          .toList();
    });
  }

  @override
  void dispose() {
    _searchController.removeListener(_filterArtItems);
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 11, 13, 26),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            'Art NFTs',
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: "Search artworks...",
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

            // Art Grid
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 0.7,
                ),
                itemCount: filteredArtItems.length,
                itemBuilder: (context, index) {
                  final item = filteredArtItems[index];
                  return ArtItemCard(
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
      ),
    );
  }
}

class ArtItemCard extends StatelessWidget {
  final String image;
  final String title;
  final String artist;
  final String price;

  const ArtItemCard({
    required this.image,
    required this.title,
    required this.artist,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      color: Colors.white.withOpacity(0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Art Image
          Expanded(
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(12.0)),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),

          // Art Details
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  'By $artist',
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
