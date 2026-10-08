// iOS has no public API for identifying a custom keyboard's host app.
// Do not inspect private UIKit state or change runtime implementations.
import UIKit

enum HostIdentity {
    static func host(of controller: UIInputViewController) -> (String?, String) {
        (nil, "Host identity is unavailable through public APIs")
    }
}
