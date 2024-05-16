import 'dart:convert';
import 'package:flutter/foundation.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Met Museum API Group Code

class MetMuseumAPIGroup {
  static String getBaseUrl() =>
      'https://collectionapi.metmuseum.org/public/collection/v1';
  static Map<String, String> headers = {};
  static GetArtPieceCall getArtPieceCall = GetArtPieceCall();
  static SearchArtCall searchArtCall = SearchArtCall();
  static GetDepartmentsCall getDepartmentsCall = GetDepartmentsCall();
  static DepartmentsHighlightsCall departmentsHighlightsCall =
      DepartmentsHighlightsCall();
}

class GetArtPieceCall {
  Future<ApiCallResponse> call({
    String? objectID = '',
  }) async {
    final baseUrl = MetMuseumAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Art Piece',
      apiUrl: '$baseUrl/objects/$objectID',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchArtCall {
  Future<ApiCallResponse> call({
    String? q = '',
  }) async {
    final baseUrl = MetMuseumAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Search Art ',
      apiUrl: '$baseUrl/search',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'q': q,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDepartmentsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = MetMuseumAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Departments',
      apiUrl: '$baseUrl/departments',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DepartmentsHighlightsCall {
  Future<ApiCallResponse> call({
    int? departmentid,
    bool? isHighLight = true,
    String? q = '*',
  }) async {
    final baseUrl = MetMuseumAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Departments Highlights',
      apiUrl: '$baseUrl/search',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'departmentid': departmentid,
        'isHighlight': isHighLight,
        'q': q,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Met Museum API Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
