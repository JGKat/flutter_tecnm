import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TocarWidget extends StatefulWidget {
  const TocarWidget({Key? key}) : super(key: key);

  @override
  _TocarWidgetState createState() => _TocarWidgetState();
}

class _TocarWidgetState extends State<TocarWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(-0.01, -0.29),
      child: Icon(
        Icons.touch_app,
        color: FlutterFlowTheme.of(context).secondaryBackground,
        size: 150,
      ),
    );
  }
}
