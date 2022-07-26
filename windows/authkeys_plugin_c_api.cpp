#include "include/authkeys/authkeys_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "authkeys_plugin.h"

void AuthkeysPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  authkeys::AuthkeysPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
