import 'package:coffee_shop/models/Coffee.dart';
import 'package:flutter/material.dart';
import 'package:coffee_shop/detail_screen/components/main.dart';

class Body extends StatelessWidget {
  final Coffee coffee;
  const Body({Key key, this.coffee}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.2,
                    left: 20.0,
                    right: 20.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    )
                  ),
                ),
                Main(coffee: coffee),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
