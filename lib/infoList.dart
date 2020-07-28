import 'package:flutter/material.dart';
import 'package:kot_pes/profile.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Info extends StatelessWidget {
  final CameraPosition _cameraPosition = CameraPosition(
    zoom: 14,
    target: LatLng(56.802172, 53.239406),
    //mapType: MapType.normal,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Информация'),
      ),
      drawer: Drawer(
        child: Profile(),
      ),
      body: Table(children: [
        TableRow(children: [
          ListTile(
            title: InkWell(
                child: Text(
                  'Группа вк',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () => launch(
                      'https://vk.com/club96357315',
                    )),
            leading: Icon(Icons.public),
          ),
        ]),
        TableRow(children: [
          ListTile(
            title: SelectableText('Телефон'),
            leading: Icon(Icons.phone),
          ),
        ]),
        TableRow(children: [
          ListTile(
            title: SelectableText('Реквизиты'),
            leading: Icon(Icons.credit_card),
          ),
        ]),
        TableRow(children: [
          ListTile(
            title: SelectableText('Адрес'),
            leading: Icon(Icons.room),
          ),
        ]),
        TableRow(children: [
          Container(
            alignment: Alignment.center,
            height: 400,
            //width: 100,
            child: GoogleMap(
              rotateGesturesEnabled: false,
              initialCameraPosition: _cameraPosition,
              mapType: MapType.normal,
              markers: Set<Marker>.of([
                Marker(
                    markerId: MarkerId('0'),
                    position: LatLng(56.802172, 53.239406))
              ]),
            ),
          ),
        ])
      ]),
    );
  }
}
