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
        body: Stack(
          children: <Widget>[
            Container(
              child: Hero(
                tag: '${portfolio.id}',
                child: Container(
                  // the height of this container is 80% of our width
                  height: size.width * 0.8,

                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      Container(
                        height: size.height * 0.7,
                        width: size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Image.asset(
                        portfolio.imageUrl,
                        height: size.width * 0.75,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
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
                          title: Icon(
                            Icons.keyboard_arrow_up,
                            color: kStartCyanColor,
                          )), // arrow up
                      ListTile(
                        onTap: () {},
                        leading: Icon(
                          Icons.location_pin,
                          color: kStartCyanColor,
                        ),
                        title: Text(
                            '49 Mostafa Kamel St.، SEMOUHA، Sidi Gaber, Alexandria Governorate',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(fontSize: 14.0)),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: Icon(
                          Icons.call,
                          color: kStartCyanColor,
                        ),
                        title: Text('+2034040101',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(fontSize: 14.0)),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: SizedBox(
                          width: 10,
                        ),
                        title: Text('+2034040102',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(fontSize: 14.0)),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: Icon(
                          Icons.email,
                          color: kStartCyanColor,
                        ),
                        title: Text('info@pclink.com.eg',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(fontSize: 14.0)),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: SizedBox(
                          width: 10,
                        ),
                        title: Divider(color: kStartCyanColor),
                      ),
                      ListTile(
                          onTap: () {},
                          leading: SizedBox(
                            width: 1,
                          ),
                          title: OutlineButton(
                            child: new Text("Contact us "),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                            borderSide: BorderSide(color: Colors.blue),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsWebView(
                                          webURL: kContactusLink,
                                        )),
                              );
                            },
                          )),
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
