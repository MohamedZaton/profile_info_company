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
    firebaseInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection('messages').snapshots(),
          builder: (context, snapshot) {
             List<DocumentSnapshot> messages ;
             try
             {
               messages = snapshot.data.docs;

             }catch(e)
            {

            }
            //just add this line
            if(snapshot.data == null) return CircularProgressIndicator();

            if (snapshot.hasData) {
            return  ListView(
                  children: messages
                      .map((msg) => Card(
                      child:   ListTile(
                      title:   Text(msg['title']),
                      subtitle: Text(msg['detail']),
                    ),
                  )).toList());

            } else if (snapshot.connectionState == ConnectionState.none || !snapshot.hasData) {
              return Text("No data");
            }
            return Center(child: CircularProgressIndicator());
          },
        ));
  }

  Future<Stream<QuerySnapshot>> firebaseInit() async  {
    await WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    return FirebaseFirestore.instance.collection('messages').snapshots();
  }
}