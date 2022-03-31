import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTasksWidget extends StatefulWidget {
  const MyTasksWidget({Key key}) : super(key: key);

  @override
  _MyTasksWidgetState createState() => _MyTasksWidgetState();
}

class _MyTasksWidgetState extends State<MyTasksWidget> {
  LatLng googleMapsCenter;
  Completer<GoogleMapController> googleMapsController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Align(
          alignment: AlignmentDirectional(-0.7, -0.25),
          child: Text(
            'Composting Stations',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).title1.override(
                  fontFamily: 'Lexend Deca',
                  fontSize: 25,
                ),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).darkBG,
      body: SafeArea(
        child: FlutterFlowGoogleMap(
          controller: googleMapsController,
          onCameraIdle: (latLng) => googleMapsCenter = latLng,
          initialLocation: googleMapsCenter ??= LatLng(13.106061, -59.613158),
          markerColor: GoogleMarkerColor.violet,
          mapType: MapType.normal,
          style: GoogleMapStyle.night,
          initialZoom: 14,
          allowInteraction: true,
          allowZoom: true,
          showZoomControls: true,
          showLocation: true,
          showCompass: false,
          showMapToolbar: false,
          showTraffic: false,
          centerMapOnMarkerTap: true,
        ),
      ),
    );
  }
}
