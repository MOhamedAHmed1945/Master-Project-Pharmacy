import 'package:flutter/material.dart';

class UserInformationScreen extends StatelessWidget {
  const UserInformationScreen({Key? key}) : super(key: key);
  static String userInformationScreenRoute = 'user information screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.lightBlue[900]!,
            size: 30.0,
          ),
        ),
        title: Text(
          'User Information',
          style: TextStyle(
            color: Colors.lightBlue[900]!,
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.width / 12.5,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            userWidget(
              requiredInformation: 'Name',
              userInformation: 'mahmoud',
            ),
            userWidget(
              requiredInformation: 'Email Address',
              userInformation: 'mahmoud_ali15946@gmail.com',
            ),
            userWidget(
              requiredInformation: 'Age',
              userInformation: '30',
            ),
            userWidget(
              requiredInformation: 'Address',
              userInformation: 'Cairo - Maadi area - 19 street',
            ),
            userWidget(
              requiredInformation: 'Number Of Orders',
              userInformation: '8',
            ),
          ],
        ),
      ),
    );
  }

  Widget userWidget({
    required String requiredInformation,
    required String userInformation,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '$requiredInformation :',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.green[700],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  userInformation,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          thickness: 0.3,
          color: Colors.black,
        ),
      ],
    );
  }
}
