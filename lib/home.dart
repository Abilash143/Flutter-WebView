import 'package:flutter/material.dart';
import './web_view_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:
              Text('Web View', style: GoogleFonts.roboto(color: Colors.white))),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _textController,
                decoration:
                    InputDecoration(labelText: 'Enter any Website Url link'),
              ),
            ),
            SizedBox(height: 20),
            RaisedButton(
              child:
                  Text('View', style: GoogleFonts.roboto(color: Colors.white)),
              color: Colors.blue,
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WebViewScreen(_textController.text))),
            ),
          ],
        ),
      ),
    );
  }
}
