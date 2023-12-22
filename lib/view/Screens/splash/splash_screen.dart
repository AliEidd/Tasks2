import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:netcart_flutter/view_model/utiles/assests.dart';
import 'package:netcart_flutter/view_model/utiles/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(Appassest.carrot,color: Colors.white,height: 90,width: 90,),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text('nectar',style: TextStyle(color: AppColors.white,fontSize: 57),),
                  Text('o n l i n e  g r o c e r i e t',style: TextStyle(color: AppColors.white,fontSize: 15)),
                ],
              )

            ],
          )
        ],
      ),


    );
  }
}
