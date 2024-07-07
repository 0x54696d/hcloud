import 'package:dio/dio.dart';

import '../client.dart';
import '../error_handler.dart';
import '../models/ssh_key.dart';

class SSHKeysClient {
  final Client _client;

  SSHKeysClient(this._client);

  /// Returns all [SSHKey] objects.
  Future<List<SSHKey>?> getAll() async {
    List<SSHKey> list = [];
    int page = 1;
    while (true) {
      try {
        final response = await _client.apiClient.getSSHKeys({
          'page': page,
          'per_page': _client.maxPerPage,
        });
        list.addAll(response.sshKeys);
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

  /// Returns a specific [SSHKey] object by its [id].
  Future<SSHKey> get(
    int id,
  ) async {
    try {
      final response = await _client.apiClient.getSSHKey(id);
      return response.sshKey;
    } catch (e, _) {
      if (e is DioException) {
        throw ErrorHandler.dioException(e);
      }
      throw ErrorHandler.otherException();
    }
  }

  /// Creates a new SSH key with the given [name] and [publicKey].
  ///
  /// Optionally, you can add [labels] to the SSH key.
  /// Once an [SSHKey] is created, it is returned and can be used in other calls such as creating Servers.
  Future<SSHKey> create({
    required String name,
    required String publicKey,
    Map<String, String>? labels,
  }) async {
    final body = {
      'name': name,
      'public_key': publicKey,
      if (labels != null) 'labels': labels,
    };

    try {
      final response = await _client.apiClient.createSSHKey(body);
      return response.sshKey;
    } catch (e, _) {
      if (e is DioException) {
        throw ErrorHandler.dioException(e);
      }
      throw ErrorHandler.otherException();
    }
  }

  /// Deletes an [SSHKey] by its [id].
  ///
  ///  It cannot be used anymore.
  Future<void> delete(
    int id,
  ) async {
    try {
      await _client.apiClient.deleteSSHKey(id);
    } catch (e, _) {
      if (e is DioException) {
        throw ErrorHandler.dioException(e);
      }
      throw ErrorHandler.otherException();
    }
  }

  /// Updates the SSH key with the given [id].
  ///
  /// You can update the [name] and [labels] of the SSH key. At least one of them must be provided.
  /// Please note that when updating labels, the SSH key current set of labels will be replaced with the labels
  /// provided in the request body. So, for example, if you want to add a new label, you have to provide all
  /// existing labels plus the new label in the request body.
  Future<SSHKey> update(
    int id, {
    String? name,
    Map<String, String>? labels,
  }) async {
    if (name == null && labels == null) {
      throw ArgumentError('At least one of name or labels must be provided');
    }

    final body = {
      if (name != null) 'name': name,
      if (labels != null) 'labels': labels,
    };

    try {
      final response = await _client.apiClient.updateSSHKey(id, body);
      return response.sshKey;
    } catch (e, _) {
      if (e is DioException) {
        throw ErrorHandler.dioException(e);
      }
      throw ErrorHandler.otherException();
    }
  }
}
