import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:netcart_flutter/view_model/utiles/assests.dart';
import 'package:netcart_flutter/view_model/utiles/colors.dart';

import 'My_Cart_List.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart',style: TextStyle(color: AppColors.black,fontWeight: FontWeight.bold,fontSize: 30),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(),
            ListView.separated(
              shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) =>
                    Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Image.asset(myCart[index].image,)),
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start  ,
                            children: [
                              Text(myCart[index].name,style: TextStyle(color: AppColors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                              Text('${myCart[index].size}, Price',style: TextStyle(color: AppColors.grey,fontWeight: FontWeight.bold,fontSize: 15)),
                              SizedBox(height: 15,),
                              Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: AppColors.grey,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Image.asset(Appassest.minus,color: AppColors.grey,height: 25,width: 25,),
                                  ),
                                  SizedBox(width: 15,),
                                  Text('1',style: TextStyle(color: AppColors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                                  SizedBox(width: 15,),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: AppColors.grey,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Icon(Icons.add,color: AppColors.green,size: 25,),
                                  ),

                                ],
                              )
                            ],
                          ),
                        ),
                        Text('\$${myCart[index].price}',style: TextStyle(color: AppColors.black,fontWeight: FontWeight.bold,fontSize: 20)),
                        SizedBox(width: 10,),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                separatorBuilder:(context, index) =>
                Divider(
                  indent: 30,
                  endIndent: 30,
                ),
                itemCount:myCart.length
            ),
            Divider(),
            SizedBox(height: 25,),
            SizedBox(
              width: 350,
              height: 70,
              child: ElevatedButton(
                onPressed: () {},
                child:
                Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Text('Go to Checkout',
                          style: TextStyle(color: AppColors.white, fontSize: 20,),),
                      ),
                    ),

                    Container(
                      alignment: Alignment.center,
                      width: 60,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: AppColors.darkGreen,
                      ),
                      child: Text('\$12.96',style: TextStyle(color: AppColors.white),),
                    )
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  backgroundColor: AppColors.green,
                ),
              ),
            ),

          ],

        ),
      ),
    );
  }
}
