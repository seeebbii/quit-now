import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:quit_now/core/router/router_generator.dart';
import 'package:quit_now/meta/utils/shared_pref.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SharedPref.init();

  runApp(const QuitNowMain());
}

class QuitNowMain extends StatefulWidget {
  const QuitNowMain({Key? key}) : super(key: key);

  @override
  _QuitNowMainState createState() => _QuitNowMainState();
}

class _QuitNowMainState extends State<QuitNowMain> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: () => const GetMaterialApp(
              initialRoute: RouteGenerator.mainSplashScreen,
              onGenerateRoute: RouteGenerator.onGeneratedRoutes,
            ));
  }
}

// providers: const [
// Provider<>(create: (_)=> );
// ChangeNotifierProvider(create: (_) => );
// ]
