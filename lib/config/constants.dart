import 'package:flutter/material.dart';

import 'package:nftmarketplacee/models/nft_card_model.dart';
import 'package:nftmarketplacee/models/ranking_card_model.dart';
import 'package:nftmarketplacee/models/theme_card_model.dart';
import 'package:nftmarketplacee/screens/nft_marketplace.dart';
import 'package:nftmarketplacee/screens/stats_screen.dart';

const double kWidthSideMenu = 100.0;
const double kHeightAppBar = 100.0;
const double KHeightBottomBar = 60.0;

// screens
const screens = [NFTMarketplaceScreen(), StatsScreen()];

// Color
const Color primaryColor = Color.fromARGB(255, 110, 116, 241);
const Color backgroundColor =Color.fromARGB(255, 11, 13, 26);

// Padding
const double kDefaultExThinPadding = 8.0;
const double kDefaultThinPadding = 12.0;
const double kDefaultPadding = 16.0;
const double kDefaultWidePadding = 24.0;
const double kDefaultFatPadding = 40.0;

const bottomBarButtons = [
  Icons.home_outlined,
  Icons.stacked_bar_chart_outlined,
  Icons.search_outlined,
  Icons.person_outline_outlined,
];

final themeCardModels = [
  ThemeCardModel(
    imageUrl: "assets/art.jpg",
    title: "Art",
  ),
  ThemeCardModel(
    imageUrl: "assets/music.jpg",
    title: "Music",
  ),
  ThemeCardModel(
    imageUrl: "assets/Fashion.jpg",
    title: "Fashion",
  ),
];

final trendingCards = [
  NftCardModel(
    name: 'Person',
    imageUrl: 'assets/nft_sell_2.jpg',
    favoriteNumber: 1000,
  ),
  NftCardModel(
    name: 'Person',
    imageUrl: 'assets/nft_sell_4.jpg',
    favoriteNumber: 700,
  ),
  NftCardModel(
    name: 'Person',
    imageUrl: 'assets/nft2.jpg',
    favoriteNumber: 900,
  ),
  NftCardModel(
    name: 'Person',
    imageUrl: 'assets/nft3.jpg',
    favoriteNumber: 200,
  ),
];
final topsellCards = [
  NftCardModel(
    name: 'Person',
    imageUrl: 'assets/nft_sell_1.jpg',
    favoriteNumber: 1000,
  ),
  NftCardModel(
    name: 'Person',
    imageUrl: 'assets/nft_sell_2.jpg',
    favoriteNumber: 700,
  ),
  NftCardModel(
    name: 'Person',
    imageUrl: 'assets/nft_sell_3.jpg',
    favoriteNumber: 900,
  ),
  NftCardModel(
    name: 'Person',
    imageUrl: 'assets/nft_sell_4.jpg',
    favoriteNumber: 200,
  ),
  NftCardModel(
    name: 'Person',
    imageUrl: 'assets/nft_sell_5.jpg',
    favoriteNumber: 200,
  ),
];

final rankingCards = [
  RankingCardModel(
    name: 'Famous Person',
    imageUrl: 'assets/nft_sell_1.jpg',
    ether: 3331.1,
    percent: 38.9,
  ),
  RankingCardModel(
    name: 'Famous Person',
    imageUrl: 'assets/nft_sell_2.jpg',
    ether: 1111.1,
    percent: 44.9,
  ),
  RankingCardModel(
    name: 'Famous Person',
    imageUrl: 'assets/nft_sell_3.jpg',
    ether: 2351.1,
    percent: 21.9,
  ),
  RankingCardModel(
    name: 'Famous Person',
    imageUrl: 'assets/nft_sell_4.jpg',
    ether: 765563.1,
    percent: -28.9,
  ),
  RankingCardModel(
    name: 'Famous Person',
    imageUrl: 'assets/nft_sell_5.jpg',
    ether: 22341.1,
    percent: -8.9,
  ),
  RankingCardModel(
    name: 'Famous Person',
    imageUrl: 'assets/nft_sell_2.jpg',
    ether: 22341.1,
    percent: -3.9,
  ),
  RankingCardModel(
    name: 'Famous Person',
    imageUrl: 'assets/nft_sell_3.jpg',
    ether: 22341.1,
    percent: 77.9,
  ),
  RankingCardModel(
    name: 'Famous Person',
    imageUrl: 'assets/nft2.jpg',
    ether: 22341.1,
    percent: 1.9,
  ),
  RankingCardModel(
    name: 'Famous Person',
    imageUrl: 'assets/nft3.jpg',
    ether: 22341.1,
    percent: -2.9,
  ),
  RankingCardModel(
    name: 'Famous Person',
    imageUrl: 'assets/nft_sell_1.jpg',
    ether: 22341.1,
    percent: 18.9,
  ),
];
