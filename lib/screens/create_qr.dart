import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class CreateScreen extends StatefulWidget {
  @override
  _CreateScreenState createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  var qrDetails = 'Add Data';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Creating QR code',
            style: TextStyle(color: Colors.white)
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              BarcodeWidget(
                data: qrDetails,
                barcode: Barcode.qrCode(),
                color: Colors.white,
                height: 250,
                width: 250,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * .8,
                child: TextField(
                  onChanged: (val) {
                    setState(() {
                      qrDetails = val;
                    });
                  },
                  decoration: InputDecoration(
                      hintText: 'Enter your data here',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
