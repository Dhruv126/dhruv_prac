import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';

import 'core/services/di/services_module.dart';
import 'core/services/navigation_service.dart';
import 'core/services/route_service.dart';
import 'viewModel/home_view_model.dart';

Future<void> main() async {
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeViewModel()),
      ],
      child: ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp(
                initialRoute: AppRoutes.homeScreen,
                navigatorKey: NavigationService.navigatorKey,
                builder: EasyLoading.init(),
                onGenerateRoute: (settings) =>
                    OnGenerateRoutes.generateRoute(settings),
                debugShowCheckedModeBanner: false);
          }),
    );
  }
}
