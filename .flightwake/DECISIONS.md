<!-- flightwake DECISIONS — append-only. One line per decision, newest on top. -->
<!-- What counts as a "decision": a choice that closed off other options. Format: date | decision | why | re-evaluation trigger (optional) -->
<!-- Overturning a decision: never delete the old row — the new row states which day's entry it supersedes; prefix the old row's "decision" cell with [superseded→new date]. When old and new conflict, this settles the direction. -->

# Decision Log

| Date | Decision | Why | Re-evaluate when |
|---|---|---|---|
| {{YYYY-MM-DD}} | {{Chose X over Y}} | {{One sentence}} | {{What would prompt a revisit (optional)}} |

| 2026-10-08 | iOS 發布版移除所有 UIKit 私有主 App 探測與 responder-chain 開啟 App；以手動待命流程替代 | App Store 發布只能使用公開 API，不能繞過 extension API 限制 | Apple 提供公開 API 時 |

| 2026-10-08 | TestFlight 使用 com.yentingwu.atype 的 bundle ID 與 App Group | 原 com.atype ID 無法註冊至此團隊；YENTING WU 的 App Store Connect 尚無 App 紀錄 | — |

| 2026-10-08 | Mac App Store 使用獨立 app-store feature 與沙盒設定；選單錄音、剪貼簿輸出 | 沙盒限制全域輸入；保留一般下載版的既有行為 | 公開 API 能支援自動輸入時 |
