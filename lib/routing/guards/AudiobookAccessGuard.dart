import 'package:auto_route/auto_route.dart';

import '../AppRouter.gr.dart';

class AudiobookAccessGuard extends AutoRouteGuard {
  @override
  Future<bool> canNavigate(
      List<PageRouteInfo> pendingRoutes, StackRouter router) async {
    final String audiobookId = pendingRoutes[0].params['audiobookId'];

    router.root.push(
        ResourcePaymentRoute(resource: 'audiobook', resourceId: audiobookId));

    return false;
  }
}
