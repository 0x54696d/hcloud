import 'package:dio/dio.dart';

import '../client.dart';
import '../error_handler.dart';
import '../models/datacenter.dart';

class DatacentersClient {
  final Client _client;

  DatacentersClient(this._client);

  /// Returns all [Datacenter] objects.
  Future<List<Datacenter>?> getAll() async {
    List<Datacenter> list = [];
    int page = 1;
    while (true) {
      try {
        final response = await _client.apiClient.getDatacenters({
          'page': page,
          'per_page': _client.maxPerPage,
        });
        list.addAll(response.datacenters);
        if (response.meta.pagination.nextPage == null) {
          break;
        }
        page++;
      } catch (e, _) {
        if (e is DioException) {
          throw ErrorHandler.dioException(e);
        }
        throw ErrorHandler.otherException();
      }
    }
    return list;
  }

  /// Returns a specific [Datacenter] object by its [id].
  Future<Datacenter> get(
    int id,
  ) async {
    try {
      final response = await _client.apiClient.getDatacenter(id);
      return response.datacenter;
    } catch (e, _) {
      if (e is DioException) {
        throw ErrorHandler.dioException(e);
      }
      throw ErrorHandler.otherException();
    }
  }
}
