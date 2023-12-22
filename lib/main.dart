


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netcart_flutter/view/Screens/BottomNavigationBar/BottomNavigationBar_screen.dart';
import 'package:netcart_flutter/view/Screens/Favourite/favourite_products_screen.dart';
import 'package:netcart_flutter/view/Screens/My%20Cart/My_Cart_Screen.dart';

import 'package:netcart_flutter/view/Screens/auth/Login.dart';
import 'package:netcart_flutter/view/Screens/auth/Sign%20up.dart';
import 'package:netcart_flutter/view/Screens/explore/explore_screen.dart';
import 'package:netcart_flutter/view/Screens/on_boarding/on_boarding_screen.dart';
import 'package:netcart_flutter/view/Screens/splash/splash_screen.dart';

void main (){
  runApp(MaterialApp(
    home: ExploreScreen(),
  )

);
}