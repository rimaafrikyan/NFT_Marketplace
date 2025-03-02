import 'package:flutter/material.dart';
import 'package:hexagon/hexagon.dart';
import 'package:nftmarketplacee/config/constants.dart';
import 'package:nftmarketplacee/models/bottom_bar_button.dart';
import 'package:nftmarketplacee/widgets/glassmorphism.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  void onChangeSelectedIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: screens[selectedIndex],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        onPressed: () {},
        child: HexagonWidget.pointy(
          width: 50,
          color: Colors.white.withOpacity(0.8),
          elevation: 8,
          child: const Center(
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 32,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: backgroundColor,
        child: Glassmorphism(
          blur: 20.0,
          opacity: 0.2,
          radius: 0,
          child: SizedBox(
            height: KHeightBottomBar,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: kDefaultExThinPadding,),
                BottomBarButton(
                  index: 0,
                  currenSelectedIndex: selectedIndex,
                  iconData: bottomBarButtons[0],
                  onPress: () {
                    onChangeSelectedIndex(0);
                  },
                ),
                BottomBarButton(
                  index: 1,
                  currenSelectedIndex: selectedIndex,
                  iconData: bottomBarButtons[1],
                  onPress: () {
                    onChangeSelectedIndex(1);
                  },
                ),
                const SizedBox(height: kDefaultFatPadding,),
                BottomBarButton(
                  index: 2,
                  currenSelectedIndex: selectedIndex,
                  iconData: bottomBarButtons[2],
                  onPress: () {
                    onChangeSelectedIndex(2);

                  },
                ),
                BottomBarButton(
                  index: 3,
                  currenSelectedIndex: selectedIndex,
                  iconData: bottomBarButtons[3],
                  onPress: () {
                    onChangeSelectedIndex(3);
                  },
                ),
                const SizedBox(width: kDefaultExThinPadding,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
