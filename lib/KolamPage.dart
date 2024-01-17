import 'package:flutter/material.dart';
import 'package:feeder/JadwalPage.dart';
import 'package:feeder/SetData.dart';
import 'package:feeder/model/komponen.dart';
import 'package:intl/intl.dart';

class IniData {
  String tp;
  DateTime tgl;
  String tpro;
  String tu;

  IniData(this.tp, this.tgl, this.tpro, this.tu);
}

class IituData {
  final int _pagi;
  final int _siang;
  final int _malam;
  final double _beratPakan;
  final int _jumlahIkan;
  final double _beratIkan;
  IituData(this._pagi, this._siang, this._malam, this._beratPakan,
      this._jumlahIkan, this._beratIkan);
}

class KolamPage extends StatefulWidget {
  final IniData? data;
  final IituData? duata;

  const KolamPage({Key? key, this.data, this.duata}) : super(key: key);

  @override
  State<KolamPage> createState() => _KolamPageState();
}

class _KolamPageState extends State<KolamPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        appBar: const barApp(),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Container(
              height: 1000,
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
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 250,
                        height: 60,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: const Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Kolam 1',
                              style: TextStyle(
                                fontFamily: 'Readex Pro',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Ikan Nila',
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
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Container(
                      width: 120,
                      height: 120,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        'https://picsum.photos/seed/327/600',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 25,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                  SizedBox(
                      width: 340,
                      height: 400,
                      child: Container(
                        width: 200,
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
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 5, 0, 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 150,
                                      height: 40,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: const Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Data Kolam',
                                            style: TextStyle(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 125,
                                      height: 55,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF9DC9E2),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      DataIkan()));
                                        },
                                        child: Container(
                                          width: 125,
                                          height: 55,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFF9DC9E2),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: const Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Text(
                                                'Set Data',
                                                style: TextStyle(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Icon(
                                                Icons.settings_outlined,
                                                color: Colors.black,
                                                size: 24,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 0, 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: 120,
                                        height: 120,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF9DC9E2),
                                          boxShadow: const [
                                            BoxShadow(
                                              blurRadius: 4,
                                              color: Color(0x33000000),
                                              offset: Offset(0, 2),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(15, 0, 0, 0),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const Text(
                                                        'Pakan',
                                                        style: TextStyle(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      Text(
                                                        widget.data?.tp ?? "0",
                                                        style: const TextStyle(
                                                          fontSize: 13,
                                                          fontFamily: 'Roboto',
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ]),
                                              ),
                                              const Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15, 0, 0, 0),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Sisa',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Roboto',
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        Text(
                                                          '10 Kg',
                                                          style: TextStyle(
                                                            fontSize: 13,
                                                            fontFamily:
                                                                'Roboto',
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ]))
                                            ])),
                                    Container(
                                        width: 120,
                                        height: 120,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF9DC9E2),
                                          boxShadow: const [
                                            BoxShadow(
                                              blurRadius: 4,
                                              color: Color(0x33000000),
                                              offset: Offset(0, 2),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(15, 0, 0, 0),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const Text(
                                                        'Probiotik',
                                                        style: TextStyle(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      Text(
                                                        widget.data?.tpro ??
                                                            "0",
                                                        style: const TextStyle(
                                                          fontSize: 13,
                                                          fontFamily: 'Roboto',
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ]),
                                              ),
                                              const Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15, 0, 0, 0),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Sisa',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Roboto',
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        Text(
                                                          '1 L',
                                                          style: TextStyle(
                                                            fontSize: 13,
                                                            fontFamily:
                                                                'Roboto',
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ]))
                                            ])),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 0, 15),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: 120,
                                        height: 120,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF9DC9E2),
                                          boxShadow: const [
                                            BoxShadow(
                                              blurRadius: 4,
                                              color: Color(0x33000000),
                                              offset: Offset(0, 2),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(15, 0, 0, 0),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const Text(
                                                        'Umur',
                                                        style: TextStyle(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      Text(
                                                        widget.data?.tu ?? "0",
                                                        style: const TextStyle(
                                                          fontSize: 13,
                                                          fontFamily: 'Roboto',
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ]),
                                              ),
                                              const Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15, 0, 0, 0),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Saat ini',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Roboto',
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        Text(
                                                          '10 minggu',
                                                          style: TextStyle(
                                                            fontSize: 13,
                                                            fontFamily:
                                                                'Roboto',
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ]))
                                            ])),
                                    Container(
                                        width: 120,
                                        height: 120,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF9DC9E2),
                                          boxShadow: const [
                                            BoxShadow(
                                              blurRadius: 4,
                                              color: Color(0x33000000),
                                              offset: Offset(0, 2),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(15, 0, 0, 0),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const Text(
                                                        'Tanggal',
                                                        style: TextStyle(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      Text(
                                                        widget.data?.tgl != null
                                                            ? DateFormat(
                                                                    'd:M:yyyy')
                                                                .format(widget
                                                                    .data!.tgl)
                                                            : "1:1:2024",
                                                        style: const TextStyle(
                                                          fontSize: 13,
                                                          fontFamily: 'Roboto',
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ]),
                                              ),
                                              const Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15, 0, 0, 0),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Panen',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Roboto',
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        Text(
                                                          '24 Desember 2023',
                                                          style: TextStyle(
                                                            fontSize: 13,
                                                            fontFamily:
                                                                'Roboto',
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ]))
                                            ])),
                                  ],
                                ),
                              ),
                            ]),
                      )),
                  Container(
                    width: 100,
                    height: 25,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                  SizedBox(
                      width: 340,
                      height: 350,
                      child: Container(
                        width: 200,
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
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: 150,
                                  height: 100,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: const Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Jadwal',
                                        style: TextStyle(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Atur jadwal pakan',
                                        style: TextStyle(
                                          fontFamily: 'Readex Pro',
                                          color: Color(0xFF85868C),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                JadwalPage()));
                                  },
                                  child: Container(
                                    width: 125,
                                    height: 55,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF9DC9E2),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: const Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'Atur Jadwal',
                                          style: TextStyle(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Icon(
                                          Icons.settings_outlined,
                                          color: Colors.black,
                                          size: 24,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 15, 0, 0),
                              child: Container(
                                width: 293,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF9DC9E2),
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Waktu',
                                          style: TextStyle(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'Eksekusi',
                                          style: TextStyle(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          widget.duata?._pagi
                                                  .toStringAsFixed(2) ??
                                              '00.00',
                                          style: const TextStyle(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFF16184A),
                                            fontSize: 20,
                                          ),
                                        ),
                                        Text(
                                          widget.duata?._siang
                                                  .toStringAsFixed(2) ??
                                              '00.00',
                                          style: const TextStyle(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFF16184A),
                                            fontSize: 20,
                                          ),
                                        ),
                                        Text(
                                          widget.duata?._malam
                                                  .toStringAsFixed(2) ??
                                              '00.00',
                                          style: const TextStyle(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFF16184A),
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 15, 0, 0),
                              child: Container(
                                width: 293,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF9DC9E2),
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Pakan',
                                          style: TextStyle(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'Eksekusi',
                                          style: TextStyle(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          widget.duata?._beratPakan
                                                  .toString() ??
                                              '0',
                                          style: const TextStyle(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFF16184A),
                                            fontSize: 20,
                                          ),
                                        ),
                                        Text(
                                          widget.duata?._jumlahIkan
                                                  .toString() ??
                                              '0',
                                          style: const TextStyle(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFF16184A),
                                            fontSize: 20,
                                          ),
                                        ),
                                        Text(
                                          widget.duata?._beratIkan.toString() ??
                                              '0',
                                          style: const TextStyle(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFF16184A),
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
        ));
  }
}
