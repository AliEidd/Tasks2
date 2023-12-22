import 'package:flutter/material.dart';
import 'package:netcart_flutter/view_model/utiles/assests.dart';
import 'package:netcart_flutter/view_model/utiles/colors.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SearchBar(
              leading: Icon(Icons.search),
              hintText: 'search',
              backgroundColor: MaterialStateProperty.resolveWith((states) => AppColors.greyWithShade),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Container(
                    width: 150,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 1,
                        color: AppColors.grey,
                      )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(Appassest.redEgg,height: 100,),
                        SizedBox(height: 6,),
                        Text(
                          'banana',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 6,),
                        Text(
                          '4pcs, Price',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 6,),
                        Row(
                          children: [
                            Expanded(
                                child:Text('\$1.99',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                            ),
                            FloatingActionButton(
                              mini: true,
                              onPressed: (){},
                              backgroundColor: AppColors.green,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Icon(
                                Icons.add,
                                color: AppColors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          width: 1,
                          color: AppColors.grey,
                        )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(Appassest.appleJuice,height: 100,),
                        SizedBox(height: 6,),
                        Text(
                          'banana',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 6,),
                        Text(
                          '4pcs, Price',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 6,),
                        Row(
                          children: [
                            Expanded(
                              child:Text('\$1.99',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            FloatingActionButton(
                              mini: true,
                              onPressed: (){},
                              backgroundColor: AppColors.green,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Icon(
                                Icons.add,
                                color: AppColors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
