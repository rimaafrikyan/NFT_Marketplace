import 'package:flutter/material.dart';
import 'package:nftmarketplacee/screens/home_screen.dart';

class MusicScreen extends StatelessWidget {
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
      'title': 'Not Like Us ',
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
      'artist': 'Migos ',
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
      'title': 'Not Like Us ',
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
      'artist': 'Migos ',
      'price': '0.7 ETH',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xfff4f6f8),
      backgroundColor: Color(0xff211134),
       appBar: AppBar(
        title: Text(
          'Music',
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
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: musicItems.length,
        itemBuilder: (context, index) {
          final item = musicItems[index];
          return MusicItemLine(
            image: item['image']!,
            title: item['title']!,
            artist: item['artist']!,
            price: item['price']!,
          );
        },
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
    return Container(
      margin: EdgeInsets.only(bottom: 8.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
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
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),
        subtitle: Text(
          artist,
          style: TextStyle(
            fontSize: 14.0,
            color: const Color.fromARGB(255, 214, 211, 211),
          ),
        ),
        trailing: Text(
          price,
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 140, 156, 169),
          ),
        ),
      ),
    );
  }
}