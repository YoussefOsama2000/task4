import 'package:flutter/material.dart';
import 'dummyData.dart';

void main() {
  runApp(MaterialApp(
    home: DummyPage(),
  ));
}

class DummyPage extends StatefulWidget {
  const DummyPage({Key? key}) : super(key: key);

  @override
  _DummyPageState createState() => _DummyPageState();
}

class _DummyPageState extends State<DummyPage> {
  DummyData dummyData = DummyData();
  List<Widget> cards() {
    List<Widget> cardsList = [];
    for (int i = 0; i < dummyData.product.length; i++) {
      cardsList.add(
        Card(
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
                      Image.asset(
                        'assets/$i.jpg',
                      ),
                      Positioned(
                        bottom: 5,
                        right: 5,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              if (dummyData.product[i].fav == true)
                                dummyData.product[i].fav = false;
                              else
                                dummyData.product[i].fav = true;
                            });
                          },
                          child: Icon(
                            Icons.favorite_sharp,
                            color: dummyData.product[i].fav == true
                                ? Colors.red
                                : Colors.black45,
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
                        dummyData.product[i].productName,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '${dummyData.product[i].price}\$',
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
    return cardsList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white60,
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: cards(),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.favorite_border),
                    Text('favourite page')
                  ],
                ))
          ],
        ));
  }
}
