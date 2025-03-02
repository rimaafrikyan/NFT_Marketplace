import 'package:flutter/material.dart';
import 'package:nftmarketplacee/config/constants.dart';
import 'package:nftmarketplacee/widgets/glassmorphism.dart';

class NFTCardWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final int favoriteNumber;
  final VoidCallback onPress;

  const NFTCardWidget({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.favoriteNumber,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Glassmorphism(
      blur: 20,
      opacity: 0.1,
      radius: 20,
      child: SizedBox(
        width: 150,
        child: Column(
          children: [
            SizedBox(
              height: 200 * 0.8,
              width: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 12,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '$favoriteNumber',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
