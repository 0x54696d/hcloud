import 'package:dio/dio.dart';

import '../client.dart';
import '../error_handler.dart';
import '../models/action.dart';

class ActionsClient {
  final Client _client;

  ActionsClient(this._client);

  /// Returns all [Action] objects.
  Future<List<Action>?> getAll() async {
    List<Action> list = [];
    int page = 1;
    while (true) {
      try {
        final response = await _client.apiClient.getActions({
          'page': page,
          'per_page': _client.maxPerPage,
        });
        list.addAll(response.actions);
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

  /// Returns a specific [Action] object by its [id].
  Future<Action> get(
    int id,
  ) async {
    try {
      final response = await _client.apiClient.getAction(id);
      return response.action;
    } catch (e, _) {
      if (e is DioException) {
        throw ErrorHandler.dioException(e);
      }
      throw ErrorHandler.otherException();
    }
  }
}
