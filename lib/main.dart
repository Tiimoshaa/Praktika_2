import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Привет'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  TextEditingController Text1 = TextEditingController(text: 'Смородинов Тимофей Дмитриевич');
  TextEditingController Text2 = TextEditingController(text: 'БСБО-11-22');
  TextEditingController Text3 = TextEditingController(text: '22Б0402');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(controller: Text1),
            TextField(controller: Text2),
            TextField(controller: Text3),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () => _launchURL(Uri.parse('https://vk.com/dazacht0')),
              child: Text(
                'Мой ВК',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Future<void> _launchURL(Uri uri) async {
    await canLaunchUrl(uri);
  }
}