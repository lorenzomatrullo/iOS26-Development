import SwiftUI

// Text examples with a few core styling modifiers.
struct TextAndModifiersView: View {
    var body: some View {
        // Different text styles stacked in one column.
        VStack(spacing: 20) {
            Text("Text")
            
            Text("Large title")
                .font(.largeTitle)
            
            Text("Secondary information")
                .foregroundStyle(.secondary)
            
            Text("Emphasized text")
                .bold()
                .underline()
            
            Text("Custom alignment and line limit for longer text that wraps onto multiple lines in the layout.")
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .padding()
        }
        .navigationTitle("01 - Text & Modifiers")
    }
}

#Preview {
    TextAndModifiersView()
}
