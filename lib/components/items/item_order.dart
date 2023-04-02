import 'package:flutter/material.dart';
class item_order extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return  Padding(
     padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
     child: Container(
       width: 0,
       height: 133.8,
       decoration: BoxDecoration(
         color: Color(0xFFFEFCFF),
         boxShadow: [
           BoxShadow(
             blurRadius: 4,
             color: Color(0x33000000),
             offset: Offset(0, 2),
           )
         ],
         borderRadius: BorderRadius.circular(40),
         shape: BoxShape.rectangle,
         border: Border.all(
             color: Colors.white12
         ),
       ),
       child: Stack(
         children: [
           Align(
             alignment: AlignmentDirectional(-0.85, -0.25),
             child: Image.asset(
               'assets/images/Cold & Flu Relief.jpg',// assets/images/istockphoto-1072626580-612x612.jpg
               width: 108.3,
               height: 91.7,
               fit: BoxFit.cover,
             ),
           ),
           Align(
             alignment: AlignmentDirectional(-0.06, -0.59),
             child: Text(
               'Cold & Flu Relief',// Processing
               style: TextStyle(
                   fontWeight: FontWeight.w800,
                   fontSize: 16,
                 color: Colors.deepPurple,
               ),
             ),
           ),
           Align(
             alignment: AlignmentDirectional(0.8, -0.35),
             child: Text(
               'To day',
               style: TextStyle(
                   fontWeight: FontWeight.w800,
                   fontSize: 16,
                 color: Colors.lightBlue,
               ),
             ),
           ),
           Align(
             alignment: AlignmentDirectional(-0.20, 0.6),
             //alignment: AlignmentDirectional.bottomCenter,
             child: Text(
               'Order ID :',
               style: TextStyle(
                   fontWeight: FontWeight.w800,
                   fontSize: 16,
                 color:Colors.lightBlue[900]! ,
               ),

             ),
           ),
           Align(
             alignment: AlignmentDirectional(0.30, 0.62),
             child: Text(
               '-----------',
               style: TextStyle(
                   fontWeight: FontWeight.w800,
                   fontSize: 16,
                 color: Colors.lightBlue[900]!,
               ),
             ),
           ),
         ],
       ),
     ),
   );
  }

}