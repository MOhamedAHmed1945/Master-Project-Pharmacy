import 'package:flutter/material.dart';

class ItemShoppingCart extends StatelessWidget {
  ItemShoppingCart({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
    required this.totalPrice,
    required this.onPressed,
  }) : super(key: key);
  String image;
  String name;
  String price;
  String totalPrice;
  Function() onPressed;
  @override
  Widget build(BuildContext context) {
    int number = 1;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,//10
        vertical: 8.0,//8
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFEFCFF),
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: Color(0x33000000),
              offset: Offset(0, 2),
            )
          ],
          borderRadius: BorderRadius.circular(20.0),
          //color: Colors.deepPurple[50]//white70,
            //color: Colors.white,
        ),
        height: MediaQuery.of(context).size.height / 5.5,
        child: Row(
          children: [
            Container(
             height: 112,//90
              padding: EdgeInsets.only(
                left: 8
              ),
              child: Image.asset(
                image,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    name,
                    maxLines: 1,
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    // height: MediaQuery.of(context).size.height / 40,
                  ),
                  Row(
                    children: [
                      Text(
                        'price: ',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.lightBlue[900]!,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        price,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'Total price: ',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.lightBlue[900]!,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        totalPrice,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /*
            Spacer(
              flex: 1,
            ),
             */
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 7.0),
                  child: IconButton(
                    onPressed: onPressed,
                    icon: Icon(
                      Icons.cancel_outlined,//cancel_outlined
                      color: Colors.lightBlue[900]!,
                      size: 25,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 25.0,
                      child: FloatingActionButton(
                        mini: true,
                        backgroundColor: Colors.lightBlue[900]!,
                        onPressed: () {
                          number++;
                        },
                        child: Icon(
                          Icons.add,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.deepPurple[50],
                      child: Text(
                        '$number',
                        maxLines: 1,
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 20,
                          //backgroundColor: Colors.blueGrey[300],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Container(
                      width: 25.0,
                      //height: 10.0,
                      child: FloatingActionButton(
                        mini: true,
                        backgroundColor: Colors.lightBlue[900]!,
                        onPressed: () {
                          number--;
                        },
                        child: Icon(
                          Icons.remove,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
