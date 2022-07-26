import 'package:flutter_test/flutter_test.dart';
import 'package:authkeys/authkeys.dart';
import 'package:authkeys/authkeys_platform_interface.dart';
import 'package:authkeys/authkeys_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAuthkeysPlatform
    with MockPlatformInterfaceMixin
    implements AuthkeysPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AuthkeysPlatform initialPlatform = AuthkeysPlatform.instance;

  test('$MethodChannelAuthkeys is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAuthkeys>());
  });

  test('getPlatformVersion', () async {
    Authkeys authkeysPlugin = Authkeys();
    MockAuthkeysPlatform fakePlatform = MockAuthkeysPlatform();
    AuthkeysPlatform.instance = fakePlatform;

    expect(await authkeysPlugin.getPlatformVersion(), '42');
  });
}
