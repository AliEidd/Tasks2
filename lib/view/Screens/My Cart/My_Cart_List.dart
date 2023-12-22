



import '../../../view_model/utiles/assests.dart';

class MyCart {
  String? image;
  String? size;
  String? name;
  String? price;

  MyCart({this.image, this.size, this.name, this.price});
}
List myCart = [
  MyCart(name: 'Bell Pepper Red',image: '${Appassest.redPepper}',size: '1kg',price: '4.99'),
  MyCart(name: 'Egg Chicken Red',image: '${Appassest.redEgg}',size: '4pcs',price: '1.99'),
  MyCart(name: 'Organic Bananas',image: '${Appassest.banana}',size: '12kg',price: '3.00'),
  MyCart(name: 'Ginger',image: '${Appassest.ginger}',size: '250gm',price: '2.99'),
];