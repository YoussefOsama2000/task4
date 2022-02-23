import 'package:flutter/material.dart';
import 'dummyData.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    Product product = ModalRoute.of(context)!.settings.arguments as Product;
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop(product.fav);
        return false;
      },
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: ListView(
            children: [
              Container(
                color: Colors.blue,
                padding: EdgeInsetsDirectional.all(20),
                child: Text(
                  product.productName,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    wordSpacing: 0.5,
                    letterSpacing: 2,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 400,
                child: Stack(children: [
                  Center(
                    child: Image.asset(
                      product.image,
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 5,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          product.fav = !product.fav;
                        });
                      },
                      child: Icon(
                        Icons.favorite_sharp,
                        size: 80,
                        color:
                            product.fav == true ? Colors.red : Colors.black45,
                      ),
                    ),
                  ),
                  Positioned(
                      top: 5,
                      right: 5,
                      child: Text(
                        product.price.toString() + ' \$',
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 40),
                      ))
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'descreption',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 0.5,
                  letterSpacing: 2,
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.all(15),
                child: Text(
                  product.description,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
