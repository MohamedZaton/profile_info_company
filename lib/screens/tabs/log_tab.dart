import 'package:flutter/material.dart';

class LogNotificationTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image(
                    image: AssetImage("images/icons/under_contractor.png"),

                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Center(child: Text("Under Construction")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
