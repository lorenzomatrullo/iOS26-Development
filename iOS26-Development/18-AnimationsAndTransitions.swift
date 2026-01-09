import SwiftUI

// Show and hide a view with a simple animation.
struct AnimationsAndTransitionsView: View {
    // Controls whether the box is visible.
    @State private var isVisible = false
    
    var body: some View {
        VStack(spacing: 24) {
            Button(isVisible ? "Hide box" : "Show box") {
                withAnimation(.easeInOut(duration: 0.4)) {
                    isVisible.toggle()
                }
            }
            
            if isVisible {
                RoundedRectangle(cornerRadius: 16)
                    .fill(.blue.opacity(0.3))
                    .frame(width: 200, height: 120)
                    .transition(.scale.combined(with: .opacity))
            }
        }
        .navigationTitle("18 - Animations & Transitions")
    }
}

#Preview {
    AnimationsAndTransitionsView()
}
