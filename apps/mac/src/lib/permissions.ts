import * as permissions from "tauri-plugin-macos-permissions-api";

export const isAppStore = import.meta.env.VITE_APP_STORE === "true";
// App Store recordings are copied for manual paste; accessibility is not required.
export const checkAccessibilityPermission = () =>
  isAppStore
    ? Promise.resolve(true)
    : permissions.checkAccessibilityPermission();
export const requestAccessibilityPermission = () =>
  isAppStore ? Promise.resolve() : permissions.requestAccessibilityPermission();
export const checkMicrophonePermission = permissions.checkMicrophonePermission;
export const requestMicrophonePermission =
  permissions.requestMicrophonePermission;
