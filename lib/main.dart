import 'dart:ui' as ui;

import 'package:fluent_ui/fluent_ui.dart';

import 'views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FluentApp(
      title: 'First Desktop App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.blue,
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        focusTheme: FocusThemeData(
          glowFactor: is10footScreen(ui.window.physicalSize.width) ? 2.0 : 0.0,
        ),
      ),
      home: const HomeView(),
    );
  }
}
