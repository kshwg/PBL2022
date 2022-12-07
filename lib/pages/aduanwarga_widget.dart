import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AduanwargaWidget extends StatefulWidget {
  const AduanwargaWidget({Key? key}) : super(key: key);

  @override
  _AduanwargaWidgetState createState() => _AduanwargaWidgetState();
}

class _AduanwargaWidgetState extends State<AduanwargaWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(77),
        child: AppBar(
          backgroundColor: Color(0xFFDADADA),
          automaticallyImplyLeading: true,
          actions: [],
          centerTitle: true,
          elevation: 4,
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                child: Text(
                  'Pilih Jenis Laporan',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Outfit',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 157,
                        height: 110,
                        decoration: BoxDecoration(
                          color: Color(0xFFF7F8F8),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-0.05, -0.5),
                                child: Image.asset(
                                  'assets/images/electric-pole.png',
                                  width: 59,
                                  height: 61,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0.7),
                                child: InkWell(
                                  onTap: () async {},
                                  child: Text(
                                    'Kabel Teruntai',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                      fontFamily: 'Montserrat',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 157,
                        height: 110,
                        decoration: BoxDecoration(
                          color: Color(0xFFF7F8F8),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, -0.5),
                              child: Image.asset(
                                'assets/images/trash.png',
                                width: 63,
                                height: 68,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0.7),
                              child: Text(
                                'sampah',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 157,
                        height: 110,
                        decoration: BoxDecoration(
                          color: Color(0xFFF7F8F8),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, -0.5),
                              child: Image.asset(
                                'assets/images/road.png',
                                width: 56,
                                height: 58,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0.7),
                              child: Text(
                                'Jalan Rusak',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 157,
                        height: 110,
                        decoration: BoxDecoration(
                          color: Color(0xFFF7F8F8),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, 0.7),
                              child: Text(
                                'Parit Tersumbat',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, -0.5),
                              child: Image.asset(
                                'assets/images/manhole.png',
                                width: 50,
                                height: 51,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 157,
                        height: 110,
                        decoration: BoxDecoration(
                          color: Color(0xFFF7F8F8),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, -0.5),
                              child: Image.asset(
                                'assets/images/fallen.png',
                                width: 75,
                                height: 56,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0.7),
                              child: Text(
                                'Pohon Jatuh',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 157,
                        height: 110,
                        decoration: BoxDecoration(
                          color: Color(0xFFF7F8F8),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, -0.5),
                              child: Image.asset(
                                'assets/images/street-light.png',
                                width: 52,
                                height: 54,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0.7),
                              child: Text(
                                'Lampu Rusak',
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 157,
                        height: 110,
                        decoration: BoxDecoration(
                          color: Color(0xFFF7F8F8),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, -0.1),
                              child: Image.asset(
                                'assets/images/more.png',
                                width: 40,
                                height: 21,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0.7),
                              child: Text(
                                'Lainnya',
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
