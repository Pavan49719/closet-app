import 'package:closet/screens/fast_fashion_page.dart';
import 'package:closet/screens/chat_page.dart';
import 'package:closet/screens/favorite_page.dart';
import 'package:closet/screens/profile_page.dart';
import 'package:closet/screens/search_page.dart';
import 'package:closet/screens/shopping_bag_page.dart';
import 'package:closet/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class MainHomeScreen extends StatefulWidget {
  MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 0) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => MainHomeScreen()));
    } else if (index == 1) {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const ShoppingBagPage()));
    } else if (index == 2) {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const FastFashionPage()));
    } else if (index == 3) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const ChatPage()));
    } else if (index == 4) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const ProfilePage()));
    }
  }

  var _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Collections page"),
      ),
      drawer: MainDrawer(),
      body: Row(
        children: [
          Container(
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchPage()));
              },
              icon: Icon(Icons.search),
            ),
          ),
          Container(
            child: IconButton(
              icon: Icon(
                Icons.account_circle,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
            ),
          ),
          Container(
            child: IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FavoritePage()));
              },
            ),
          ),
          Container(
            child: IconButton(
              icon: Icon(Icons.shopping_bag),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ShoppingBagPage()));
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              color: Color.fromARGB(255, 46, 145, 244),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Color.fromARGB(255, 46, 145, 244),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore_outlined,
              color: Color.fromARGB(255, 46, 145, 244),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble_outline_rounded,
              color: Color.fromARGB(255, 46, 145, 244),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
              color: Color.fromARGB(255, 46, 145, 244),
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
