import 'package:dio/dio.dart';

import '../client.dart';
import '../error_handler.dart';
import '../models/location.dart';

class LocationsClient {
  final Client _client;

  LocationsClient(this._client);

  /// Returns all [Location] objects.
  Future<List<Location>?> getAll() async {
    List<Location> list = [];
    int page = 1;
    while (true) {
      try {
        final response = await _client.apiClient.getLocations({
          'page': page,
          'per_page': _client.maxPerPage,
        });
        list.addAll(response.locations);
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

  /// Returns a specific [Location] object by its [id].
  Future<Location> get(
    int id,
  ) async {
    try {
      final response = await _client.apiClient.getLocation(id);
      return response.location;
    } catch (e, _) {
      if (e is DioException) {
        throw ErrorHandler.dioException(e);
      }
      throw ErrorHandler.otherException();
    }
  }
}
