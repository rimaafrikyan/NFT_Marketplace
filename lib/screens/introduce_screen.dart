import 'package:flutter/material.dart';
import 'package:nftmarketplacee/config/constants.dart';
import 'package:nftmarketplacee/screens/home_screen.dart';
import 'package:nftmarketplacee/widgets/glassmorphism.dart';

class IntroduceScreen extends StatelessWidget {
  const IntroduceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/background.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
              child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  "Welcome to\nNFT Marketplace",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                ),
                child: Glassmorphism(
                  blur: 15,
                  opacity: 0.2,
                  radius: 20,
                  child: Container(
                    height: 150,
                    padding: const EdgeInsets.all(kDefaultPadding),
                    child: Column(
                      children: [
                        Text(
                          "Explore and Mint NFTs",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        Glassmorphism(
                          blur: 20,
                          opacity: 0.1,
                          radius: 50,
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: kDefaultExThinPadding,
                                  horizontal: kDefaultPadding),
                              child: const Text(
                                "Get started now",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ))
        ],
      ),
    );
  }
}
