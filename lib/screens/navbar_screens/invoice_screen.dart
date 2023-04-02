import 'package:flutter/material.dart';
import 'package:graduation/screens/navbar_screens/shopping_cart_screen.dart';
import 'package:provider/provider.dart';
import '../../components/items/custom_item_invoice.dart';
import '../../components/text/text_button.dart';
import '../../models/model_provider.dart';

class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen({Key? key,}) : super(key: key);
  static String invoiceScreenRoute = 'invoice screen';
  @override
  Widget build(BuildContext context) {
    return
      Consumer<ModelProvider>(
        builder: ((context, classInstance, child) {
          return Scaffold(
              appBar: AppBar(
                elevation: 2.0,
                backgroundColor: Colors.white,
                leading: IconButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(context,
                        ShoppingCartScreen.shoppingCartRoute, (route) => false);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.lightBlue[900]!,
                    size: 30.0,
                  ),
                ),
                title: Text(
                  'Invoice',
                  style: TextStyle(
                    color: Colors.lightBlue[900]!,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width / 12.5,
                  ),
                ),
              ),
              body: SafeArea(
                child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text(
                          'Invoice Items',
                          textScaleFactor : 1.5,
                          textAlign: TextAlign.center,
                        ),
                        Divider(
                          height: 20.0,
                        ),
                        Expanded(
                          child: ListView.builder(
                              itemCount: classInstance.selectedProduct.length,
                              itemBuilder: (context , int  index){
                                return CustomItemInvoice(
                                  titleName: classInstance.selectedProduct[index].productName.toString(),
                                  trailingPrice: classInstance.selectedProduct[index].productPrice!.toString(),
                                  subtitleQuantity: 'Quantity : 1',
                                );
                              }
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 6.0,
                            bottom: 0.0,
                            left: 8.0,
                            right: 8.0,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Total :',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red
                                      ),
                                    ),
                                    Text(
                                      ' \$ ${classInstance.productPrice.toString()}',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              ReusableTextButton(
                                color: Colors.lightBlue[900]!,
                                onPressed: () {
                                  print(classInstance.selectedProduct.length);

                                  //classInstance.addOrder(items[index]);
                                  //InvoiceScreen
                                  /*Navigator.pushNamedAndRemoveUntil(
                            context,
                            InvoiceScreen.invoiceScreenRoute,
                                (Route<dynamic> route) => false);*/
                                },
                                text: 'OrderNow', // InvoiceScreen()
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                ),
              )
          );
        }
        )
      );
    }
  }
