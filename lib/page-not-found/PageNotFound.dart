import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:null_safety_flutter_auto_route/routing/AppRouter.gr.dart';

class PageNotFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      AutoRouter.of(context).navigate(RoomRoute(roomId: 'main'));
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '404',
              style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
            ),
            Text("Sorry, we couldn't find this page.",
                textAlign: TextAlign.center, style: TextStyle(fontSize: 30)),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('You are going to be redirected to')),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                ),
                onPressed: () =>
                    AutoRouter.of(context).navigate(RoomRoute(roomId: 'main')),
                child: Text('Home Page'))
          ],
        ),
      ),
    );
  }
}
