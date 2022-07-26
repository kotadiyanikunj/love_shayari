// import 'dart:async';
// import 'dart:convert';
// import 'dart:io';
// import 'package:http/http.dart' as http;
// import 'ErrorHandler.dart';
//
// class ApiHandler {
//
//   static Future<dynamic> post (url,{Map headers, body, encoding}) async {
//     Uri uri = Uri.parse(url);
//     try {
//       http.Response response = await http.post(uri, headers: headers, body: body, encoding: encoding);
//       if (response.statusCode == 200) {
//         return json.decode(response.body);
//       } else {
//         throw ErrorHandler(code: response.statusCode);
//       }
//     } on FormatException {
//       throw ErrorHandler(message: "Bad Response Format",code: 400);
//     } on SocketException {
//       throw ErrorHandler(message: "Internet Connection Failure",code: 500);
//     } on HttpException {
//       throw ErrorHandler(message: "Connection Problem",code: 500);
//     } on Exception catch (ex) {
//       throw ErrorHandler(message: ex.toString().replaceAll("Exception: ", ""));
//     }
//   }
//
//   static Future<dynamic> get (String url) async {
//     Uri uri = Uri.parse(url);
//     try {
//       http.Response response = await http.get(uri);
//       if (response.statusCode == 200) {
//         return json.decode(response.body);
//       } else {
//         throw ErrorHandler(code: response.statusCode);
//       }
//     } on FormatException {
//       throw ErrorHandler(message: "Bad Response Format",code: 400);
//     } on SocketException {
//       throw ErrorHandler(message: "Internet Connection Failure",code: 500);
//     } on HttpException {
//       throw ErrorHandler(message: "Connection Problem",code: 500);
//     } on Exception catch (ex) {
//       throw ErrorHandler(message: ex.toString().replaceAll("Exception: ", ""));
//     }
//   }
// }