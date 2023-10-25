import 'package:auth_app/app/commons/services/app_http_client.dart';
import 'package:auth_app/app/core/datasource/authentication/authentication_datasource.dart';
import 'package:auth_app/app/core/model/register_model.dart';

class AuthenticationDatasourceImpl implements AuthenticationDatasource {
  final AppHttpClient _client;

  AuthenticationDatasourceImpl(this._client);

  @override
  Future<void> registerUser(RegisterModel register) async {
    try {
      final response = await _client.post('http://localhost:8080/auth/register',
          body: register.toJson());
    } catch (e) {
      throw Exception(e);
    }
  }
}