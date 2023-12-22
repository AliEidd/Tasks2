
import 'package:netcart_flutter/view_model/utiles/assests.dart';

class FavouriteProductsList {
  String? image;
  String? size;
  String? name;
  String? price;

  FavouriteProductsList({this.image, this.size, this.name, this.price});
}
List favouriteProductsList = [
  FavouriteProductsList(name: 'Sprite Can',image: '${Appassest.sprite}',size: '325ml',price: '1.5'),
  FavouriteProductsList(name: 'Diet Coke',image: '${Appassest.dietCoca}',size: '355ml',price: '1.99'),
  FavouriteProductsList(name: 'Apple & Grape Juice',image: '${Appassest.appleJuice}',size: '21',price: '15.50'),
  FavouriteProductsList(name: 'Coca Cola Can',image: '${Appassest.cocaCola}',size: '325ml',price: '4.99'),
  FavouriteProductsList(name: 'Pepsi Can ',image: '${Appassest.pepsi}',size: '330ml',price: '4.99')
];