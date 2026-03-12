import SwiftUI

struct CourseOnboardingView: View {
    let onComplete: () -> Void

    var body: some View {
        iOS26StyleOnBoarding(tint: .blue, hideBezels: false, items: [
            .init(
                id: 0,
                title: "iOS 26 Development",
                subtitle: "Learn SwiftUI from scratch with\n39 hands-on lessons.",
                screenshot: UIImage(named: "Screen1")
            ),
            .init(
                id: 1,
                title: "Build Real UI",
                subtitle: "Master Lists, Forms, Navigation,\nMenus, Toolbars and more.",
                screenshot: UIImage(named: "Screen2")
            ),
            .init(
                id: 2,
                title: "Liquid Glass Design",
                subtitle: "Adopt the new iOS 26 design\nwith native glass effects.",
                screenshot: UIImage(named: "Screen4"),
                zoomScale: 1.3,
                zoomAnchor: .init(x: 0.5, y: 1.1)
            ),
            .init(
                id: 3,
                title: "Modern Frameworks",
                subtitle: "Notifications, StoreKit,\nWebKit and beyond.",
                screenshot: UIImage(named: "Screen3"),
                zoomScale: 1.3,
                zoomAnchor: .init(x: 0.5, y: -0.3)
            ),
            .init(
                id: 4,
                title: "Ready to Start?",
                subtitle: "Use the lesson picker to explore\neach topic at your own pace.",
                screenshot: UIImage(named: "Screen5")
            )
        ], onComplete: onComplete)
    }
}

#Preview {
    CourseOnboardingView {
        print("Onboarding completed")
    }
}
