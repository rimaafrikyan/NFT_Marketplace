import 'package:flutter/material.dart';
import 'package:nftmarketplacee/config/constants.dart';
import 'package:nftmarketplacee/widgets/glassmorphism.dart';

class DropdownStatsButton extends StatelessWidget {
  final String title;
  final IconData iconData;
  final VoidCallback onPress;

  const DropdownStatsButton({
    super.key,
    required this.title,
    required this.iconData,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Glassmorphism(
        blur: 20,
        opacity: 0.2,
        radius: 40,
        child: Container(
          height: 50,
          padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: kDefaultExThinPadding),
          child: Row(
            children: [
              Icon(
                iconData,
                size: 20,
                color: Colors.white.withOpacity(0.8),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Icon(
                Icons.keyboard_arrow_down,
                size: 20,
                color: Colors.white.withOpacity(0.8),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
