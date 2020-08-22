import 'package:flutter/material.dart';

class Coffee {
  final String image, name, description;
  final int id;
  final double price;
  final Color bgcolor;

  Coffee({
    this.image,
    this.name,
    this.description,
    this.price,
    this.id,
    this.bgcolor,
  });
}

List<Coffee> coffeeList = [
  Coffee(
    id: 0,
    name: 'Caffe Americano',
    description:
        'Espresso shots topped with hot water create a light layer of crema culminating in this wonderfully rich cup with depth and nuance.',
    price: 3.99,
    image: 'assets/images/008-coffee.png',
    bgcolor: Color(0xFFCE9034),
  ),
  Coffee(
    id: 1,
    name: 'Blonde Roast Americano',
    description:
        "Lightly roasted coffee that's soft, mellow and flavorful. Easy-drinking on its own and delicious with milk, sugar or flavored with vanilla, caramel or hazelnut.",
    price: 3.59,
    image: 'assets/images/014-coffee-cup.png',
    bgcolor: Color(0xFF3D82AE),
  ),
  Coffee(
    id: 2,
    name: 'Espresso',
    description:
        "Our smooth signature Espresso Roast with rich flavor and caramelly sweetness is at the very heart of everything we do.",
    price: 4.49,
    image: 'assets/images/044-tea-cup.png',
    bgcolor: Color(0xFF3D6356),
  ),
  Coffee(
    id: 3,
    name: 'Cold Brew',
    description:
        'Cold Brew topped with lightly sweet cinnamon, vanilla syrup and almondmilk cold foam—nondairy, 40 calories and deliciously packed with flavorful yum.',
    price: 5.99,
    image: 'assets/images/025-frappe.png',
    bgcolor: Color(0xFFC980F2),
  ),
  Coffee(
    id: 4,
    name: 'Nitro Cold Brew',
    description:
        "Lightly roasted coffee that's soft, mellow and flavorful. Easy-drinking on its own and delicious with milk, sugar or flavored with vanilla, caramel or hazelnut.",
    price: 3.59,
    image: 'assets/images/013-coffee-cup.png',
    bgcolor: Color(0xFFDB657F),
  ),
  Coffee(
    id: 5,
    name: 'Espresso',
    description:
        "Our smooth signature Espresso Roast with rich flavor and caramelly sweetness is at the very heart of everything we do.",
    price: 4.49,
    image: 'assets/images/010-take-away.png',
    bgcolor: Color(0xFFC1E394),
  ),
];
