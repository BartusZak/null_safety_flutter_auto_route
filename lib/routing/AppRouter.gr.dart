// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i9;

import '../audiobook/AudiobookPage.dart' as _i6;
import '../audiobook/AudiobookPageTest.dart' as _i5;
import '../page-not-found/PageNotFound.dart' as _i8;
import '../resource-payment/ResourcePayment.dart' as _i7;
import '../room/RoomPage.dart' as _i4;
import 'guards/AudiobookAccessGuard.dart' as _i3;
import 'guards/AuthGuard.dart' as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter({required this.authGuard, required this.audiobookAccessGuard});

  final _i2.AuthGuard authGuard;

  final _i3.AudiobookAccessGuard audiobookAccessGuard;

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    RoomRoute.name: (entry) {
      var pathParams = entry.routeData.pathParams;
      var args = entry.routeData.argsAs<RoomRouteArgs>(
          orElse: () => RoomRouteArgs(roomId: pathParams.optString('roomId')));
      return _i1.MaterialPageX(
          entry: entry, child: _i4.RoomPage(roomId: args.roomId));
    },
    AudiobookRouteTest.name: (entry) {
      var pathParams = entry.routeData.pathParams;
      var args = entry.routeData.argsAs<AudiobookRouteTestArgs>(
          orElse: () => AudiobookRouteTestArgs(
              audiobookId: pathParams.getString('audiobookId'),
              preview: pathParams.getBool('preview', false)));
      return _i1.MaterialPageX(
          entry: entry,
          child: _i5.AudiobookPageTest(
              key: args.key,
              audiobookId: args.audiobookId,
              preview: args.preview));
    },
    AudiobookRoute.name: (entry) {
      var pathParams = entry.routeData.pathParams;
      var args = entry.routeData.argsAs<AudiobookRouteArgs>(
          orElse: () => AudiobookRouteArgs(
              audiobookId: pathParams.getString('audiobookId'),
              preview: pathParams.getBool('preview', false)));
      return _i1.MaterialPageX(
          entry: entry,
          child: _i6.AudiobookPage(
              key: args.key,
              audiobookId: args.audiobookId,
              preview: args.preview));
    },
    ResourcePaymentRoute.name: (entry) {
      var pathParams = entry.routeData.pathParams;
      var args = entry.routeData.argsAs<ResourcePaymentRouteArgs>(
          orElse: () => ResourcePaymentRouteArgs(
              resource: pathParams.getString('resource'),
              resourceId: pathParams.getString('resourceId')));
      return _i1.MaterialPageX(
          entry: entry,
          child: _i7.ResourcePaymentPage(
              key: args.key,
              resource: args.resource,
              resourceId: args.resourceId));
    },
    RouteNotFound.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i8.PageNotFound());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig('/#redirect',
            path: '/', redirectTo: '/rooms/main', fullMatch: true),
        _i1.RouteConfig(RoomRoute.name, path: '/rooms/:roomId'),
        _i1.RouteConfig(AudiobookRouteTest.name,
            path: '/audiobookTest/:audiobookId'),
        _i1.RouteConfig(AudiobookRoute.name,
            path: '/audiobook/:audiobookId',
            guards: [authGuard, audiobookAccessGuard]),
        _i1.RouteConfig(ResourcePaymentRoute.name,
            path: '/payment/register/:resource/:resourceId'),
        _i1.RouteConfig(RouteNotFound.name, path: '*')
      ];
}

class RoomRoute extends _i1.PageRouteInfo<RoomRouteArgs> {
  RoomRoute({String? roomId})
      : super(name,
            path: '/rooms/:roomId',
            args: RoomRouteArgs(roomId: roomId),
            params: {'roomId': roomId});

  static const String name = 'RoomRoute';
}

class RoomRouteArgs {
  const RoomRouteArgs({this.roomId});

  final String? roomId;
}

class AudiobookRouteTest extends _i1.PageRouteInfo<AudiobookRouteTestArgs> {
  AudiobookRouteTest(
      {_i9.Key? key, required String audiobookId, bool preview = false})
      : super(name,
            path: '/audiobookTest/:audiobookId',
            args: AudiobookRouteTestArgs(
                key: key, audiobookId: audiobookId, preview: preview),
            params: {'audiobookId': audiobookId, 'preview': preview});

  static const String name = 'AudiobookRouteTest';
}

class AudiobookRouteTestArgs {
  const AudiobookRouteTestArgs(
      {this.key, required this.audiobookId, this.preview = false});

  final _i9.Key? key;

  final String audiobookId;

  final bool preview;
}

class AudiobookRoute extends _i1.PageRouteInfo<AudiobookRouteArgs> {
  AudiobookRoute(
      {_i9.Key? key, required String audiobookId, bool preview = false})
      : super(name,
            path: '/audiobook/:audiobookId',
            args: AudiobookRouteArgs(
                key: key, audiobookId: audiobookId, preview: preview),
            params: {'audiobookId': audiobookId, 'preview': preview});

  static const String name = 'AudiobookRoute';
}

class AudiobookRouteArgs {
  const AudiobookRouteArgs(
      {this.key, required this.audiobookId, this.preview = false});

  final _i9.Key? key;

  final String audiobookId;

  final bool preview;
}

class ResourcePaymentRoute extends _i1.PageRouteInfo<ResourcePaymentRouteArgs> {
  ResourcePaymentRoute(
      {_i9.Key? key, required String resource, required String resourceId})
      : super(name,
            path: '/payment/register/:resource/:resourceId',
            args: ResourcePaymentRouteArgs(
                key: key, resource: resource, resourceId: resourceId),
            params: {'resource': resource, 'resourceId': resourceId});

  static const String name = 'ResourcePaymentRoute';
}

class ResourcePaymentRouteArgs {
  const ResourcePaymentRouteArgs(
      {this.key, required this.resource, required this.resourceId});

  final _i9.Key? key;

  final String resource;

  final String resourceId;
}

class RouteNotFound extends _i1.PageRouteInfo {
  const RouteNotFound() : super(name, path: '*');

  static const String name = 'RouteNotFound';
}
