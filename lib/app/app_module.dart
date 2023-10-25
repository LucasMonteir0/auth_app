import 'package:dio/dio.dart';
import 'package:auth_app/app/commons/config/routes.dart';
import 'package:auth_app/app/commons/services/app_http_client.dart';
import 'package:auth_app/app/commons/services/dio_client.dart';
import 'package:auth_app/app/core/datasource/authentication/authentication_datasource.dart';
import 'package:auth_app/app/core/datasource/authentication/authentication_datasource_impl.dart';
import 'package:auth_app/app/modules/authentication/pages/login_page.dart';
import 'package:auth_app/app/modules/authentication/pages/register_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    i.addInstance<Dio>(Dio());
    i.add<AppHttpClient>(DioClient.new);
    i.add<AuthenticationDatasource>(AuthenticationDatasourceImpl.new);

    super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    r.child(AppRoutes.login, child: (context) => const LoginPage());
    r.child(AppRoutes.register, child: (context) => const RegisterPage());
    super.routes(r);
  }
}