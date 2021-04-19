import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:null_safety_flutter_auto_route/routing/AppRouter.gr.dart';

class RoomPage extends StatefulWidget {
  const RoomPage({@PathParam('roomId') this.roomId});

  static const path = '/rooms/:roomId';

  final String? roomId;

  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text('Room Page')],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('AudiobookPage'),
              onPressed: _onItemTap,
            )
          ],
        )
      ],
    )));
  }

  void _onItemTap() async {
    AutoRouter.of(context).navigate(AudiobookRoute(audiobookId: '10'));
  }
}
