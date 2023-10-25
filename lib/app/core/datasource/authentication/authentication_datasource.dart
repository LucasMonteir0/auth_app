import 'package:auth_app/app/core/model/register_model.dart';

abstract class AuthenticationDatasource {

  Future<void> registerUser(RegisterModel register);

}