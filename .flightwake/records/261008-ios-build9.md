---
record_id: 261008-ios-build9
session: Codex
date: 2026-10-08
repos: [Atype]
tests: "Release archive passed; main app and extension build 9; codesign verification passed"
prod_changes: "iOS 0.1.0 (9) uploaded to App Store Connect"
---

# iOS build 9 建置與上傳

- 從 release/testflight 的 ce74b74 建置，唯一程式組態變更為 project.yml 的 CURRENT_PROJECT_VERSION 8 → 9。包含上次合併的新 iOS 功能與修正；測試證據見 261008-sync-release.md。
- XcodeGen 產生專案，Xcode 27 Release archive：ARCHIVE SUCCEEDED；build/releases/Atype-iOS-9.xcarchive 保留，不覆寫 build 8。
- 主 App 和鍵盤 Info.plist CFBundleVersion 均為 9；版本 0.1.0；codesign --verify --deep --strict 通過；TeamIdentifier 6K8DY4FKSW。
- 2026-10-08 16:07:26（Asia/Taipei）export/upload 回報 Upload succeeded、EXPORT SUCCEEDED，Apple 正在 processing。證據：build-ios-9-archive.log、build-ios-9-upload.log（忽略、不提交）。
- 未確認 Apple 後續處理完成或 build 9 是否已自動分發至內部群組；需處理完畢後確認並安裝實測。
- Mac 未變更，保持已上傳 build 8。未 push 或 merge PR；本次版本號及紀錄提交至發布分支。
