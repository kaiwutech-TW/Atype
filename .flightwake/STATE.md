---
updated: 2026-10-08
updated_by: Codex
latest_record: records/261008-ios-build10.md
health: yellow  # builds and tests passed; real-device verification pending
---

# Where we are

iOS 0.1.0（10）已上傳成功，包含末尾句號更新；Apple 正在處理，證據見 latest_record。Mac 保持 build 8（records/261008-testflight.md）。

# In progress

- [ ] 將 fork/release/testflight 的更新透過 PR 合併至原 repo；末尾句號功能需實機驗證。

- [ ] 確認 Apple 最終處理狀態與 TestFlight 測試群組分發。
- [ ] 安裝 TestFlight build 後驗證實機錄音、iOS 鍵盤與 Mac 沙盒功能。

# Next entry points

1. App Store Connect 的兩個 Atype App → TestFlight；record 區分已上傳與可分發狀態。
2. README.md「TestFlight 建置與上傳」；增加 build number 後才能再次上傳。

# Standing facts

- Xcode 工具鏈選擇見 TRAPS.md；發布團隊與識別碼決策見 DECISIONS.md。
- Mac App Store 必須使用 app:store:build；其 Rust features 排除一般版的 macos-overlay。
- 本次只變更 iOS build number 和工作紀錄；其他檔案沿用使用者的 ce74b74 提交。
