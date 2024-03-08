import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dhruv_prac/const/app_strings.dart';
import 'package:http/http.dart' as http;

import 'app_exception.dart';

enum apiType { aPost, aGet }

class APIService {
  var response;

  Future fetchApi(
      {required String url,
      required apiType type,
      Map<String, dynamic>? body,
      Map<String, String>? header,
      bool fileUpload = false}) async {
    Map<String, String> headers = {};

    try {
      if (type == apiType.aGet) {
        final result = await http.get(Uri.parse(url), headers: headers);
        response = returnResponse(result.statusCode, result.body);
        log("RES status code ${result.statusCode}");
        log("res${result.body}");
      } else /*if (apiType == apiType.aPost)*/ {
        print("REQUEST PARAMETER url  $url");
        print("REQUEST PARAMETER $body");

        final result = await http.post(Uri.parse(url),
            body: json.encode(body), headers: headers);
        print("resp${result.body}");
        response = returnResponse(result.statusCode, result.body);
        print(result.statusCode);
      }
    } on SocketException {
      throw FetchDataException(ExceptionStrings.noInternet);
    }

    return response;
  }

  returnResponse(int status, String result) {
    switch (status) {
      case 200:
        return jsonDecode(result);
      case 201:
        return jsonDecode(result);
      case 400:
        throw BadRequestException(ExceptionStrings.badRequest);
      case 401:
        throw UnauthorisedException(ExceptionStrings.unauthorisedUser);
      case 404:
        throw ServerException(ExceptionStrings.serverError);
      case 500:
      default:
        throw FetchDataException(ExceptionStrings.internalServerError);
    }
  }
}
