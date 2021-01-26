import 'dart:io';

import 'package:example/interactive_widget.dart';
import 'package:example/preview.dart';
import 'package:example/trimmer_view.dart';
import 'package:file_picker/file_picker.dart';

import 'package:flutter/material.dart';
import 'package:audio_video_trimmer/audio_video_trimmer.dart';

import 'trimmer_view copy.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Trimmer _trimmer = Trimmer();
  String outputPath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Trimmer"),
      ),
      body: ListView(
        children: [
          RaisedButton(
            child: Text("LOAD VIDEO"),
            onPressed: () async {
              FilePickerResult result = await FilePicker.platform.pickFiles(
                type: FileType.video,
                allowCompression: false,
              );
              if (result != null) {
                File file = File(result.files.single.path);
                print(file.path);
                await _trimmer.loadFile(
                    file: file, sourceType: SourceType.Video);
                outputPath = null;
                setState(() {});
                await Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return TrimmerView(_trimmer);
                  }),
                );
                setState(() {});
              }
            },
          ),
          if (outputPath != null)
            Container(height: 500, child: Preview(outputPath)),
          RaisedButton(
            child: Text("LOAD audio"),
            onPressed: () async {
              FilePickerResult result = await FilePicker.platform.pickFiles(
                type: FileType.audio,
                allowCompression: false,
              );
              if (result != null) {
                File file = File(result.files.single.path);
                print(file.path);
                await _trimmer.loadFile(
                    file: file, sourceType: SourceType.Audio);
                outputPath = null;
                setState(() {});
                await Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return TrimmerViewAudio(_trimmer);
                  }),
                );
                setState(() {});
              }
            },
          ),
          if (outputPath != null)
            Container(height: 500, child: Preview(outputPath)),
          RaisedButton(
            child: Text("Interact widget"),
            onPressed: () async {
              await Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return ScaleAndPan();
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ScaleAndPan extends StatefulWidget {
  @override
  _ScaleAndPanState createState() => _ScaleAndPanState();
}

class _ScaleAndPanState extends State<ScaleAndPan> {
  Offset position;
  double scale = 1;

  TextEditingController controller;
  double textfieldWidth = 100;
  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    controller.addListener(() {
      setState(() {
        textfieldWidth = controller.text.length * 5 + 50.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    position = position ??
        Offset(MediaQuery.of(context).size.width / 2,
            MediaQuery.of(context).size.height / 2 - 40);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: position.dy,
              left: position.dx,
              child: Transform.scale(
                scale: 1,
                child: PanAndScalingGestureRecognizer(
                  onPanEnd: () {},
                  onPanStart: (postition) {},
                  onPanUpdate: (initial, delta) {
                    if (delta != Offset(0, 0))
                      setState(() {
                        position = initial + delta;
                      });
                  },
                  onScalingEnd: () {},
                  onScalingStart: (global) {},
                  onScalingUpdate: (_, da) {
                    if (da != 1.0)
                      setState(() {
                        scale = da;
                      });
                  },
                  child: Container(
                    // height: 100,
                    width: controller.text.length * scale * .5 * 20.0,
                    constraints: BoxConstraints(
                        minWidth: 50,
                        maxWidth: MediaQuery.of(context).size.width - 100),
                    // color: Colors.red,
                    child: TextField(
                      cursorColor: Colors.green,
                      autofocus: true,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      controller: controller,
                      style: TextStyle(fontSize: scale * .5 * 40),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Colors.amber,
                        filled: true,
                        disabledBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 30,
              right: 20,
              child: Icon(
                Icons.text_fields,
                color: Colors.black,
              ),
            ),
            Positioned(
              top: 30,
              left: 20,
              child: InkWell(
                onTap: () {
                  var lol = DrawText(
                    text: "hello world",
                    fontsize: 25,
                    fontcolor: DrawTextColor.Green,
                    x: 200,
                    y: 200,
                  );

                  print(lol.command);
                },
                child: Icon(
                  Icons.done,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
