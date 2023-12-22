import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:netcart_flutter/view_model/utiles/assests.dart';
import 'package:netcart_flutter/view_model/utiles/colors.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(Appassest.backGroundImage),fit: BoxFit.cover)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(Appassest.carrot,color: AppColors.white,width: 60,height: 60,),
            SizedBox(height: 15,),
            Container(

              height: 80,
                width: 170,
                child: Expanded(child: Text(textAlign: TextAlign.center,'Welcome to our store',style: TextStyle(color: AppColors.white,fontSize: 32,),))),
            SizedBox(height: 15,),
            Text('Ger your groceries in as fast as one hour',style: TextStyle(color: AppColors.ofGrey,fontSize: 15),),
            SizedBox(height: 15,),
            SizedBox(
              width: 350,
              height: 70,
              child: ElevatedButton(
                onPressed: (){},
                child:
              Text('Get Started',style: TextStyle(color: AppColors.white ,fontSize: 20),),
                style: ElevatedButton.styleFrom(
                  shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ) ,
                  backgroundColor: AppColors.green,
                ),
              ),
            ),
            SizedBox(height: 95,),


          ],
        ),
      ),

    );
  }
}
