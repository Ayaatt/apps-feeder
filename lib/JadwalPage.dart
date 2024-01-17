import 'package:feeder/KolamPage.dart';
import 'package:feeder/model/komponen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class JadwalPage extends StatefulWidget {
  const JadwalPage({super.key});

  @override
  State<JadwalPage> createState() => _JadwalPageState();
}

class _JadwalPageState extends State<JadwalPage> {
  final TextEditingController _bPakan = TextEditingController();
  final TextEditingController _jIkan = TextEditingController();
  final TextEditingController _bIkan = TextEditingController();

  TimeOfDay? _timePicked1;
  TimeOfDay? _timePicked2;
  TimeOfDay? _timePicked3;

  late String? bPakan = _bPakan.text;
  late String? jIkan = _jIkan.text;
  late String? bIkan = _bIkan.text;

  var response;

  String timeOfDayToString(TimeOfDay? timeOfDay) {
    if (timeOfDay == null) {
      return '';
    }
    final hours = timeOfDay.hour.toString().padLeft(2, '0');
    final minutes = timeOfDay.minute.toString().padLeft(2, '0');
    return '$hours:$minutes';
  }

  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    _bPakan.addListener;
    _jIkan.addListener;
    _bIkan.addListener;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: const barApp(),
      body: SafeArea(
          top: true,
          child: SingleChildScrollView(
              child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Color.fromARGB(1, 46, 142, 196),
                  Colors.white,
                ],
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 220,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: const Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Atur Jadwal',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Silahkan pilih  waktu',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color(0xFF85868C),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 100,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x33000000),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                        child: Text(
                          'Waktu',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 15),
                        child: Container(
                          width: 300,
                          height: 85,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(15, 5, 0, 0),
                                child: Text(
                                  'Set Waktu Pagi',
                                  style: TextStyle(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF16184A),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              15, 0, 0, 5),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          showTimePicker(
                                            context: context,
                                            initialTime: TimeOfDay.now(),
                                          ).then((value) {
                                            setState(() {
                                              _timePicked1 = value;
                                            });
                                          });
                                        },
                                        style: ElevatedButton.styleFrom(
                                          minimumSize: const Size(90, 35),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 24),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          elevation: 3,
                                        ),
                                        child: const Text(
                                          'Set',
                                          style: TextStyle(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                        ),
                                      )),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 15, 5),
                                    child: Text(
                                      _timePicked1
                                              ?.format(context)
                                              .toString() ??
                                          '00.00',
                                      textAlign: TextAlign.end,
                                      style: const TextStyle(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 15),
                        child: Container(
                          width: 300,
                          height: 85,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(15, 5, 0, 0),
                                child: Text(
                                  'Set Waktu Siang',
                                  style: TextStyle(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF16184A),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              15, 0, 0, 5),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          showTimePicker(
                                            context: context,
                                            initialTime: TimeOfDay.now(),
                                          ).then((value) {
                                            setState(() {
                                              _timePicked2 = value;
                                            });
                                          });
                                        },
                                        style: ElevatedButton.styleFrom(
                                          minimumSize: const Size(90, 35),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 24),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          elevation: 3,
                                        ),
                                        child: const Text(
                                          'Set',
                                          style: TextStyle(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                        ),
                                      )),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 15, 5),
                                    child: Text(
                                      _timePicked2
                                              ?.format(context)
                                              .toString() ??
                                          '00.00',
                                      textAlign: TextAlign.end,
                                      style: const TextStyle(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 15),
                        child: Container(
                          width: 300,
                          height: 85,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(15, 5, 0, 0),
                                child: Text(
                                  'Set Waktu Malam',
                                  style: TextStyle(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF16184A),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              15, 0, 0, 5),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          showTimePicker(
                                            context: context,
                                            initialTime: TimeOfDay.now(),
                                          ).then((value) {
                                            setState(() {
                                              _timePicked3 = value;
                                            });
                                          });
                                        },
                                        style: ElevatedButton.styleFrom(
                                          minimumSize: const Size(90, 35),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 24),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          elevation: 3,
                                        ),
                                        child: const Text(
                                          'Set',
                                          style: TextStyle(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                        ),
                                      )),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 15, 5),
                                    child: Text(
                                      _timePicked3
                                              ?.format(context)
                                              .toString() ??
                                          '00.00',
                                      textAlign: TextAlign.end,
                                      style: const TextStyle(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.00, 1.00),
                        child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 15, 0, 15),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size(90, 35),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 24),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                elevation: 3,
                              ),
                              child: const Text(
                                'Simpan',
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ))),
    );
  }
}
