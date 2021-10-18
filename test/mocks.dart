import 'package:flutter_getx_testing/services/services.dart';
import 'package:mocktail/mocktail.dart';
import 'package:get/get.dart';

class MockOrderRepository extends GetxService
    with Mock
    implements IOrdersRepository {}

class MockDateTimeAdapter extends GetxService
    with Mock
    implements IDateTimeAdapter {}

class MockNavigator extends GetxService
    with Mock
    implements INavigationService {}

class MockToastrService extends GetxService
    with Mock
    implements IToastrService {}
