import SwiftUI

struct PasteButtonView: View {
    @State private var pastedText: String = "Your pasted text"
    
    var body: some View {
        VStack(spacing: 30) {
            PasteButton(payloadType: String.self) { strings in
                pastedText = strings[0]
            }
            .buttonBorderShape(.capsule)
            .tint(.red)
            .scaleEffect(1.5)

            Text(pastedText)
                .padding()
                .glassEffect()
        }
    }
}

#Preview {
    PasteButtonView()
}
