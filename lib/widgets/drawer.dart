import 'package:flutter/material.dart';

import 'package:projekt_dionysos/pages/animated_map_controller.dart';
import 'package:projekt_dionysos/pages/circle.dart';
import 'package:projekt_dionysos/pages/custom_crs/custom_crs.dart';
import 'package:projekt_dionysos/pages/epsg3413_crs.dart';
import 'package:projekt_dionysos/pages/epsg4326_crs.dart';
import 'package:projekt_dionysos/pages/esri.dart';
import 'package:projekt_dionysos/pages/fallback_url_network_page.dart';
import 'package:projekt_dionysos/pages/fallback_url_offline.dart';
import 'package:projekt_dionysos/pages/home.dart';
import 'package:projekt_dionysos/pages/interactive_test_page.dart';
import 'package:projekt_dionysos/pages/latlng_to_screen_point.dart';
import 'package:projekt_dionysos/pages/live_location.dart';
import 'package:projekt_dionysos/pages/many_markers.dart';
import 'package:projekt_dionysos/pages/map_controller.dart';
import 'package:projekt_dionysos/pages/map_inside_listview.dart';
import 'package:projekt_dionysos/pages/marker_anchor.dart';
import 'package:projekt_dionysos/pages/marker_rotate.dart';
import 'package:projekt_dionysos/pages/max_bounds.dart';
import 'package:projekt_dionysos/pages/moving_markers.dart';
import 'package:projekt_dionysos/pages/network_tile_provider.dart';
import 'package:projekt_dionysos/pages/offline_map.dart';
import 'package:projekt_dionysos/pages/on_tap.dart';
import 'package:projekt_dionysos/pages/overlay_image.dart';
import 'package:projekt_dionysos/pages/plugin_scalebar.dart';
import 'package:projekt_dionysos/pages/plugin_zoombuttons.dart';
import 'package:projekt_dionysos/pages/point_to_latlng.dart';
import 'package:projekt_dionysos/pages/polygon.dart';
import 'package:projekt_dionysos/pages/polyline.dart';
import 'package:projekt_dionysos/pages/reset_tile_layer.dart';
import 'package:projekt_dionysos/pages/sliding_map.dart';
import 'package:projekt_dionysos/pages/stateful_markers.dart';
import 'package:projekt_dionysos/pages/tap_to_add.dart';
import 'package:projekt_dionysos/pages/tile_builder_example.dart';
import 'package:projekt_dionysos/pages/tile_loading_error_handling.dart';
import 'package:projekt_dionysos/pages/widgets.dart';
import 'package:projekt_dionysos/pages/wms_tile_layer.dart';

Widget _buildMenuItem(
    BuildContext context, Widget title, String routeName, String currentRoute) {
  final isSelected = routeName == currentRoute;

  return ListTile(
    title: title,
    selected: isSelected,
    onTap: () {
      if (isSelected) {
        Navigator.pop(context);
      } else {
        Navigator.pushReplacementNamed(context, routeName);
      }
    },
  );
}

Drawer buildDrawer(BuildContext context, String currentRoute) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        const DrawerHeader(
          child: Center(
            child: Text('Flutter Map Examples'),
          ),
        ),
        _buildMenuItem(
          context,
          const Text('OpenStreetMap'),
          HomePage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('NetworkTileProvider'),
          NetworkTileProviderPage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('WMS Layer'),
          WMSLayerPage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Custom CRS'),
          CustomCrsPage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Add Pins'),
          TapToAddPage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Esri'),
          EsriPage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Polylines'),
          PolylinePage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Polygons'),
          PolygonPage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('MapController'),
          MapControllerPage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Animated MapController'),
          AnimatedMapControllerPage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Marker Anchors'),
          MarkerAnchorPage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Marker Rotate'),
          MarkerRotatePage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('ScaleBar Plugins'),
          PluginScaleBar.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('ZoomButtons Plugins'),
          PluginZoomButtons.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Offline Map'),
          OfflineMapPage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('OnTap'),
          OnTapPage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Moving Markers'),
          MovingMarkersPage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Circle'),
          CirclePage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Overlay Image'),
          OverlayImagePage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Sliding Map'),
          SlidingMapPage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Widgets'),
          WidgetsPage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Live Location Update'),
          LiveLocationPage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Tile loading error handle'),
          TileLoadingErrorHandle.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Tile builder'),
          TileBuilderPage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Interactive flags test page'),
          InteractiveTestPage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Max Bounds test page'),
          MaxBoundsPage.route,
          currentRoute,
        ),
        ListTile(
          title: const Text('A lot of markers'),
          selected: currentRoute == ManyMarkersPage.route,
          onTap: () {
            Navigator.pushReplacementNamed(context, ManyMarkersPage.route);
          },
        ),
        ListTile(
          title: const Text('Reset Tile Layer'),
          selected: currentRoute == ResetTileLayerPage.route,
          onTap: () {
            Navigator.pushReplacementNamed(context, ResetTileLayerPage.route);
          },
        ),
        ListTile(
          title: const Text('EPSG4326 CRS'),
          selected: currentRoute == EPSG4326Page.route,
          onTap: () {
            Navigator.pushReplacementNamed(context, EPSG4326Page.route);
          },
        ),
        ListTile(
          title: const Text('EPSG3413 CRS'),
          selected: currentRoute == EPSG3413Page.route,
          onTap: () {
            Navigator.pushReplacementNamed(context, EPSG3413Page.route);
          },
        ),
        _buildMenuItem(
          context,
          const Text('Stateful markers'),
          StatefulMarkersPage.route,
          currentRoute,
        ),
        _buildMenuItem(context, const Text('Map inside listview'),
            MapInsideListViewPage.route, currentRoute),
        _buildMenuItem(context, const Text('Point to LatLng'),
            PointToLatLngPage.route, currentRoute),
        _buildMenuItem(context, const Text('LatLng to ScreenPoint'),
            LatLngScreenPointTestPage.route, currentRoute),
        _buildMenuItem(
          context,
          const Text('Fallback URL NetworkTileProvider'),
          FallbackUrlNetworkPage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Fallback URL AssetTileProvider'),
          FallbackUrlOfflinePage.route,
          currentRoute,
        ),
      ],
    ),
  );
}
