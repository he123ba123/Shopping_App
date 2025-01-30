import 'package:app3/cart/view/screen/cart_screen.dart';
import 'package:app3/home/catogeryCard/home/view/screen/cards_screen.dart';
import 'package:app3/home/profile_user/view/screen/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigatorBar extends StatefulWidget {
  const BottomNavigatorBar({super.key});

  @override
  State<BottomNavigatorBar> createState() => _BottomNavigatorBarState();
}

class _BottomNavigatorBarState extends State<BottomNavigatorBar> {
  int selecteIndex = 0;
  // ignore: non_constant_identifier_names
  void BottomFunTap(int index) {
    setState(() {
      selecteIndex = index;
    });
    switch (index) {
      case 0:
        const CardView();
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const cartCatScreen()),
        );

        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const profileScreen()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: selecteIndex,
        onTap: BottomFunTap,
        items: const [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: 'Card',
              icon: Icon(
                Icons.shopping_cart,
              )),
          BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),
        ]);
  }
}
