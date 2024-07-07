import 'package:dio/dio.dart';
import 'package:hcloud/src/clients/ssh_keys_client.dart';

import 'api_client.dart';

class Client {
  late final ApiClient restClient;
  final String token;
  int maxPerPage = 50;

  late SSHKeysClient sshKeys;

  Client(this.token) {
    final dio = Dio();
    dio.options.headers['Authorization'] = 'Bearer $token';

    restClient = ApiClient(dio);

    sshKeys = SSHKeysClient(this);
  }
}
