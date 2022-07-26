import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'authkeys_platform_interface.dart';

/// An implementation of [AuthkeysPlatform] that uses method channels.
class MethodChannelAuthkeys extends AuthkeysPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('authkeys');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
