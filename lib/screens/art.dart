import 'package:flutter/material.dart';
import 'package:nftmarketplacee/screens/home_screen.dart';

class ArtScreen extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff211134),
       appBar: AppBar(
        title: Text(
          'Art',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true, // Կենտրոնացնել տեքստը
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white), // Ավելացնել 아이քոն
          onPressed: () {
            // Նավիգացիա դեպի Home էջ
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, 
            crossAxisSpacing: 16.0, 
            mainAxisSpacing: 16.0, 
            childAspectRatio: 0.7, 
          ),
          
          itemCount: artItems.length,
          itemBuilder: (context, index) {
            final item = artItems[index];
            return ArtItemCard(
              image: item['image']!,
              title: item['title']!,
              artist: item['artist']!,
              price: item['price']!,
            );
          },
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
      color:  Colors.white.withOpacity(0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12.0)),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  'By $artist',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: const Color.fromARGB(255, 188, 182, 182),
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 180, 175, 175),

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
