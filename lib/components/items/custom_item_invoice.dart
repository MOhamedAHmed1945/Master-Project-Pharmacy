import 'package:flutter/material.dart';
class CustomItemInvoice extends StatelessWidget {
   CustomItemInvoice({
    Key? key,
 required this.titleName,
 required this.trailingPrice,
 required this.subtitleQuantity,

  }) : super(key: key);
 final String titleName;
 final String trailingPrice;
 final String subtitleQuantity;

  @override
  double textScaleFactorForTitle = 1.4;
   double textScaleFactorForTrailing = 1.3;
   double textScaleFactorForSubtitle = 1.2;
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        titleName,
        textScaleFactor: textScaleFactorForTitle,
        style: TextStyle(
          color: Colors.deepPurple
        ),
      ),
      trailing: Text(
        trailingPrice,
        textScaleFactor: textScaleFactorForTrailing,
        style: TextStyle(
            color: Colors.lightBlue[900]!
        ),
      ),
      subtitle: Text(
        subtitleQuantity,
          textScaleFactor: textScaleFactorForSubtitle,
        style: TextStyle(
            color: Colors.lightBlue
        ),
      ),
      selected: true,
    );
  }
}
