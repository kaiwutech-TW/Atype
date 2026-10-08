---
record_id: 261008-testflight
session: Codex
date: 2026-10-08
repos: [Atype]
tests: "320 Rust tests passed in each of default and app-store configurations; 22 Swift tests passed; TypeScript, ESLint, formatting clean"
prod_changes: "iOS and macOS builds uploaded to TestFlight"
---

# macOS 與 iOS TestFlight 修改、簽署及上傳完成

**TL;DR**: 先確認工具，再依 CLAUDE.md 完成發布限制修改。兩平台 Release archive 與上傳均成功；Apple 後續處理、測試者分發及實機錄音驗證不等同於上傳成功。

## Key findings

1. 工具鏈原本缺 Rust、XcodeGen、CMake；已以 Homebrew 安裝。Xcode 選擇陷阱見 TRAPS.md 的 xcode-command-line-tools-selection。
2. 團隊、Bundle ID 與 App Group 的處理決策見 DECISIONS.md；實際發布組態與重新發布指令見 README.md。
3. iOS 公開 API 無法取得鍵盤 host，也不能繞過 extension API 限制開啟主 App。改為手動進入待命並切回原 App；Mac 沙盒版以選單錄音與剪貼簿輸出。

## Deliverables / Commits

1db4146..8fac624（發布修改與重現指令；保留使用者原有 CLAUDE.md、.claude 及其他框架檔案）

## Verification evidence

- `swift test`：22 tests、5 suites 通過。
- `cargo test`：default 組態 320 passed / 0 failed。
- `TAURI_CONFIG='{"app":{"macOSPrivateApi":false}}' cargo test --no-default-features --features app-store`：320 passed / 0 failed。
- `bun run build`（一般與 VITE_APP_STORE=true）、`bunx eslint src`、`bunx prettier --check src scripts`、`cargo fmt -- --check`、`git diff --check` 均通過。
- Debug App 執行 `--list-models`，重新產生 bindings.ts，內容無差異。
- Mac `bun run app:store:build` Release 成功；dependency feature 清單不含 macos-private-api 或 tauri-nspanel。
- Xcode 兩平台 archive 皆 `ARCHIVE SUCCEEDED`。兩平台 export/upload 皆回報 `Upload succeeded` 與 `EXPORT SUCCEEDED`，本機證據在根目錄 build-ios-archive.log、build-ios-upload.log、build-mac-archive.log、build-mac-upload.log（忽略、不提交）。
- Mac archive 經 `codesign --verify --deep --strict` 驗證通過；簽章團隊正確，app-sandbox、audio-input、network.client entitlements 存在。實際啟動後顯示只有麥克風權限的 onboarding。
- iOS build 在 TestFlight 先顯示處理中，稍後已可開啟其版本詳細頁。Mac 上傳回報 Apple 正在處理套件；未確認其處理完成。
- iOS 靜態掃描已無 NSClassFromString、私有 host selectors、unsafeBitCast、runtime swizzling；兩平台 privacy manifest 與 export options 的 plist lint 通過。
- React 修改檢查：權限流程集中到 wrapper，App Store 不顯示 accessibility 卡片；既有 hook 順序、型別與鍵盤可操作控制均保留，ESLint 與型別檢查通過。

## Unfinished / Handoff

- App Store Connect 後续處理、測試群組及 Beta 審查狀態仍須追蹤。未寄送測試邀請，未提交公開 App Store 審查。
- 未在實機驗證錄音、待命背景切換、鍵盤插字或 sandbox 下的外部資料夾持久授權。
- Mac 目前僅 Apple Silicon，未產生可供上傳的 Rust debug symbols。
