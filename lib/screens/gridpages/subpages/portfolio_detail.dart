import 'package:flutter/material.dart';
import 'package:profileapp/constants.dart';
import 'package:profileapp/screens/details/web_view_page.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PortfolioDetailsPage extends StatelessWidget {
  var portfolio;

  PortfolioDetailsPage({Key key, @required this.portfolio}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // it provide us total height and width
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small devices
    return SafeArea(
      bottom: false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: kPrimaryColor),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Container(
            child: Image(
              image: AssetImage("images/icons/pclink_logo_name.png"),
              width: 50.0,
              height: 50.0,
            ),
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: <Widget>[
            Container(
              child: Hero(
                tag: '${portfolio.id}',
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Image.asset(
                      portfolio.imageUrl,
                    ),
                  ],
                ),
              ),
            ),
            SlidingUpPanel(
              minHeight: size.width * 0.85,
              backdropOpacity: 1.0,
              panel: Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: Center(
                  child: Column(
                    children: [

                      ListTile(
                        onTap: () {},

                        title: Text(
                            '${portfolio.title}',
                            style: TextStyle(color: kPrimaryColor , fontWeight: FontWeight.bold,fontSize: 16)),
                      ),
                      ListTile(
                        onTap: () {},

                        title:Text(
                            '${portfolio.description}',
                            style: TextStyle(color: kSubHeadColor,fontSize: 12)),
                      ),

                      ListTile(
                          onTap: () {},
                        leading: OutlineButton(
                            child: new Text(" Contact us " ,style: TextStyle(  color: Colors.blue,),),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                            borderSide: BorderSide(color: Colors.blue),

                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsWebView( webURL: kContactusLink,)
                                ),
                              );
                            },
                          ),),
                    ],
                  ),
                ),
              ),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0)),
            ),
          ],
        ),
      ),
    );
  }
}
