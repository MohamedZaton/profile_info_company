import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


class LogNotificationTab extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstRoute(title: 'First Route'),
    );
  }
}

class FirstRoute extends StatefulWidget {
  FirstRoute({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _FirstRouteState createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: FutureBuilder(
          future: getData(),
          builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                children: [
                  Container(
                    height: 27,
                    child: ListTile(
                      leading: Text(snapshot.data.data()['title']),
                     title:Text(snapshot.data.data()['detail']),
                  ),
                  )],
              );
            } else if (snapshot.connectionState == ConnectionState.none) {
              return Text("No data");
            }
            return CircularProgressIndicator();
          },
        ));
  }

  Future<DocumentSnapshot> getData() async {
    await Firebase.initializeApp();
    return await FirebaseFirestore.instance
        .collection("messages")
        .doc("nQzqnECGqt3RICo4RDRG")
        .get();
  }
}