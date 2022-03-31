import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CompletedTasksWidget extends StatefulWidget {
  const CompletedTasksWidget({Key key}) : super(key: key);

  @override
  _CompletedTasksWidgetState createState() => _CompletedTasksWidgetState();
}

class _CompletedTasksWidgetState extends State<CompletedTasksWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  var outpoot = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Rewards',
          style: FlutterFlowTheme.of(context).title1.override(
                fontFamily: 'Lexend Deca',
                fontSize: 25,
                fontWeight: FontWeight.w900,
              ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 10),
            child: FFButtonWidget(
              onPressed: () async {
                outpoot = await FlutterBarcodeScanner.scanBarcode(
                  '#C62828', // scanning line color
                  'Cancel', // cancel button text
                  true, // whether to show the flash icon
                  ScanMode.QR,
                );

                setState(() {});
              },
              text: '',
              icon: Icon(
                Icons.qr_code_scanner,
                size: 15,
              ),
              options: FFButtonOptions(
                width: 50,
                height: 40,
                color: Color(0xFF5B951E),
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Lexend Deca',
                      color: Colors.white,
                    ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: 12,
              ),
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).darkBG,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0.34),
                    child: Image.asset(
                      'assets/images/Untitled-1.png',
                      width: 500,
                      height: 500,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.82, -0.36),
                    child: Text(
                      'Smartwatch',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.01, -0.36),
                    child: Text(
                      'Smarphone',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.74, -0.36),
                    child: Text(
                      'Tablet',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.78, 0.21),
                    child: Text(
                      'Tulips Pot',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.69, 0.2),
                    child: Text(
                      'Pot',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0.21),
                    child: Text(
                      'Tomato plant',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.85, 0.8),
                    child: Text(
                      'Compost Bag',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0.81),
                    child: Text(
                      'Houseplant',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.85, 0.81),
                    child: Text(
                      'Fruit Basket',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 450),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 375,
                                height: 50,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(45),
                                    bottomRight: Radius.circular(0),
                                    topLeft: Radius.circular(0),
                                    topRight: Radius.circular(0),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.8, -0.3),
                                      child: Text(
                                        '1000 Points',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              fontSize: 30,
                                              fontWeight: FontWeight.w300,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.85, -0.28),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: '60,000',
                options: FFButtonOptions(
                  width: 90,
                  height: 30,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Lexend Deca',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 12,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.01, -0.28),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: '100,000',
                options: FFButtonOptions(
                  width: 90,
                  height: 30,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Lexend Deca',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 12,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.85, -0.27),
              child: FFButtonWidget(
                onPressed: () async {
                  Navigator.pop(context);
                },
                text: '30,000',
                options: FFButtonOptions(
                  width: 90,
                  height: 30,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Lexend Deca',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 12,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.85, 0.3),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: '1,000',
                options: FFButtonOptions(
                  width: 90,
                  height: 30,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Lexend Deca',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 12,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.01, 0.31),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: '2,500',
                options: FFButtonOptions(
                  width: 90,
                  height: 30,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Lexend Deca',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 12,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.85, 0.31),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: '2,500',
                options: FFButtonOptions(
                  width: 90,
                  height: 30,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Lexend Deca',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 12,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.84, 0.93),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: '1,000',
                options: FFButtonOptions(
                  width: 90,
                  height: 30,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Lexend Deca',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 12,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.93),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: '3,000',
                options: FFButtonOptions(
                  width: 90,
                  height: 30,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Lexend Deca',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 12,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.85, 0.93),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: '500',
                options: FFButtonOptions(
                  width: 90,
                  height: 30,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Lexend Deca',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
