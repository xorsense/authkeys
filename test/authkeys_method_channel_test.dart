import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:authkeys/authkeys_method_channel.dart';

void main() {
  MethodChannelAuthkeys platform = MethodChannelAuthkeys();
  const MethodChannel channel = MethodChannel('authkeys');

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
    expect(await platform.getPlatformVersion(), '42');
  });
}
