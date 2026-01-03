import SwiftUI

// Layout with VStack, HStack, ZStack, and simple spacing.
struct StacksAndSpacingView: View {
    var body: some View {
        VStack(spacing: 24) {
            // Horizontal row with labels pushed to left and right.
            HStack(spacing: 12) {
                Text("Left")
                    .padding(8)
                    .background(.blue.opacity(0.2))
                    .cornerRadius(8)
                
                Spacer()
                
                Text("Right")
                    .padding(8)
                    .background(.green.opacity(0.2))
                    .cornerRadius(8)
            }
            
            // Overlapping views: a rectangle with text on top.
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .fill(.orange.opacity(0.2))
                    .frame(height: 120)
                
                Text("ZStack overlays views")
                    .font(.headline)
            }
        }
        .padding()
    }
}

#Preview {
    StacksAndSpacingView()
}
