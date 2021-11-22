import 'dart:async';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:team_app/deal_page.dart';
import 'package:team_app/profile.dart';
import 'package:team_app/screens/chat_screen.dart';
import 'package:team_app/services/deal_services.dart';
import 'package:url_launcher/url_launcher.dart';

class LocationPage extends StatefulWidget {
  LocationPage({Key? key}) : super(key: key);
  var controller;
  var service = FirebaseServices();

  @override
  _LocationPageState createState() => _LocationPageState(this.controller);
}

class _LocationPageState extends State<LocationPage> {
  final Completer<GoogleMapController> _controller = Completer();
  late LocationData currentLocation;
  int _selectedIndex = 0;

  var controller;

  _LocationPageState(this.controller);

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(13.74700, 100.53906),
    zoom: 15,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Location', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.deepPurple[900],
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LocationPage(),
                    ),
                  );
                },
                icon: Icon(Icons.map)),
            IconButton(onPressed: () {}, icon: Icon(Icons.account_circle)),
          ]
          //automaticallyImplyLeading: false,
          ),
      body: GoogleMap(
        markers: {
          Marker(
            markerId: MarkerId("1"),
            position: LatLng(13.74700, 100.53906),
            infoWindow: InfoWindow(
              title: "ซุปเปอร์ซันเดย์กับสเวนเซ่น",
              snippet: "Swensens @Central World",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Moved1()),
                );
              },
            ),
          ),
          Marker(
            markerId: MarkerId("2"),
            position: LatLng(13.75027, 100.54006),
            infoWindow: InfoWindow(
              title: "ซื้อ 1 แถม 1",
              snippet: "Levis @Platinum",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Moved2()),
                );
              },
            ),
          ),
          Marker(
            markerId: MarkerId('3'),
            position: LatLng(13.74643, 100.53476),
            infoWindow: InfoWindow(
              title: "ซื้อ 3 ชิ้น ลด 25%",
              snippet: "H&M @Siam Paragon",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Moved3()),
                );
              },

              //icon: _markerIcon,
              //visible: true,
              //     _openOnGoogleMapApp(13.653296334116222, 100.41089676426907)
            ),
          ),
          Marker(
            markerId: MarkerId("4"),
            position: LatLng(13.74446, 100.54432),
            infoWindow: InfoWindow(
              title: "ซื้อ 1 แถม 1",
              snippet: "Starbucks @Central Silom",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Moved4()),
                );
              },
            ),
          ),
          Marker(
            markerId: MarkerId("5"),
            position: LatLng(13.74529, 100.53979),
            infoWindow: InfoWindow(
              title: "อิ่มคุ้มออนไลน์ เฟรนซ์ฟราย 1 แถม 1",
              snippet: "Potato Corner @Central World",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Moved5()),
                );
              },
            ),
          ),
        },
        compassEnabled: true,
        myLocationButtonEnabled: true,
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _openOnGoogleMapApp(13.74719, 100.53892);
        },
        label: const Text(
          'Change Location',
          style:
              TextStyle(fontFamily: 'BaiJamjuree', fontWeight: FontWeight.bold),
        ),
        icon: const Icon(Icons.pin_drop_outlined),
        //backgroundColor: Colors.teal.withOpacity(0.95),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        iconSize: 30.0,
        selectedFontSize: 14.0,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.deepPurple[900],
            icon: InkWell(
              child: Icon(Icons.home, color: Colors.white),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => DealPage()));
              },
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
                child: Icon(Icons.near_me, color: Colors.white), onTap: () {}),
            label: 'Around You',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
                child: Icon(Icons.person, color: Colors.white),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));
                }),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
                child: Icon(Icons.message, color: Colors.white),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => ChatScreen()));
                }),
            label: 'Message',
          ),
        ],
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }

  _openOnGoogleMapApp(double latitude, double longitude) async {
    String googleUrl =
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      // Could not open the map.
    }
  }
}

class Moved1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          //Navigator.pushReplacement(
          //context, MaterialPageRoute(builder: (context) => DealPage()));
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: 'Deal',
            child: Image.asset(
              'image/swensens.jpg',
              width: 350,
            ),
          ),
        ),
      ),
    );
  }
}

class Moved2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: 'Deal',
            child: Image.asset(
              'image/levis.jpg',
              width: 350,
            ),
          ),
        ),
      ),
    );
  }
}

class Moved3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: 'Deal',
            child: Image.asset(
              'image/HMSALE.jpg',
              width: 350,
            ),
          ),
        ),
      ),
    );
  }
}

class Moved4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: 'Deal',
            child: Image.asset(
              'image/starbucks.jpg',
              width: 350,
            ),
          ),
        ),
      ),
    );
  }
}

class Moved5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: 'Deal',
            child: Image.asset(
              'image/potatocorner.jpg',
              width: 350,
            ),
          ),
        ),
      ),
    );
  }
}
