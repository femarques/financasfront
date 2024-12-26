// import 'package:dio/dio.dart';

// import 'package:flutter/material.dart';

// class Problem {
//   int status;
//   DateTime timestamp;
//   String type;
//   String detail;
//   String userMessage;
//   List<Campo> campos = [];

//   Problem({
//     required this.status,
//     required this.timestamp,
//     required this.type,
//     required this.detail,
//     required this.userMessage,
//     required this.campos,
//   });

//   factory Problem.fromDioException(DioException dioException) {
//     debugPrint('Lck-Mobile - Problem.fromDioException - ' +
//         dioException.message.toString());

//     debugPrint(
//         'Lck-Mobile - Problem.fromDioException - ' + dioException.toString());

//     Map json = dioException.response?.data ?? {};
//     return Problem.fromJson(json);
//   }

//   factory Problem.fromJson(Map json) {
//     DateTime timeStamp;
//     if (json['timestamp'] != null) {
//       timeStamp = DateTime.parse(json['timestamp']);
//     } else {
//       timeStamp = DateTime.now();
//     }

//     return Problem(
//       status: json['status'] ?? 0,
//       timestamp: timeStamp,
//       type: json['type'] ?? '',
//       detail: json['detail'] ?? '',
//       userMessage: json['userMessage'] ?? '',
//       campos: json['campos'] ?? List.empty(),
//     );
//   }
// }

// class Campo {
//   String name;
//   String userMessage;
//   Campo({
//     required this.name,
//     required this.userMessage,
//   });

//   factory Campo.fromJson(Map json) {
//     return Campo(
//       name: json['name'],
//       userMessage: json['userMessage'],
//     );
//   }

//   @override
//   String toString() => 'Campo(name: $name, userMessage: $userMessage)';
// }
