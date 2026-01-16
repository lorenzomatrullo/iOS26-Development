import SwiftUI

struct PasteButtonView: View {
    @State private var pastedText: String = "Your pasted text"
    
    var body: some View {
        VStack(spacing: 30) {
            PasteButton(payloadType: String.self) { strings in
                pastedText = strings[0]
            }
            //.labelStyle(.iconOnly) // To show icon only or .titleOnly to show  title only
            .buttonBorderShape(.capsule) // To give capsule shape
            .tint(.red) // To change background color
            .scaleEffect(1.5) // To make button even larger
            
            
            Text(pastedText)
                .padding()
                .glassEffect()
        }
    }
}

#Preview {
    PasteButtonView()
}
