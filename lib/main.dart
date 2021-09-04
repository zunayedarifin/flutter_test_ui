import 'package:flutter/material.dart';
import 'package:flutter_test_ui/widget/custom_widget/clip_rect.dart';

import 'widget/button_widget.dart';
import 'widget/navigation_drawer_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Pulse'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          //https://pulseservicesbd.com/upload/ad_image/banner.jpeg
          title: Text(widget.title),
        ),
        body: Builder(
          builder: (context) => Container(
            color: Color.fromRGBO(232, 234, 244, 1),
            child: Column(
              children: [
                ClipRectBanner(), // first banner instant doctor

                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'doctor service',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 8.0, 0),
                              child: Container(
                                width: 120,
                                height: 120,
                                child: Column(
                                  children: [
                                    NavigationDrawerWidget().buildMenuItemVertical(
                                      text: 'doctor',
                                      icon: 'assets/ic_doctor.svg',
                                      //onClicked: () => selectedItem(context, 0),
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 8.0, 0),
                              child: Container(
                                width: 120,
                                height: 120,
                                child: Column(
                                  children: [
                                    NavigationDrawerWidget().buildMenuItemVertical(
                                      text: 'specialised doctor',
                                      icon: 'assets/ic_doctor.svg',
                                      //onClicked: () => selectedItem(context, 0),
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 8.0, 0),
                              child: Container(
                                width: 120,
                                height: 120,
                                child: Column(
                                  children: [
                                    NavigationDrawerWidget().buildMenuItemVertical(
                                      text: 'doctor call',
                                      icon: 'assets/ic_doctor.svg',
                                      //onClicked: () => selectedItem(context, 0),
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'other services',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 8.0, 0),
                              child: Container(
                                width: 120,
                                height: 120,
                                child: Column(
                                  children: [
                                    NavigationDrawerWidget().buildMenuItemVertical(
                                      text: 'online pharmacy',
                                      icon: 'assets/ic_doctor.svg',
                                      //onClicked: () => selectedItem(context, 0),
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 8.0, 0),
                              child: Container(
                                width: 120,
                                height: 120,
                                child: Column(
                                  children: [
                                    NavigationDrawerWidget().buildMenuItemVertical(
                                      text: 'lab test',
                                      icon: 'assets/ic_doctor.svg',
                                      //onClicked: () => selectedItem(context, 0),
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 8.0, 0),
                              child: Container(
                                width: 120,
                                height: 120,
                                child: Column(
                                  children: [
                                    NavigationDrawerWidget().buildMenuItemVertical(
                                      text: 'corona',
                                      icon: 'assets/ic_doctor.svg',
                                      //onClicked: () => selectedItem(context, 0),
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            // child: ButtonWidget(
            //   icon: Icons.open_in_new,
            //   text: 'Open Drawer',
            //   onClicked: () {
            //     Scaffold.of(context).openDrawer();
            //     // Scaffold.of(context).openEndDrawer();
            //   },
            // ),
          ),
        ));
  }
}
