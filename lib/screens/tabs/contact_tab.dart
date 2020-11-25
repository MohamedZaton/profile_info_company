import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:profileapp/constants.dart';
import 'package:profileapp/screens/details/details_page.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class LocationTab extends StatefulWidget {
  @override
  _LocationTabState createState() => _LocationTabState();
}

class _LocationTabState  extends State<LocationTab> {

  Completer<GoogleMapController> _controller = Completer();
  Set<Marker> markers = Set();
  static final CameraPosition _kPcLinkLocation = CameraPosition(
    target: LatLng(31.216695, 29.945324),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    markers.add(Marker(
        markerId: MarkerId('PclinkId'),
        position:LatLng(31.216695, 29.945324),
        infoWindow: InfoWindow( title: 'Pc-Link Company' )));
    return new Scaffold(
      body: Stack(
        children:[GoogleMap(
          markers: markers,
          mapType: MapType.normal,
          initialCameraPosition: _kPcLinkLocation,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
          SlidingUpPanel(
            backdropOpacity: 1.0,
             panel: Container(
               margin: EdgeInsets.symmetric(horizontal: 20.0),
               child: Center(
                 child: Column(
                   children: [
                     ListTile(
                       onTap: () {

                       },
                       title: Icon(Icons.keyboard_arrow_up,color: kStartCyanColor,)

                     ),  // arrow up
                     ListTile(
                       onTap: () {

                       },
                       leading: Icon(Icons.location_pin,color: kStartCyanColor,) ,
                       title: Text('49 Mostafa Kamel St.، SEMOUHA، Sidi Gaber, Alexandria Governorate',
                           style: Theme.of(context)
                               .textTheme
                               .bodyText2
                               .copyWith(fontSize: 14.0)),

                     ),
                     ListTile(
                       onTap: () {

                       },
                       leading: Icon(Icons.call,color: kStartCyanColor,) ,
                       title: Text('+2034040101',
                           style: Theme.of(context)
                               .textTheme
                               .bodyText2
                               .copyWith(fontSize: 14.0)),

                     ),
                     ListTile(
                       onTap: () {

                       },
                       leading: SizedBox(width: 10,) ,
                       title: Text('+2034040102',
                           style: Theme.of(context)
                               .textTheme
                               .bodyText2
                               .copyWith(fontSize: 14.0)),

                     ),
                     ListTile(
                       onTap: () {

                       },
                       leading: Icon(Icons.email,color: kStartCyanColor,) ,
                       title: Text('info@pclink.com.eg',
                           style: Theme.of(context)
                               .textTheme
                               .bodyText2
                               .copyWith(fontSize: 14.0)),
                     ),
                     ListTile(
                       onTap: () {
                       },
                       leading: SizedBox(width: 10,) ,
                       title:   Divider(color: kStartCyanColor),

                     ),
                     ListTile(
                       onTap: () {
                       },
                         leading: SizedBox(width: 1,) ,
                       title:  OutlineButton(
                           child: new Text("Contact us "),
                           shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0),),
                         borderSide: BorderSide(color: Colors.blue),
                         onPressed: () {  Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => DetailsWebView(webURL: kContactusLink,)),
                         ); },
                       )
                     ),

                  ],
                ),
               ),
             ),
             borderRadius:  BorderRadius.only(topLeft:Radius.circular(20.0) ,topRight:Radius.circular(20.0)),
          ),
        ] ,
      ),
    );
  }


}