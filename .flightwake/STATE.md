---
updated: 2026-10-08
updated_by: Codex
latest_record: records/261008-testflight.md
health: yellow  # builds and tests passed; real-device verification pending
---

# Where we are

macOS 與 iOS TestFlight 發布修改、驗證、簽署和上傳已完成。詳細證據、版本、未驗證項目見 latest_record；重新發布指令見 README.md。

# In progress

- [ ] 確認 Apple 最終處理狀態與 TestFlight 測試群組分發。
- [ ] 安裝 TestFlight build 後驗證實機錄音、iOS 鍵盤與 Mac 沙盒功能。

# Next entry points

1. App Store Connect 的兩個 Atype App → TestFlight；record 區分已上傳與可分發狀態。
2. README.md「TestFlight 建置與上傳」；增加 build number 後才能再次上傳。

# Standing facts

- Xcode 工具鏈選擇見 TRAPS.md；發布團隊與識別碼決策見 DECISIONS.md。
- Mac App Store 必須使用 app:store:build；其 Rust features 排除一般版的 macos-overlay。
- 原有 CLAUDE.md 修改與 .claude 框架檔案保留，沒有納入本次程式修改提交。
