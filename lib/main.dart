import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:projekt_dionysos/constans/custom_icons/profil_icon.dart';
import 'package:projekt_dionysos/constans/for_single_event_view/participants_widget_for_single_event.dart';
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
import 'package:projekt_dionysos/pages/map_view.dart';
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
import 'package:projekt_dionysos/views/create_party-views/create-party-participants-view.dart';
import 'package:projekt_dionysos/views/main_event_container.dart';
import 'package:projekt_dionysos/views/simply_a_test_view.dart';
import 'package:projekt_dionysos/views/test_views/add_friends.dart';
import 'package:projekt_dionysos/views/test_views/animated_list_test.dart';
import 'package:projekt_dionysos/views/test_views/can_always_get_deletet.dart';
import 'package:projekt_dionysos/views/test_views/color_hue_test.dart';
import 'package:projekt_dionysos/views/test_views/friendlist.dart';
import 'package:projekt_dionysos/views/test_views/loading_container.dart';
import 'package:projekt_dionysos/views/test_views/navbar.dart';
import 'package:projekt_dionysos/views/test_views/person_list_tile_check_test.dart';
import 'package:projekt_dionysos/views/test_views/person_list_tile_test.dart';
import 'package:projekt_dionysos/views/test_views/profil_view_test.dart';
import 'package:projekt_dionysos/views/test_views/spinner.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MapView(),
      routes: <String, WidgetBuilder>{
        NetworkTileProviderPage.route: (context) =>
            const NetworkTileProviderPage(),
        WidgetsPage.route: (context) => const WidgetsPage(),
        TapToAddPage.route: (context) => const TapToAddPage(),
        EsriPage.route: (context) => const EsriPage(),
        PolylinePage.route: (context) => const PolylinePage(),
        MapControllerPage.route: (context) => const MapControllerPage(),
        AnimatedMapControllerPage.route: (context) =>
            const AnimatedMapControllerPage(),
        MarkerAnchorPage.route: (context) => const MarkerAnchorPage(),
        PluginScaleBar.route: (context) => const PluginScaleBar(),
        PluginZoomButtons.route: (context) => const PluginZoomButtons(),
        OfflineMapPage.route: (context) => const OfflineMapPage(),
        OnTapPage.route: (context) => const OnTapPage(),
        MarkerRotatePage.route: (context) => const MarkerRotatePage(),
        MovingMarkersPage.route: (context) => const MovingMarkersPage(),
        CirclePage.route: (context) => const CirclePage(),
        OverlayImagePage.route: (context) => const OverlayImagePage(),
        PolygonPage.route: (context) => const PolygonPage(),
        SlidingMapPage.route: (_) => const SlidingMapPage(),
        WMSLayerPage.route: (context) => const WMSLayerPage(),
        CustomCrsPage.route: (context) => const CustomCrsPage(),
        LiveLocationPage.route: (context) => const LiveLocationPage(),
        TileLoadingErrorHandle.route: (context) =>
            const TileLoadingErrorHandle(),
        TileBuilderPage.route: (context) => const TileBuilderPage(),
        InteractiveTestPage.route: (context) => const InteractiveTestPage(),
        ManyMarkersPage.route: (context) => const ManyMarkersPage(),
        StatefulMarkersPage.route: (context) => const StatefulMarkersPage(),
        MapInsideListViewPage.route: (context) => const MapInsideListViewPage(),
        ResetTileLayerPage.route: (context) => const ResetTileLayerPage(),
        EPSG4326Page.route: (context) => const EPSG4326Page(),
        EPSG3413Page.route: (context) => const EPSG3413Page(),
        MaxBoundsPage.route: (context) => const MaxBoundsPage(),
        PointToLatLngPage.route: (context) => const PointToLatLngPage(),
        LatLngScreenPointTestPage.route: (context) =>
            const LatLngScreenPointTestPage(),
        FallbackUrlNetworkPage.route: (context) =>
            const FallbackUrlNetworkPage(),
        FallbackUrlOfflinePage.route: (context) =>
            const FallbackUrlOfflinePage(),
      },
    );
  }
}
