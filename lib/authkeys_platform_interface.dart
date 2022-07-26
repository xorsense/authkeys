import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'authkeys_method_channel.dart';

abstract class AuthkeysPlatform extends PlatformInterface {
  /// Constructs a AuthkeysPlatform.
  AuthkeysPlatform() : super(token: _token);

  static final Object _token = Object();

  static AuthkeysPlatform _instance = MethodChannelAuthkeys();

  /// The default instance of [AuthkeysPlatform] to use.
  ///
  /// Defaults to [MethodChannelAuthkeys].
  static AuthkeysPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AuthkeysPlatform] when
  /// they register themselves.
  static set instance(AuthkeysPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
