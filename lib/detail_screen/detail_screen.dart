import 'package:flutter/material.dart';
import 'package:coffee_shop/models/Coffee.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:coffee_shop/detail_screen/components/body.dart';

class DetailScreen extends StatelessWidget {
  final Coffee coffee;
  const DetailScreen({Key key, this.coffee}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: coffee.bgcolor,
      appBar: AppBar(
        backgroundColor: coffee.bgcolor,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Body(coffee: coffee),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => {
          Navigator.pop(context),
          print('Added ' + coffee.name + ' to cart.'),
        },
        label: Text('Add to cart (\$' + coffee.price.toString() + ')'),
        icon: FaIcon(FontAwesomeIcons.coffee),
        backgroundColor: coffee.bgcolor,
      ),
    );
  }
}
