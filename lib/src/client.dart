import 'package:dio/dio.dart';

import 'api_client.dart';
import 'clients/actions_client.dart';
import 'clients/datacenters_client.dart';
import 'clients/locations_client.dart';
import 'clients/ssh_keys_client.dart';

class Client {
  late final ApiClient apiClient;
  final String token;
  int maxPerPage = 50;

  late ActionsClient actions;
  late SSHKeysClient sshKeys;
  late DatacentersClient datacenters;
  late LocationsClient locations;

  Client(this.token) {
    final dio = Dio();
    dio.options.headers['Authorization'] = 'Bearer $token';

    apiClient = ApiClient(dio);

    sshKeys = SSHKeysClient(this);
    actions = ActionsClient(this);
    datacenters = DatacentersClient(this);
    locations = LocationsClient(this);
  }
}
