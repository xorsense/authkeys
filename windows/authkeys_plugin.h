#ifndef FLUTTER_PLUGIN_AUTHKEYS_PLUGIN_H_
#define FLUTTER_PLUGIN_AUTHKEYS_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace authkeys {

class AuthkeysPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  AuthkeysPlugin();

  virtual ~AuthkeysPlugin();

  // Disallow copy and assign.
  AuthkeysPlugin(const AuthkeysPlugin&) = delete;
  AuthkeysPlugin& operator=(const AuthkeysPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace authkeys

#endif  // FLUTTER_PLUGIN_AUTHKEYS_PLUGIN_H_
