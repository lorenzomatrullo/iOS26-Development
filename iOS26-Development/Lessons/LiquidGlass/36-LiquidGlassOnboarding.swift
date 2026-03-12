import SwiftUI

// Demonstrates the iOS26StyleOnBoarding component with Liquid Glass effects.
struct LiquidGlassOnboardingView: View {
    var body: some View {
        iOS26StyleOnBoarding(tint: .blue, hideBezels: false, items: [
            .init(
                id: 0,
                title: "Welcome to iOS 26",
                subtitle: "Introducing a new design with\nLiquid Glass.",
                screenshot: UIImage(named: "Screen1")
            ),
            .init(
                id: 1,
                title: "New Context Menus",
                subtitle: "Access menu options with\ncontrols that fluidly morph.",
                screenshot: UIImage(named: "Screen2")
            ),
            .init(
                id: 2,
                title: "Floating Tab Bar",
                subtitle: "Tab bar that floats and responds\nto your hand's motion.",
                screenshot: UIImage(named: "Screen4"),
                zoomScale: 1.3,
                zoomAnchor: .init(x: 0.5, y: 1.1)
            ),
            .init(
                id: 3,
                title: "All New Photos App",
                subtitle: "Focus on what matters with\nLiquid Glass Controls.",
                screenshot: UIImage(named: "Screen3"),
                zoomScale: 1.3,
                zoomAnchor: .init(x: 0.5, y: -0.3)
            ),
            .init(
                id: 4,
                title: "Personalized Home Screen",
                subtitle: "Personalize iPhone with new\nlooks for app icons.",
                screenshot: UIImage(named: "Screen5")
            )
        ]) {
            // Demo — no action needed
        }
    }
}

#Preview {
    LiquidGlassOnboardingView()
}
