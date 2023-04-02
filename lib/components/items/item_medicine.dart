import 'package:flutter/material.dart';
import 'package:graduation/models/model_provider.dart';
import 'package:provider/provider.dart';
import '../../models/data_product_model.dart';
import '../../screens/products_screen_details/products_screen_details.dart';
class ItemMedicine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ModelProvider>(
        builder: (context, classInstance, child) {
          return GridView.builder(
              padding: EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 30.0,
                crossAxisSpacing: 35.0,
                crossAxisCount: 2,
                childAspectRatio: 2.5 / 2.8, // changed
              ),
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductsScreenDetails(
                          detailsProduct: items[index],
                        ),
                      ),
                    );
                    //classInstance.add(items[index]);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                         //color: Colors.deepPurple[50],
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2,
                          color: Colors.black54,
                        ),
                      ],
                    ),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Positioned(
                          top: -5,
                          child: Padding(
                            padding: EdgeInsets.all(9),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 9,
                              child: Image.asset(
                                items[index].productImage,
                              ),
                            ),
                          ),
                        ),
                         // SizedBox(height:MediaQuery.of(context).size.height/10),
                        Positioned(
                          bottom: 29,//bottom: 22.5
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                            // name,//product.productName,
                                items[index].productName,
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width / 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'price: ',
                                    style: TextStyle(
                                      fontSize:
                                      MediaQuery.of(context).size.width / 23.0,
                                      color: Colors.lightBlue[900]!,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                // price,//product.productPrice as String,
                                    items[index].productPrice.toString(),
                                    style: TextStyle(
                                      fontSize:
                                      MediaQuery.of(context).size.width / 23.0,
                                      color: Colors.lightBlue,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                          //available,//product.productState,
                                items[index].productState,
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width / 25.0,
                                  color: Colors.indigo[400],
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          height: 54,
                          bottom: -10.0,
                          child: TextButton(
                            onPressed: () {
                              classInstance.add(items[index]);
                            },
                            child:   Text(
                              'Add to cart',
                              style: TextStyle(
                                color: Colors.lightBlue,
                                fontSize: 16.5,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
        }
    );
  }
}


/*
Positioned(
                          bottom: -10.0,
                          child: Container(
                            height: 37.5,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextButton(
                              onPressed: () {
                                classInstance.add(items[index]);
                              },
                              child: Column(
                                children: [
                                  Text(
                                    'Add to cart',
                                    style: TextStyle(
                                      color: Colors.lightBlue,
                                      fontSize: 16.5,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  /*izedBox(
                                    height: 2.5,
                                  ),*/
                                ],
                              ),
                            ),
                          ),
 */