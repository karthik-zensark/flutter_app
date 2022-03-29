import 'package:get_it/get_it.dart' as get_it;
import 'package:responsive_app/services/navigation_service.dart' as nav_service;

get_it.GetIt locator = get_it.GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => nav_service.NavigationService());
}
