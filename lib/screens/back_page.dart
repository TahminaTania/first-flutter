import 'package:flutter/material.dart';
import 'package:ui_practice/screens/qr_image.dart';

class BackPage extends StatelessWidget {
  const BackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Back Side Of Card"),
        ),
        body: Column(
          children: [
            Container(
                margin: const EdgeInsets.all(20),
                child: TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter your URL'),
                )),
            ElevatedButton(
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) {
                        return QRImage(controller);
                      }),
                    ),
                  );
                },
                child: Text("Generate"))
          ],
        ),
      ),
    );
  }
}
