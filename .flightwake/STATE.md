---
updated: 2026-10-11
updated_by: Codex
latest_record: records/261011-sync.md
health: yellow  # builds and tests passed; real-device verification pending
---

# Where we are

release/testflight 已合併原 repo 至 770aed5 的 iOS 更新，編譯／測試通過；未 push 或再次上傳，詳見 latest_record。TestFlight 已上傳套件仍為 iOS build 10（records/261008-ios-build10.md）、Mac build 8（records/261008-testflight.md）。

# In progress

- [ ] 推送本次 release/testflight 同步更新並透過 PR 合併；新 iOS 錄音恢復功能需實機驗證與新 build number 重新發布。

- [ ] 確認 Apple 最終處理狀態與 TestFlight 測試群組分發。
- [ ] 安裝 TestFlight build 後驗證實機錄音、iOS 鍵盤與 Mac 沙盒功能。

# Next entry points

1. App Store Connect 的兩個 Atype App → TestFlight；record 區分已上傳與可分發狀態。
2. README.md「TestFlight 建置與上傳」；增加 build number 後才能再次上傳。

# Standing facts

- Xcode 工具鏈選擇見 TRAPS.md；發布團隊與識別碼決策見 DECISIONS.md。
- Mac App Store 必須使用 app:store:build；其 Rust features 排除一般版的 macos-overlay。
- 本次只變更 iOS build number 和工作紀錄；其他檔案沿用使用者的 ce74b74 提交。
