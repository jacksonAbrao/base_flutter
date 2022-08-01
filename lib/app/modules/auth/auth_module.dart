import 'package:base_flutter/app/modules/auth/home/auth_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
// import 'package:base_flutter/app/modules/auth/login/login_module.dart';
// import 'package:base_flutter/app/modules/auth/register/register_module.dart';
// import 'package:base_flutter/app/repositories/user/user_repository.dart';
// import 'package:base_flutter/app/repositories/user/user_repository_impl.dart';
// import 'package:base_flutter/app/services/users/user_service.dart';
// import 'package:base_flutter/app/services/users/user_service_impl.dart';

// import 'home/home/auth_home_page.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [
    // Bind.lazySingleton<UserRepository>((i) => UserRepositoryImpl(
    //       log: i(), //CoreModule
    //       restClient: i(), //CoreModule
    //     )),
    // Bind.lazySingleton<UserService>((i) => UserServiceImpl(
    //       log: i(), // CoreModule
    //       userRepository: i(), // AuthModule
    //       localStorage: i(), // CoreModule
    //       localSecureStorage: i(), // CoreModule
    //     )),
  ];
  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, __) => const AuthPage()),
      ];
}
