import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CompletedTasksCopyWidget extends StatefulWidget {
  const CompletedTasksCopyWidget({Key key}) : super(key: key);

  @override
  _CompletedTasksCopyWidgetState createState() =>
      _CompletedTasksCopyWidgetState();
}

class _CompletedTasksCopyWidgetState extends State<CompletedTasksCopyWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).darkBG,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, -0.19),
              child: FFButtonWidget(
                onPressed: () async {
                  Navigator.pop(context);
                },
                text: '',
                icon: Icon(
                  Icons.arrow_back,
                  size: 15,
                ),
                options: FFButtonOptions(
                  width: 50,
                  height: 40,
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
              alignment: AlignmentDirectional(0, 0),
              child: Stack(
                children: [
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
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(45),
                                          bottomRight: Radius.circular(0),
                                          topLeft: Radius.circular(0),
                                          topRight: Radius.circular(0),
                                        ),
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
                    alignment: AlignmentDirectional(0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: Text(
                                    ' ',
                                    style: FlutterFlowTheme.of(context).title1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          indent: 16,
                          endIndent: 16,
                          color: FlutterFlowTheme.of(context).darkBG,
                        ),
                        Image.asset(
                          'assets/images/logo__6___1_-4-removebg-preview.png',
                          width: 500,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'the greenly Store\nis coming soon !\n',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Lexend Deca',
                                    fontSize: 18,
                                    lineHeight: 1.5,
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 90, 0, 0),
                          child: Image.asset(
                            'assets/images/12.12_Sale-cuate.png',
                            width: 300,
                            height: 300,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
