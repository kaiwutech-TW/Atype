---
record_id: 261008-sync-release
session: Codex
date: 2026-10-08
repos: [Atype]
tests: "22 Swift tests; iOS Release device build; isolated Bridge assertions passed"
prod_changes: "none; existing uploaded builds unchanged"
---

# 同步遠端更新至發布分支

- 從 origin 取得 1db4146..2af4396 的 8 個提交。建立 release/testflight，保存既有發布提交，再 merge 遠端預設分支。
- AppModel 衝突保留錄音恢復；HostIdentity 衝突維持公開 API 替代方式。私有 host 探測及自動返回主 App 不重新引入。
- 修正延遲剪貼簿工作以 result UUID 區分錄音，舊工作不覆寫新結果；未確認插入不入 undoStack；無輸入上下文不執行 undo；輸入框日誌只保留字數。
- 驗證：AtypeCore swift test 22 tests / 5 suites passed；XcodeGen + iOS Release generic device CODE_SIGNING_ALLOWED=NO build succeeded（build-ios-merge.log）；獨立 UserDefaults suite 的 Bridge result ID、消費、確認重設、discard assertions 通過；git diff --check 通過。
- Mac 程式未變更，先前發布驗證見 261008-testflight.md。新功能未實機驗證，模型選單的雲端 API 未呼叫驗證。
- 尚未 push；未重新 archive/簽署/上傳。已上傳 build 8 不受 Git 合併影響；下次上傳 iOS 必須使用新的 build number。
- 使用者原有 CLAUDE.md、.claude/ 及未追蹤框架檔案保留。
