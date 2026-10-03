import 'package:ecommerce/model/shoe.dart';
import 'package:flutter/cupertino.dart';

class cart extends ChangeNotifier{
  //List of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom FREAK',
      price: '236',
      imagePath: 'lib/images/ZoomFreak.png',
      description:
      'Built for explosive performance and powerful movement, the Zoom FREAK delivers responsive cushioning, a secure fit, and a bold athletic design for every intense game.',
    ),

    Shoe(
      name: 'Air Jordans',
      price: '220',
      imagePath: 'lib/images/Jordan.png',
      description:
      'A timeless combination of iconic basketball style and everyday comfort, Air Jordans bring a classic look with supportive cushioning designed to keep you moving with confidence.',
    ),

    Shoe(
      name: 'KD Treys',
      price: '240',
      imagePath: 'lib/images/KdTreys.png',
      description:
      'Designed for smooth movement and reliable performance, KD Treys offer lightweight comfort, responsive cushioning, and a supportive feel for quick changes and long sessions.',
    ),

    Shoe(
      name: 'Converse 70',
      price: '190',
      imagePath: 'lib/images/converse.png',
      description:
      'A classic everyday sneaker with a timeless silhouette, the Converse 70 combines durable construction, comfortable cushioning, and effortless street style that works with any outfit.',
    ),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoe for sale
  List<Shoe> getShoeList(){
    return shoeShop;
  }

  //add shoe to user cart
  void addToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  //remove shoe from user cart
  void removeFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }

  //get list of shoes in user cart
  List<Shoe> getUserCart(){
    return userCart;
  }

}