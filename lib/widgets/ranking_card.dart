
import 'package:flutter/material.dart';
import 'package:nftmarketplacee/config/constants.dart';

class RankingCard extends StatelessWidget {
  final int index;
  final String imageUrl;
  final String name;
  final double ether;
  final double percent;

  const RankingCard({
    super.key,
    required this.index,
    required this.imageUrl,
    required this.name,
    required this.ether,
    required this.percent,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
           '${index + 1}',
          style: TextStyle(
            color: Colors.white.withOpacity(0.8),
          ),
        ),
        const SizedBox(
          width: kDefaultExThinPadding,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            imageUrl,
            width: 50,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: kDefaultExThinPadding,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const Spacer(),
            Text(
              'view info',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            )
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              ' $ether  ETH',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            const Spacer(),
            Text(
              '$percent%',
              style: TextStyle(
                color:percent > 0 ? Colors.green :  Colors.red,
                fontSize: 14,
              ),
            )
          ],
        ),
      ],
    );
  }
}
