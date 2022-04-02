import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomSHeetWidget extends StatefulWidget {
  const BottomSHeetWidget({Key key}) : super(key: key);

  @override
  _BottomSHeetWidgetState createState() => _BottomSHeetWidgetState();
}

class _BottomSHeetWidgetState extends State<BottomSHeetWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
      child: Text(
        'Bottom Sheet Displayed',
        style: FlutterFlowTheme.of(context).bodyText1,
      ),
    );
  }
}
