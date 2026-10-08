#!/bin/bash
set -euo pipefail
source_bundle="$SRCROOT/../src-tauri/target/release/bundle/macos/Atype.app"
target_bundle="$TARGET_BUILD_DIR/$FULL_PRODUCT_NAME"
test -x "$source_bundle/Contents/MacOS/atype"
/usr/bin/ditto "$source_bundle/Contents/MacOS" "$target_bundle/Contents/MacOS"
/usr/bin/ditto "$source_bundle/Contents/Resources" "$target_bundle/Contents/Resources"
if [ -d "$source_bundle/Contents/Frameworks" ]; then
  /usr/bin/ditto "$source_bundle/Contents/Frameworks" "$target_bundle/Contents/Frameworks"
fi
# Xcode signs the top-level bundle with its automatically managed profile.
# Sign any native libraries copied by Tauri with the same build identity.
/usr/bin/find "$target_bundle/Contents" -type f -name '*.dylib' -exec /usr/bin/codesign --force --sign "$EXPANDED_CODE_SIGN_IDENTITY" --timestamp=none '{}' \;
/usr/bin/ditto "$SRCROOT/PrivacyInfo.xcprivacy" "$target_bundle/Contents/Resources/PrivacyInfo.xcprivacy"
