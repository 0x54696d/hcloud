import 'package:dio/dio.dart';

import 'api_client.dart';
import 'clients/actions_client.dart';
import 'clients/ssh_keys_client.dart';

class Client {
  late final ApiClient restClient;
  final String token;
  int maxPerPage = 50;

  late ActionsClient actions;
  late SSHKeysClient sshKeys;

  Client(this.token) {
    final dio = Dio();
    dio.options.headers['Authorization'] = 'Bearer $token';

    restClient = ApiClient(dio);

    sshKeys = SSHKeysClient(this);
    actions = ActionsClient(this);
  }
}
