// import 'dart:convert';
import 'dart:io';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:share_plus/share_plus.dart';

class QrPage extends StatefulWidget {
  const QrPage({super.key, required this.data});
  final String data;

  @override
  State<QrPage> createState() => _QrPageState();
}

class _QrPageState extends State<QrPage> {
  GlobalKey qrKey = GlobalKey();
  void shareQR() async {
    try {
      RenderRepaintBoundary boundary = qrKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
      final image = await boundary.toImage(pixelRatio: 4.0);
      final byteData = await image.toByteData(format: ImageByteFormat.png);
      final pngBytes = byteData!.buffer.asUint8List();
      if (kDebugMode) {
        print(pngBytes);
      }
      final tempDir = await getTemporaryDirectory();
      final file = await File('${tempDir.path}/QR_Code.png').create();
      await file.writeAsBytes(pngBytes);

      final xFile = XFile(file.path, name: "QR_Code.png", mimeType: "image/png");
      SharePlus.instance.share(ShareParams(title: "QR Code", files: [xFile]));
    } catch (exception) {
      if (kDebugMode) {
        print(exception);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Center(
          //     child: Column(
          //       children: [
          //         for (MapEntry entry in (jsonDecode(widget.data) as Map<String, dynamic>).entries) Text("${entry.key}: ${entry.value}", style: TextStyle(fontSize: 18),)
          //       ],
          //     )
          // // ),
          // SizedBox(height: 80,),
          // Center(child: Text("Quick Response Code", style: TextStyle(fontSize: 24),)),
          Center(
            child: RepaintBoundary(
              key: qrKey,
              child: Stack(
                children: [
                  Container(width: 300, height: 300, decoration: BoxDecoration(color:
                  //TODO change color
                  Colors.tealAccent, borderRadius: BorderRadius.circular(20)),),
                  InkWell(
                      onLongPress: () => debugPrint("data: ${widget.data}"),
                      child: Container(
                        alignment: Alignment.center,
                        width: 300,
                        height: 300,
                        child: QrImageView(
                          data: widget.data,
                          version: QrVersions.auto,
                          size: 250,
                          errorCorrectionLevel: QrErrorCorrectLevel.M,
                        ),
                      )
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),
          Center(
              child: Container(
                  height: 40,
                  width: 300,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    spacing: 10,
                    children: [
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color:
                        //TODO change color
                        Colors.grey,),
                        width: 40,
                        height: 40,
                        child: IconButton(onPressed: () => {}, icon: Icon(Icons.copy)),
                      ),
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color:
                        //TODO change color
                        Colors.grey,),
                        width: 40,
                        height: 40,
                        child: IconButton(onPressed: shareQR, icon: Icon(Icons.share)),
                      )
                    ],
                  )
              )
          )
        ]
    );
  }
}



//
// class QRPage extends StatefulWidget {
//   const QRPage({super.key, required this.data});
//
//   final String data;
//   static const _image = '';
//
//   @override
//   State<QRPage> createState() => _QRPageState();
// }
//
// class _QRPageState extends State<QRPage> {
//
//   GlobalKey qrKey = GlobalKey();
//
//   void shareQR() async {
//     try {
//       RenderRepaintBoundary boundary = qrKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
//       final image = await boundary.toImage(pixelRatio: 4.0);
//       final byteData = await image.toByteData(format: ImageByteFormat.png);
//       final pngBytes = byteData!.buffer.asUint8List();
//       print("${pngBytes}");
//       final tempDir = await getTemporaryDirectory();
//       final file = await File('${tempDir.path}/QR_Code.png').create();
//       await file.writeAsBytes(pngBytes);
//
//       final xFile = XFile(file.path, name: "QR_Code.png", mimeType: "image/png");
//       SharePlus.instance.share(ShareParams(title: "QR Code", files: [xFile]));
//     } catch (exception) {
//       print("${exception}");
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: backgroundColor,
//       appBar: AppBar(
//         backgroundColor: backgroundColor,
//         leading: IconButton(
//           onPressed: () {},
//           icon: Icon(Icons.menu_rounded, color: primaryColor, size: 24),
//         ),
//         title: Text("User Profile", style: TextStyle(color: secondaryColor, fontSize: 24),),
//         actions: [
//           Row(
//             children: [
//               TextButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => ProfilePage()),
//                   );
//                 },
//                 style: ButtonStyle(
//                   backgroundColor: WidgetStateProperty.all(backgroundColor),
//                   shadowColor: WidgetStateProperty.all(backgroundColor),
//                   overlayColor: WidgetStateProperty.all(backgroundColor),
//                   shape: WidgetStateProperty.all(
//                     RoundedRectangleBorder(borderRadius: BorderRadius.zero),
//                   ),
//                 ),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Tester',
//                       style: TextStyle(color: primaryColor, fontSize: 14),
//                     ),
//                     Text(
//                       'Tester-ID',
//                       style: TextStyle(color: secondaryColor, fontSize: 10),
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(999),
//                   ),
//                   child: InkWell(
//                     borderRadius: BorderRadius.circular(999),
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => ProfilePage()),
//                       );
//                     },
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: primaryColor,
//                         borderRadius: BorderRadius.circular(999),
//                       ),
//                       child: kDebugMode
//                           ? SizedBox(
//                               height: 29,
//                               width: 29,
//                               child: Icon(
//                                 Icons.person,
//                                 color: Colors.white,
//                                 size: 24,
//                               ),
//                             )
//                           : CircleAvatar(backgroundImage: NetworkImage(QRPage._image)),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         mainAxisSize: MainAxisSize.max,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(
//             child: Column(
//               children: [
//                 for (MapEntry entry in (jsonDecode(widget.data) as Map<String, dynamic>).entries) Text("${entry.key}: ${entry.value}", style: TextStyle(fontSize: 18),)
//               ],
//             )
//           ),
//           SizedBox(height: 80,),
//           Center(child: Text("Quick Response Code", style: TextStyle(fontSize: 24),)),
//           Center(
//             child: RepaintBoundary(
//               key: qrKey,
//               child: Stack(
//                 children: [
//                   Container(width: 300, height: 300, decoration: BoxDecoration(color: Colors.teal, borderRadius: BorderRadius.circular(20)),),
//                   InkWell(
//                     onLongPress: () => debugPrint("data: ${widget.data}"),
//                     child: Container(
//                       alignment: Alignment.center,
//                       width: 300,
//                       height: 300,
//                       child: QrImageView(
//                         data: widget.data,
//                         version: QrVersions.auto,
//                         size: 250,
//                         errorCorrectionLevel: QrErrorCorrectLevel.M,
//                       ),
//                     )
//                   )
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(height: 15,),
//           Center(
//             child: Container(
//               height: 40,
//               width: 300,
//               alignment: Alignment.center,
//               child: Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               spacing: 10,
//               children: [
//                 Container(
//                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.grey,),
//                   width: 40,
//                   height: 40,
//                   child: IconButton(onPressed: () => {}, icon: Icon(Icons.copy)),
//                 ),
//                 Container(
//                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.grey,),
//                   width: 40,
//                   height: 40,
//                   child: IconButton(onPressed: shareQR, icon: Icon(Icons.share)),
//                 )
//               ],
//             )
//             )
//           )
//         ]
//       )
//       // bottomNavigationBar: NavigationBar(destinations: [],),
//     );
//   }
// }

