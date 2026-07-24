import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//Builds the Donate Page

class DonationPage extends StatelessWidget {
  const DonationPage({super.key});

  void _copyMoneroAddress(BuildContext context) {
    Clipboard.setData(ClipboardData(
        text:
            '86cQoPfKTJ2bRfGH5Ts2kzaXCRcVRiX8CUHKc9xmeUmQ8YM8Uzk9S97T5gQaqYu58C9wuFK7opDH7cM9EJyR4V5LAq9RGv4'));
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Walllet address copied to clipboard."),
      duration: Duration(seconds: 2),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Donate"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Donate XMR to Support this App",
                  style: TextStyle(fontSize: 21),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () => _copyMoneroAddress(context),
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/XMR.png'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Tap the QR Code to get copy the XMR Wallet Address.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
