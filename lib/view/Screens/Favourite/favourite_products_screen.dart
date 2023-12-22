import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:netcart_flutter/view_model/utiles/assests.dart';
import 'package:netcart_flutter/view_model/utiles/colors.dart';

import 'favourite_products_list.dart';

class FavouriteProductsScreen extends StatelessWidget {
  const FavouriteProductsScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Favorurite',style: TextStyle(fontSize: 30,color: AppColors.black,fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,

                itemBuilder:(context, index) => Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Image.asset(favouriteProductsList[index].image,)),
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start  ,
                        children: [
                          Text(favouriteProductsList[index].name,style: TextStyle(color: AppColors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                          Text('${favouriteProductsList[index].size}, Price',style: TextStyle(color: AppColors.grey,fontWeight: FontWeight.bold,fontSize: 15)),
                        ],
                      ),
                    ),
                    Text('\$${favouriteProductsList[index].price}',style: TextStyle(color: AppColors.black,fontWeight: FontWeight.bold,fontSize: 20)),
                    SizedBox(width: 10,),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
                separatorBuilder: (context, index) => Divider(
                  indent: 30,
                  endIndent: 30,
                ),
                itemCount: favouriteProductsList.length
            ),
            Divider(),
            SizedBox(height: 25,),
            SizedBox(
              width: 350,
              height: 70,
              child: ElevatedButton(
                onPressed: () {},
                child:
                Text('Add All To Cart',
                  style: TextStyle(color: AppColors.white, fontSize: 20,),),
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
