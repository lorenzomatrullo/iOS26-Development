import SwiftUI

struct LiquidGlassButtons: View {
    var isEnabled: Bool = true
    let action: () -> Void
    
    var body: some View {
        VStack {
            Button(action: action) {
                Text("Hello World")
                    .font(.largeTitle)
                    .padding()
                    .glassEffect(.regular)
            }
            .buttonStyle(.plain)
            .disabled(!isEnabled)
            .opacity(isEnabled ? 1 : 0.5)
            
            Button(action: action) {
                Text("Hello World")
                    .font(.largeTitle)
                    .padding()
                    .glassEffect(.clear)
            }
            .buttonStyle(.plain)
            .disabled(!isEnabled)
            .opacity(isEnabled ? 1 : 0.5)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            ScrollView([.horizontal, .vertical]){
                Image(.frosted)
            }.ignoresSafeArea()
        }
    }
}

#Preview {
    LiquidGlassButtons {}
}
