// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// String timeOfDayToString(TimeOfDay timeOfDay) {
//   final hours = timeOfDay.hour.toString().padLeft(2, '0');
//   final minutes = timeOfDay.minute.toString().padLeft(2, '0');
//   return '$hours:$minutes';
// }

// Future<Waktu> setWaktu(Waktu waktu) async {
//   var response = await http.post(
//     Uri.parse('http://192.168.0.244:7000/atur_jadwal'),
//     body: {
//       'aktif': waktu.aktif,
//       'pagi': timeOfDayToString(waktu.pagi),
//       'siang': timeOfDayToString(waktu.siang),
//       'malam': timeOfDayToString(waktu.malam),
//       'bP': waktu.bP.toInt(),
//       'jI': waktu.jI.toInt(),
//       'bI': waktu.bI.toInt(),
//     },
//   );

//   print('Response status: ${response.statusCode}');
//   print('Response body: ${response.body}');
// }

// class Waktu {
//   final String aktif;
//   final TimeOfDay pagi;
//   final TimeOfDay siang;
//   final TimeOfDay malam;
//   final int bP;
//   final int jI;
//   final int bI;

//   Waktu(
//       {required this.aktif,
//       required this.pagi,
//       required this.siang,
//       required this.malam,
//       required this.bP,
//       required this.jI,
//       required this.bI});

//   factory Waktu.fromJson(Map<String, dynamic> json) {
//     return Waktu(
//         aktif: json['aktif'],
//         pagi: json["pagi"],
//         siang: json["siang"],
//         malam: json["malam"],
//         bP: json["beratPakan"],
//         jI: json["jumlahIkan"],
//         bI: json["beratIkan"]);
//   }
// }

// // FutureBuilder<Waktu> buildFutureBuilder() {
// //   return FutureBuilder<Waktu>(
// //     future: _futureWaktu,
// //     builder: (context, snapshot) {
// //       if (snapshot.hasData) {
// //         return Text(snapshot.data!.title);
// //       } else if (snapshot.hasError) {
// //         return Text('${snapshot.error}');
// //       }

// //       return const CircularProgressIndicator();
// //     },
// //   );
// // }
