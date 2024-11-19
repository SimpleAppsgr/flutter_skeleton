import 'package:flutter/services.dart';
import 'package:flutter_skeleton/commons.dart';

/// Used to initialize any services or other important things for the app
Future<void> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );

  /// StatusBar color and brightness as per design.
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white, // navigation bar color
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.light,
    ),
  );
}
