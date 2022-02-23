import 'package:card_dummy_app/details.dart';
import 'package:flutter/material.dart';
import 'dummyData.dart';
import 'customCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DummyData dummyData = DummyData();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView.builder(
        itemCount: dummyData.product.length,
        itemBuilder: (context, i) {
          return CustomCard(
            onPressingCard: () async {
              bool fav = await Navigator.of(context).pushNamed('details',
                  arguments: dummyData.product[i]) as bool;

              setState(() {
                dummyData.product[i].fav = fav;
              });
            },
            fav: dummyData.product[i].fav,
            productName: dummyData.product[i].productName,
            price: dummyData.product[i].price,
            image: Image.asset(
              'assets/$i.jpg',
            ),
            onPressingFav: () {
              setState(() {
                dummyData.product[i].fav =
                    dummyData.product[i].fav == true ? false : true;
              });
            },
          );
        },
      ),
    );
  }
}
