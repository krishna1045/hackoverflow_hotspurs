import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../injection/injection_widget.dart';
import '../maps/maps_widget.dart';
import '../pills/pills_widget.dart';
import '../settings/settings_widget.dart';
import '../syrup/syrup_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF090F13),
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            await Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.leftToRight,
                duration: Duration(milliseconds: 300),
                reverseDuration: Duration(milliseconds: 300),
                child: MapsWidget(),
              ),
            );
          },
          child: Icon(
            Icons.location_on,
            color: FlutterFlowTheme.of(context).secondaryColor,
            size: 24,
          ),
        ),
        title: Text(
          'Drugs',
          style: FlutterFlowTheme.of(context).title1.override(
                fontFamily: 'Lexend Deca',
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
        ),
        actions: [
          InkWell(
            onTap: () async {
              await Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  duration: Duration(milliseconds: 300),
                  reverseDuration: Duration(milliseconds: 300),
                  child: SettingsWidget(),
                ),
              );
            },
            child: Icon(
              Icons.settings_outlined,
              color: FlutterFlowTheme.of(context).secondaryColor,
              size: 40,
            ),
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Color(0xFF262D34),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Medicaiton Categories',
                    style: FlutterFlowTheme.of(context).bodyText2.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF8B97A2),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 1, 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFF090F13),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: Color(0xFF262D34),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.medical_services,
                                  color: Colors.white,
                                  size: 32,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                child: Text(
                                  'Tablets',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF8B97A2),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFF090F13),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: Color(0xFF262D34),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.colorize,
                                  color: Colors.white,
                                  size: 32,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                child: Text(
                                  'Injection',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF8B97A2),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFF090F13),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: Color(0xFF262D34),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.delete_rounded,
                                  color: Colors.white,
                                  size: 32,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                child: Text(
                                  'Syrup',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF8B97A2),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 8, 20, 8),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Meication List',
                    style: FlutterFlowTheme.of(context).bodyText2.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF8B97A2),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 300),
                            reverseDuration: Duration(milliseconds: 300),
                            child: PillsWidget(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Color(0xFF090F13),
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: Image.asset(
                              'assets/images/Grp_Pills.jpg',
                            ).image,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 120, 0, 0),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFF090F13),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 0, 16, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Tablets',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .title2
                                                  .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Colors.white,
                                                    fontSize: 22,
                                                    fontWeight: FontWeight.bold,
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
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.bottomToTop,
                            duration: Duration(milliseconds: 300),
                            reverseDuration: Duration(milliseconds: 300),
                            child: InjectionWidget(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Color(0xFF090F13),
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: Image.asset(
                              'assets/images/Injection.jpg',
                            ).image,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 120, 0, 0),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFF090F13),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 0, 16, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Injection',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .title2
                                                  .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Colors.white,
                                                    fontSize: 22,
                                                    fontWeight: FontWeight.bold,
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
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 20),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.bottomToTop,
                            duration: Duration(milliseconds: 300),
                            reverseDuration: Duration(milliseconds: 300),
                            child: SyrupWidget(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Color(0xFF090F13),
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: Image.asset(
                              'assets/images/Syrup.jpg',
                            ).image,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 120, 0, 0),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFF090F13),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 0, 16, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Syrup',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .title2
                                                  .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Colors.white,
                                                    fontSize: 22,
                                                    fontWeight: FontWeight.bold,
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
                        ),
                      ),
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
