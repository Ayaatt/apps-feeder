import 'package:flutter/material.dart';
import 'package:feeder/model/komponen.dart';
import 'package:feeder/KolamPage.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

String dateTimeToString(DateTime? dateTime) {
  if (dateTime == null) {
    return '';
  }
  final formatter = DateFormat('dd:MM:yyyy');
  return formatter.format(dateTime);
}

class DataIkan extends StatefulWidget {
  const DataIkan({super.key});

  @override
  State<DataIkan> createState() => _DataIkanState();
}

class _DataIkanState extends State<DataIkan> {
  DateTime _tanggalan = DateTime(2023);

  final TextEditingController _tPakan = TextEditingController();
  final TextEditingController _tProbiotik = TextEditingController();
  final TextEditingController _tUmur = TextEditingController();

  late String? tPakan = _tPakan.text;
  late String? tProbiotik = _tProbiotik.text;
  late String? tUmur = _tUmur.text;

  var response;

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
                            'Atur Data',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Silahkan masukan data',
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
                          'Tanggal',
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
                                  'Set Tanggal',
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
                                          Future<DateTime?> baruTanggalan =
                                              showDatePicker(
                                                  context: context,
                                                  initialDate: _tanggalan,
                                                  firstDate: DateTime(2022),
                                                  lastDate: DateTime(2025));
                                          if (baruTanggalan != null) {
                                            setState(() {
                                              _tanggalan =
                                                  baruTanggalan as DateTime;
                                            });
                                          }
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
                                      "${_tanggalan.day} - ${_tanggalan.month} - ${_tanggalan.year}",
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
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                        child: Text(
                          'Pakan, Probiotik, Umur',
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
                                  'Set Total Pakan',
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
                                        onPressed: () {},
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
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 50,
                                            child: TextField(
                                              controller: _tPakan,
                                              keyboardType:
                                                  TextInputType.number,
                                              textAlign: TextAlign.end,
                                              decoration: const InputDecoration(
                                                  hintText: '0'),
                                              style: const TextStyle(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          const Text(
                                            ' Kg',
                                            textAlign: TextAlign.end,
                                            style: TextStyle(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      )),
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
                                  'Set Total Probiotik',
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
                                          setState(() {
                                            tProbiotik = _tProbiotik.text;
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
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 50,
                                          child: TextField(
                                            controller: _tProbiotik,
                                            keyboardType: TextInputType.number,
                                            textAlign: TextAlign.end,
                                            decoration: const InputDecoration(
                                                hintText: '0'),
                                            style: const TextStyle(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        const Text(
                                          ' Liter',
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 16,
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
                                  'Set Umur Ikan',
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
                                          setState(() {
                                            tUmur = _tUmur.text;
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
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 50,
                                            child: TextField(
                                              controller: _tUmur,
                                              keyboardType:
                                                  TextInputType.number,
                                              textAlign: TextAlign.end,
                                              decoration: const InputDecoration(
                                                  hintText: '0'),
                                              style: const TextStyle(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          const Text(
                                            ' hari',
                                            textAlign: TextAlign.end,
                                            style: TextStyle(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      )),
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
