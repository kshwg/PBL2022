import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_2/auth.dart';
import 'package:flutter_application_2/pages/denah_widget.dart';
import './administrasi_widget.dart';
import './aduanwarga_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../flutter_flow/flutter_flow_theme.dart';

class HomePage extends StatefulWidget {

  HomePage({Key? key}) : super(key:key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final User? user = Auth().currentUser;

  Future<void> signOut() async {
    await Auth().signOut();
  }

  Widget _title(){
    return const Text('Welcome Euy');
  }

  Widget _userUid(){
    return Text(user?.email?? 'ID Warga');
  }

  Widget _signOutButton(){
    return ElevatedButton(
      onPressed: signOut,
      child: const Text('Keluar'),
      );
  }

  @override
  Widget build(BuildContext context){
  return Scaffold(
    body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(padding: EdgeInsetsDirectional.fromSTEB(20, 0, 16, 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: const Color(0xFF4B39EF),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                    child: Container(
                      width:60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset('assets/images/ringojuice.jpg',
                      fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0,0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(user?.email??'ID WARGA',
                                style: FlutterFlowTheme.of(context).title1,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Selamat Datang!',
                                style: FlutterFlowTheme.of(context)
                                  .subtitle1,
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ),
                )
              ],
            ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB((0), 0, 0, 15),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children:[
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 150, 0),
                        child: Text(
                          'Kabar Sekitar Anda',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context)
                          .title3
                          .override(
                            fontFamily:'Outfit',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Container(
                          width: 350,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFF9B99B9),
                            borderRadius: BorderRadius.circular(8),
                            shape: BoxShape.rectangle,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 200, 0),
                                child: Text(
                                  'Informasi',
                                  textAlign: TextAlign.start,
                                  style:  FlutterFlowTheme.of(context)
                                    .subtitle2,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ]
                  )
                ],
              ),
            ),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              direction: Axis.horizontal,
              runAlignment: WrapAlignment.start,
              verticalDirection: VerticalDirection.down,
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 160,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFF4B39EF),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        color: Color(0x33000000),
                        offset: Offset(0,1),
                      )
                    ],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                          child: FaIcon(
                            FontAwesomeIcons.moneyCheckDollar,
                            color: Colors.white,
                            size: 44,
                          ),
                        ),
                        Text(
                          'Laporan Keuangan',
                          style: FlutterFlowTheme.of(context)
                          .bodyText2
                          .override(
                            fontFamily: 'Outfit',
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AdministrasiWidget(),
                      ),
                    );
                  },
                  child: Container(
                    width: 160,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFF4B39EF),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          color: Color(0x33000000),
                          offset: Offset(0, 1),
                        )
                      ],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding:
                      EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 12),
                            child: FaIcon(
                              FontAwesomeIcons.edit,
                              color: Colors.white,
                              size: 44,
                            ),
                          ),
                          Text(
                            'Administrasi',
                            style: FlutterFlowTheme.of(context)
                                .bodyText2
                                .override(
                              fontFamily: 'Outfit',
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AduanwargaWidget(),
                      ),
                    );
                  },
                  child: Container(
                    width: 160,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFFB01A1A),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          color: Color(0x33000000),
                          offset: Offset(0, 1),
                        )
                      ],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding:
                      EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 12),
                            child: Icon(
                              Icons.warning_rounded,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              size: 44,
                            ),
                          ),
                          Text(
                            'Aduan',
                            style: FlutterFlowTheme.of(context)
                                .bodyText2
                                .override(
                              fontFamily: 'Outfit',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DenahWidget(),
                      ),
                    );
                  },
                  child: Container(
                    width: 160,
                    height: 100,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryText,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          color: Color(0x33000000),
                          offset: Offset(0, 1),
                        )
                      ],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding:
                      EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 12),
                            child: Icon(
                              Icons.map_rounded,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              size: 44,
                            ),
                          ),
                          Text(
                            'Denah Perumahan',
                            style: FlutterFlowTheme.of(context)
                                .bodyText2
                                .override(
                              fontFamily: 'Outfit',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      )
    )
  );


  }
}

