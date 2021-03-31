import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bkash_payment/bkash_payment.dart';

void main() {
  const MethodChannel channel = MethodChannel('bkash_payment');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
  });
}
