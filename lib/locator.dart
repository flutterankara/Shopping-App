import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:pawcat/locator.config.dart';
import 'package:pawcat/services/navigator_service.dart';

@injectableInit
configureDependencies() => sl.init();

initDependencies() async {
  configureDependencies();
  // HttpOverrides.global = TrustingHttpOverrides();
  // FlutterNativeSplash.preserve(widgetsBinding: WidgetsFlutterBinding.ensureInitialized());
  // try {
  //   final res = await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  //   print(res);
  // } catch (e) {
  //   print(e);
  // }
  // await sl<PersistenceService>().init();
  // await sl<AppInfoService>().init();
  // await sl<UrlService>().init();
  // await sl<AssetMap>().init();
  // await sl<Analytics>().init();
  // await sl<NotificationService>().init();
  // await sl<PreloadService>().preload();
  // sl<HereService>().init();
}

GetIt get sl => GetIt.I;

NavigatorService get navigator => sl<NavigatorService>();
