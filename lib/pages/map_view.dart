import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latlong2/latlong.dart';
import 'package:projekt_dionysos/constans/design_elements/boxshadows%20copy/boxshadow_shallow.dart';

class MapView extends StatelessWidget {
  const MapView({super.key});

  @override
  Widget build(BuildContext context) {
    final markers = <Marker>[
      //Marker showing you your current location
      Marker(
        width: 25,
        height: 25,
        point: LatLng(52.129104, 9.956231),
        builder: (ctx) => Container(
          key: const Key('blue'),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 1),
            boxShadow: [
              boxShadowShallow(),
            ],
            shape: BoxShape.circle,
            color: Colors.blue,
            gradient: RadialGradient(
              colors: [
                Colors.blue.withOpacity(0.2),
                Colors.blue,
              ],
            ),
          ),
        ),
      ),
      Marker(
        width: 80,
        height: 80,
        point: LatLng(52.161737, 9.957816),
        builder: (ctx) => const FlutterLogo(
          key: Key('green'),
          textColor: Colors.green,
        ),
      ),
      Marker(
        anchorPos: AnchorPos.align(AnchorAlign.top),
        width: 80,
        height: 80,
        point: LatLng(52.174618, 9.940207),
        builder: (ctx) => GestureDetector(
          onTap: () {
            print('Halle 39');
          },
          child: Container(
            key: const Key('purple'),
            child: const FlutterLogo(textColor: Colors.purple),
          ),
        ),
      ),
    ];

    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom;
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(52.150002, 9.950000), zoom: 13),
            children: [
              TileLayer(
                urlTemplate:
                    'https://server.arcgisonline.com/ArcGIS/rest/services/World_Street_Map/MapServer/tile/{z}/{y}/{x}',
                userAgentPackageName: 'dev.fleaflet.flutter_map.example',
              ),
              MarkerLayer(
                markers: markers,
              )
            ],
          ),
          Column(
            children: [
              ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    color: Colors.grey.withOpacity(0.2),
                    width: width,
                    child: SafeArea(
                        child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: newHeight * 0.02, bottom: newHeight * 0.01),
                          child: Text(
                            'Karte',
                            style: GoogleFonts.questrial(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: newHeight * 0.01),
                          child: Text(
                            'Siehe, wo anstehende Events stattfinden',
                            style: GoogleFonts.questrial(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    )),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
