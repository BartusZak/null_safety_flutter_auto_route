import 'package:auto_route/auto_route.dart';
import 'package:null_safety_flutter_auto_route/audiobook/AudiobookPage.dart';
import 'package:null_safety_flutter_auto_route/audiobook/AudiobookPageTest.dart';
import 'package:null_safety_flutter_auto_route/resource-payment/ResourcePayment.dart';
import 'package:null_safety_flutter_auto_route/room/RoomPage.dart';

import '../page-not-found/PageNotFound.dart';
import 'guards/AudiobookAccessGuard.dart';
import 'guards/AuthGuard.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    RedirectRoute(
      path: '/',
      redirectTo: '/rooms/main',
    ),
    AutoRoute(path: RoomPage.path, page: RoomPage),
    AutoRoute(path: AudiobookPageTest.path, page: AudiobookPageTest),
    AutoRoute(
        path: AudiobookPage.path,
        page: AudiobookPage,
        guards: [AuthGuard, AudiobookAccessGuard]),
    AutoRoute(path: ResourcePaymentPage.path, page: ResourcePaymentPage),
    AutoRoute(path: '*', page: PageNotFound),
  ],
)
class $AppRouter {}
