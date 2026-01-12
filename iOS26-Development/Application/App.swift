import SwiftUI

// UIDesignRequiresCompatibility is set in Info.plist to control Liquid Glass design.
// - Set to YES: Falls back to the classic UI (pre-iOS 18 style)
// - Set to NO: Supports the new Liquid Glass design (iOS 26+)

@main
struct iOS26DevelopmentApp: App {
    var body: some Scene {
        WindowGroup {
            ViewPickerContainer()
        }
    }
}
