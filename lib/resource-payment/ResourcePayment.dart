import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ResourcePaymentPage extends StatefulWidget {
  final String resourceId;
  final String resource;

  static const path = '/payment/register/:resource/:resourceId';

  const ResourcePaymentPage(
      {Key? key,
      @PathParam('resource') required this.resource,
      @PathParam('resourceId') required this.resourceId})
      : super(key: key);

  @override
  _ResourcePaymentPageState createState() => _ResourcePaymentPageState();
}

class _ResourcePaymentPageState extends State<ResourcePaymentPage> {
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
      children: [
        Row(
          children: [Text('resourceId: ${widget.resourceId}')],
        ),
        Row(
          children: [Text('resource: ${widget.resource}')],
        )
      ],
    )));
  }
}
