import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:openapi/model/warranty_history_dto.dart';

class WarrantyHistoryResourceApi {
    final Dio _dio;
    Serializers _serializers;

    WarrantyHistoryResourceApi(this._dio, this._serializers);

        /// createWarrantyHistory
        ///
        /// 
        Future<Response<WarrantyHistoryDTO>>createWarrantyHistoryUsingPOST(WarrantyHistoryDTO warrantyHistoryDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/warranty-histories";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(warrantyHistoryDTO);
            var jsonwarrantyHistoryDTO = json.encode(serializedBody);
            bodyData = jsonwarrantyHistoryDTO;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(WarrantyHistoryDTO);
        var data = _serializers.deserializeWith<WarrantyHistoryDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<WarrantyHistoryDTO>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// deleteWarrantyHistory
        ///
        /// 
        Future<Response>deleteWarrantyHistoryUsingDELETE(int id,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/warranty-histories/{id}".replaceAll("{" r'id' "}", id.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'delete'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            );
            }
        /// getAllWarrantyHistories
        ///
        /// 
        Future<Response<List<WarrantyHistoryDTO>>>getAllWarrantyHistoriesUsingGET({ int page,int size,List<String> sort,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/warranty-histories";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                queryParams[r'page'] = page;
                queryParams[r'size'] = size;
                queryParams[r'sort'] = sort;
        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'get'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

                final FullType type = const FullType(BuiltList, const [const FullType(WarrantyHistoryDTO)]);
                BuiltList<WarrantyHistoryDTO> dataList = _serializers.deserialize(response.data is String ? jsonDecode(response.data) : response.data, specifiedType: type);
                var data = dataList.toList();

            return Response<List<WarrantyHistoryDTO>>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// getWarrantyHistory
        ///
        /// 
        Future<Response<WarrantyHistoryDTO>>getWarrantyHistoryUsingGET(int id,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/warranty-histories/{id}".replaceAll("{" r'id' "}", id.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'get'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(WarrantyHistoryDTO);
        var data = _serializers.deserializeWith<WarrantyHistoryDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<WarrantyHistoryDTO>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// updateWarrantyHistory
        ///
        /// 
        Future<Response<WarrantyHistoryDTO>>updateWarrantyHistoryUsingPUT(WarrantyHistoryDTO warrantyHistoryDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/warranty-histories";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(warrantyHistoryDTO);
            var jsonwarrantyHistoryDTO = json.encode(serializedBody);
            bodyData = jsonwarrantyHistoryDTO;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'put'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(WarrantyHistoryDTO);
        var data = _serializers.deserializeWith<WarrantyHistoryDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<WarrantyHistoryDTO>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        }
