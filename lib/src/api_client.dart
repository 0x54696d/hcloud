import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'models/action_response.dart';
import 'models/ssh_key_response.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: 'https://api.hetzner.cloud/v1')
abstract class ApiClient {
  factory ApiClient(Dio dio) = _ApiClient;

  // Actions

  @GET('/actions')
  Future<ActionsResponse> getActions(@Queries() Map<String, dynamic>? queries);

  @GET('/actions/{id}')
  Future<ActionResponse> getAction(@Path('id') int id);

  // SSH Keys

  @GET('/ssh_keys')
  Future<SSHKeysResponse> getSSHKeys(@Queries() Map<String, dynamic>? queries);

  @GET('/ssh_keys/{id}')
  Future<SSHKeyResponse> getSSHKey(@Path('id') int id);

  @POST('/ssh_keys')
  Future<SSHKeyResponse> createSSHKey(@Body() Map<String, dynamic> body);

  @DELETE('/ssh_keys/{id}')
  Future<void> deleteSSHKey(@Path('id') int id);

  @PUT('/ssh_keys/{id}')
  Future<SSHKeyResponse> updateSSHKey(
      @Path('id') int id, @Body() Map<String, dynamic> body);
}
