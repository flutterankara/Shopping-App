import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:pawcat/locator.config.dart';
import 'package:pawcat/services/navigator_service.dart';

@injectableInit
configureDependencies() => sl.init();

initDependencies() async => configureDependencies();

GetIt get sl => GetIt.I;

NavigatorService get navigator => sl<NavigatorService>();
