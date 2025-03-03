import 'package:flutter/material.dart';
import 'package:nftmarketplacee/config/constants.dart';
import 'package:nftmarketplacee/widgets/dropdown_stats_button.dart';
import 'package:nftmarketplacee/widgets/glassmorphism.dart';
import 'package:nftmarketplacee/widgets/ranking_card.dart';
import 'package:nftmarketplacee/widgets/stats_button.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: kDefaultPadding,
          ),
          const Center(
            child: Text(
              "Stats screen",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StatsButton(
                title: 'Ranking',
                isActive: true,
                onPress: () {},
                iconData: Icons.stacked_bar_chart,
              ),
              StatsButton(
                title: 'Activity',
                isActive: false,
                onPress: () {},
                iconData: Icons.local_activity_outlined,
              ),
            ],
          ),
          const Divider(
            height: 1.5,
            color: Colors.grey,
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DropdownStatsButton(
                title: 'All categories',
                iconData: Icons.category,
                onPress: () {},
              ),
              DropdownStatsButton(
                title: 'Chains',
                iconData: Icons.share,
                onPress: () {},
              ),
            ],
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Glassmorphism(
            blur: 20,
            opacity: 0.1,
            radius: 20,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: rankingCards.length,
              padding: const EdgeInsets.symmetric(
                vertical: kDefaultPadding,
              ),
              itemBuilder: (_, index) => Container(
                height: 50,
                margin: const EdgeInsets.only(bottom: kDefaultPadding),
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: RankingCard(
                  index: index,
                  imageUrl: rankingCards[index].imageUrl,
                  name: rankingCards[index].name,
                  ether: rankingCards[index].ether,
                  percent: rankingCards[index].percent,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
