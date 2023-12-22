import 'package:flutter/material.dart';
import 'package:netcart_flutter/view_model/utiles/colors.dart';

import '../Favourite/favourite_products_screen.dart';
import '../My Cart/My_Cart_Screen.dart';



class BottomNavigationBarScreen extends StatefulWidget {
   BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  List<Widget> screens  = [
    FavouriteProductsScreen(),
    MyCartScreen(),
  ];

  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        height: 70,
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex=value;
            });
          },
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          unselectedItemColor: AppColors.black,
          selectedItemColor: AppColors.green,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
                icon:Icon(Icons.shopping_basket_outlined,size: 30,),
                label: 'Shop'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.manage_search,size: 30),
                label: 'Explore'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined,size: 30),
                label: 'Cart'
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.favorite_border,size: 30),
                label: 'Favourite'
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.person_outline,size: 30),
                label: 'Account'
            ),
          ],
        ),
      ),

    );
  }
}
