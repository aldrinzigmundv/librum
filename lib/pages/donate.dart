import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:librum/data/verses.dart';

//Builds the Donate Page

class DonatePage extends StatelessWidget {
  DonatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple.shade700,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text("Donate", style: const TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  child: Text(
                    "Donate XMR to Support this App",
                    style: TextStyle(fontSize: 21),
                  ),
                  margin: EdgeInsets.fromLTRB(0, 30.00, 0, 15.0)),
              GestureDetector(
                onTap: () {
                  Clipboard.setData(ClipboardData(
                      text:
                          '86cQoPfKTJ2bRfGH5Ts2kzaXCRcVRiX8CUHKc9xmeUmQ8YM8Uzk9S97T5gQaqYu58C9wuFK7opDH7cM9EJyR4V5LAq9RGv4'));
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Verse copied to clipboard."),
                    duration: Duration(seconds: 2),
                  ));
                },
                child: Card(
                  child: Container(
                    child: Image.asset('assets/images/XMR.png'),
                  ),
                ),
              ),
              Container(
                  child: Text(
                    "Tap the QR Code to get the XMR Wallet Address.",
                    style: TextStyle(fontSize: 15),
                  ),
                  margin: EdgeInsets.fromLTRB(0, 10.0, 0, 0)),
            ],
          ),
        ),
      ),
    );
  }
}
