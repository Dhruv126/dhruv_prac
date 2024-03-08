import 'package:dhruv_prac/core/services/navigation_service.dart';
import 'package:get_it/get_it.dart';

import '../loading_overlay_service.dart';

GetIt locator = GetIt.instance;
Future<void> setupLocator() async {
  await setUpServicesModule();

  await locator.allReady();
}

setUpServicesModule() {
  locator.registerLazySingleton<LoadingOverlayService>(() => LoadingOverlayService());
  locator.registerLazySingleton<NavigationService>(() => NavigationService());
}