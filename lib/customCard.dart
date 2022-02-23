import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final bool fav;
  final productName;
  final double price;
  final Image image;
  final VoidCallback onPressingFav;
  final VoidCallback onPressingCard;
  const CustomCard({
    required this.fav,
    required this.productName,
    required this.price,
    required this.image,
    required this.onPressingFav,
    required this.onPressingCard
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressingCard,
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Stack(
                  children: [
                    image,
                    Positioned(
                      bottom: 5,
                      right: 5,
                      child: InkWell(
                        onTap: onPressingFav,
                        child: Icon(
                          Icons.favorite_sharp,
                          color: fav == true ? Colors.red : Colors.black45,
                          size: 60,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Text(
                      productName,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      '$price\$',
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
