import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: "İlham ver"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var ekranbilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranbilgisi.size.height;
    final double ekranGenisligi = ekranbilgisi.size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            SizedBox(
                width: ekranGenisligi / 1,
                child: Image.asset("assets/images/image.jpg")),
            Text("Albert Einstein",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: ekranGenisligi / 25,
                )),
            const Text(
              "Cevapları olan değil soruları olan insanları dinleyin.",
              style: TextStyle(fontSize: 18),
            ),
            ElevatedButton(onPressed: () {}, child: const Text("İLHAM VER")),
          ],
        ));
  }
}
