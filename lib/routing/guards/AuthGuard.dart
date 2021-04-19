import 'package:auto_route/auto_route.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  Future<bool> canNavigate(
      List<PageRouteInfo> pendingRoutes, StackRouter router) async {
    // final SharedPreferencesManager _sharedPreferencesManager =
    //     locator<SharedPreferencesManager>();

    bool isAuthenticated = true;
    // bool isAuthenticated = _sharedPreferencesManager
    //     .getBool(SharedPreferencesManager.isUserAuthenticated);

    if (!isAuthenticated) {
      // router.root.push(LoginRoute(onLoginResult: (success) {
      //   if (success) {
      //     router.replaceAll(pendingRoutes);
      //   }
      // }));

      // return false;
    }

    return true;
  }
}
