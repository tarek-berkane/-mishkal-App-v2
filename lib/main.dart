import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/state_manager.dart' as GetX;
import 'package:google_fonts/google_fonts.dart';
import 'package:mishkal_app_new/screens/home_screen.dart';
import 'package:get/instance_manager.dart' as g;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      textDirection: TextDirection.rtl,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: GoogleFonts.tajawal().fontFamily,
        textTheme: TextTheme(),
        primarySwatch: Colors.blue,
      ),
      locale: Locale('ar'),
      home: Home(),
    );
  }
}

class Controller extends GetX.GetxController {
  var count = 0.obs;
  increment() => count++;

  @override
  void onInit() {
    super.onInit();
  }
}

class Home2 extends StatelessWidget {
  @override
  Widget build(context) {
    // Instantiate your class using Get.put() to make it available for all "child" routes there.
    final Controller c = g.Get.put(Controller());

    return Scaffold(
        // Use Obx(()=> to update Text() whenever count is changed.
        appBar: AppBar(title: GetX.Obx(() => Text("Clicks: ${c.count}"))),

        // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
        body: Center(
            child: RaisedButton(
                child: Text("Go to Other"),
                onPressed: () => g.Get.to(Other()))),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add), onPressed: c.increment));
  }
}

class Other extends StatelessWidget {
  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final Controller c = g.Get.find();

  @override
  Widget build(context) {
    // Access the updated count variable
    return Scaffold(body: Center(child: Text("${c.count}")));
  }
}
