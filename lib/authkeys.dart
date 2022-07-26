
import 'authkeys_platform_interface.dart';

class Authkeys {
  Future<String?> getPlatformVersion() {
    return AuthkeysPlatform.instance.getPlatformVersion();
  }
}
