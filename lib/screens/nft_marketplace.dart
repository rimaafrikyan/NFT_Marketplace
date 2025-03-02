import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nftmarketplacee/config/constants.dart';
import 'package:nftmarketplacee/models/nft_card_widget.dart';
import 'package:nftmarketplacee/screens/music_screen.dart';
import 'package:nftmarketplacee/widgets/glassmorphism.dart';
import 'package:nftmarketplacee/widgets/theme_card_widget.dart';
import 'package:nftmarketplacee/screens/art_screen.dart'; 

class NFTMarketplaceScreen extends StatelessWidget {
  const NFTMarketplaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: kDefaultPadding,
          ),
          const Center(
            child: Text(
              "NFT Marketplace",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 150,
            margin: const EdgeInsets.symmetric(
                vertical: kDefaultPadding, horizontal: kDefaultExThinPadding),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: themeCardModels.length,
              itemBuilder: (_, index) => Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ThemeCardWidget(
                  imageUrl: themeCardModels[index].imageUrl,
                  title: themeCardModels[index].title,
                  onPress: () {
                    if (themeCardModels[index].title == "Art") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  ArtScreen(),
                        ),
                      );
                    }else if (themeCardModels[index].title == "Music") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MusicScreen(),
                        ),
                      );
                    }
                  },
                ),
              ),
            ),
          ),
          const TitleWidget(title: "Trending collections"),
          Container(
            height: 200,
            margin: const EdgeInsets.symmetric(
                vertical: kDefaultPadding, horizontal: kDefaultExThinPadding),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: trendingCards.length,
              itemBuilder: (_, index) => Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: NFTCardWidget(
                  imageUrl: trendingCards[index].imageUrl,
                  favoriteNumber: trendingCards[index].favoriteNumber,
                  name: trendingCards[index].name,
                  onPress: () {},
                ),
              ),
            ),
          ),
          const TitleWidget(title: "Top seller"),
          Container(
            height: 200,
            margin: const EdgeInsets.symmetric(
                vertical: kDefaultPadding, horizontal: kDefaultExThinPadding),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: topsellCards.length,
              itemBuilder: (_, index) => Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: NFTCardWidget(
                  imageUrl: topsellCards[index].imageUrl,
                  favoriteNumber: topsellCards[index].favoriteNumber,
                  name: topsellCards[index].name,
                  onPress: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  final String title;

  const TitleWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}