import 'package:flutter/material.dart';
//import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:scannerapp/screens/scan_qr.dart';
import 'package:scannerapp/screens/create_qr.dart';
import 'package:scannerapp/screens/widgets/main_content.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var qrDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'QR Scanner',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MainButtons(
              onClick: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (ctx) => ScanScreen()));
              },
              buttonName: 'Scan QR',
            ),

            SizedBox(height: 30,),

            MainButtons(
                onClick: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => CreateScreen()));
                },
                buttonName: 'Create QR'),
            SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}
