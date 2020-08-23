import 'package:flutter/material.dart';
import 'package:coffee_shop/models/Coffee.dart';

class Main extends StatelessWidget {
  const Main({Key key, @required this.coffee}) : super(key: key);
  final Coffee coffee;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hot',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
          Text(
            coffee.name,
            style: Theme.of(context).textTheme.headline4.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: 'Price\n'),
                    TextSpan(
                      text: '\$${coffee.price}',
                      style: Theme.of(context).textTheme.headline4.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Hero(
                    tag: '${coffee.id}',
                    child: Image.asset(
                      coffee.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
