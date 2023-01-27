import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';
import 'package:projekt_dionysos/constans/design_elements/boxshadows%20copy/boxshadow_shallow.dart';
import 'package:positioned_tap_detector_2/positioned_tap_detector_2.dart';
import 'package:projekt_dionysos/pages/custom_marker.dart';

class CreateEventMap extends StatefulWidget {
  const CreateEventMap({super.key});

  @override
  State<CreateEventMap> createState() => _CreateEventMapState();
}

class _CreateEventMapState extends State<CreateEventMap> {
  LocationData? _currentLocation;
  late final MapController _mapController;

  bool _liveUpdate = false;
  bool _permission = false;

  String? _serviceError = '';

  double zoom = 13;

  int interActiveFlags = InteractiveFlag.all;

  final Location _locationService = Location();

  @override
  void initState() {
    super.initState();
    _mapController = MapController();
    initLocationService();
  }

  void initLocationService() async {
    await _locationService.changeSettings(
      accuracy: LocationAccuracy.high,
      interval: 1000,
    );

    LocationData? location;
    bool serviceEnabled;
    bool serviceRequestResult;

    try {
      serviceEnabled = await _locationService.serviceEnabled();

      if (serviceEnabled) {
        final permission = await _locationService.requestPermission();
        _permission = permission == PermissionStatus.granted;

        if (_permission) {
          location = await _locationService.getLocation();
          _currentLocation = location;
          _locationService.onLocationChanged
              .listen((LocationData result) async {
            if (mounted) {
              setState(() {
                _currentLocation = result;

                // If Live Update is enabled, move map center
                if (_liveUpdate) {
                  _mapController.move(
                      LatLng(_currentLocation!.latitude!,
                          _currentLocation!.longitude!),
                      _mapController.zoom);
                }
              });
            }
          });
        }
      } else {
        serviceRequestResult = await _locationService.requestService();
        if (serviceRequestResult) {
          initLocationService();
          return;
        }
      }
    } on PlatformException catch (e) {
      debugPrint(e.toString());
      if (e.code == 'PERMISSION_DENIED') {
        _serviceError = e.message;
      } else if (e.code == 'SERVICE_STATUS_ERROR') {
        _serviceError = e.message;
      }
      location = null;
    }
  }

  bool canGoOn = false;
  // List<LatLng> tappedPoints = [];
  late LatLng tappedPoint;
  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom;

    LatLng currentLatLng;

    if (_currentLocation != null) {
      currentLatLng =
          LatLng(_currentLocation!.latitude!, _currentLocation!.longitude!);
    } else {
      currentLatLng = LatLng(0, 0);
    }

    //Posible addition if more than one location is needed

    /* final markers = tappedPoints.map(
      (latlng) {
        return Marker(
          anchorPos: AnchorPos.align(AnchorAlign.top),
          width: 80,
          height: 80,
          point: latlng,
          builder: (context) {
            return CustomMarker();
          },
        );
      },
    ).toList(); */

    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            mapController: _mapController,
            options: MapOptions(
                minZoom: 4,
                maxZoom: 18,
                center: LatLng(52.150002, 9.950000),
                zoom: zoom,
                interactiveFlags: InteractiveFlag.doubleTapZoom |
                    InteractiveFlag.drag |
                    InteractiveFlag.flingAnimation |
                    InteractiveFlag.pinchMove |
                    InteractiveFlag.pinchZoom,
                onTap: _handleSingleTap),
            children: [
              TileLayer(
                urlTemplate:
                    'https://server.arcgisonline.com/ArcGIS/rest/services/World_Street_Map/MapServer/tile/{z}/{y}/{x}',
                userAgentPackageName: 'dev.fleaflet.flutter_map.example',
              ),
              MarkerLayer(
                markers: [
                  //Live location
                  Marker(
                    width: 25,
                    height: 25,
                    point: currentLatLng,
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
                  //Selected location
                  canGoOn
                      ? Marker(
                          anchorPos: AnchorPos.align(AnchorAlign.top),
                          width: 80,
                          height: 80,
                          point: tappedPoint,
                          builder: (context) {
                            return CustomMarker();
                          },
                        )
                      //Placeholder if nothing jet is selected
                      : Marker(
                          point: LatLng(0, 0),
                          builder: (context) {
                            return const SizedBox();
                          },
                        ),
                ],
              ),
            ],
            nonRotatedChildren: [
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
                                  top: newHeight * 0.02,
                                  bottom: newHeight * 0.01),
                              child: Text(
                                'Wo?',
                                style: GoogleFonts.questrial(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  bottom: newHeight * 0.01,
                                  left: width * 0.1,
                                  right: width * 0.1),
                              child: Text(
                                'Markiere den Ort auf der Karte, wo das Event stattfinden soll',
                                style: GoogleFonts.questrial(
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        )),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RotatedBox(
                          quarterTurns: 3,
                          child: Slider(
                            value: zoom,
                            onChanged: (value) {
                              final centerZoom = _mapController.center;

                              _mapController.move(
                                centerZoom,
                                zoom,
                              );
                              setState(() {
                                zoom = value;
                              });
                            },
                            min: 4,
                            max: 18,
                            label: '${zoom - 3} ',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 80),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.fastOutSlowIn,
                  height: canGoOn ? 80 : 0,
                  width: canGoOn ? 200 : 0,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: canGoOn
                        ? [
                            boxShadowShallow(),
                          ]
                        : [],
                  ),
                  child: Center(
                    child: Text('Weiter'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /* void _handleTap(TapPosition tapPosition, LatLng latlng) {
    setState(() {
      tappedPoints.add(latlng);
    });
  }
 */
  void _handleSingleTap(TapPosition tapPosition, LatLng latlng) {
    setState(() {
      tappedPoint = latlng;
      canGoOn = true;
    });
  }
}
