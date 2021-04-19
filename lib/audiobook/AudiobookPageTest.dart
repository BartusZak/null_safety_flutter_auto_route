import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AudiobookPageTest extends StatefulWidget {
  AudiobookPageTest(
      {Key? key,
      @PathParam('audiobookId') required this.audiobookId,
      @PathParam() this.preview = false})
      : super(key: key);

  final String audiobookId;
  bool preview;

  static const path = '/audiobookTest/:audiobookId';

  @override
  _AudiobookPageTestState createState() => _AudiobookPageTestState();
}

class _AudiobookPageTestState extends State<AudiobookPageTest> {
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
      children: [
        Row(
          children: [Text('AudiobookTest')],
        ),
        Row(
          children: [Text('audiobookId: ${widget.audiobookId}')],
        ),
        Row(
          children: [Text('preview: ${widget.preview}')],
        )
      ],
    )));
  }
}
