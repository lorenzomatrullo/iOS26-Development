import SwiftUI

struct LiquidGlassTransitionView: View {
    @State private var isExpanded = false
    @State private var text = ""
    @Namespace var namespace
    
    var body: some View {
        VStack {
            GlassEffectContainer {
                HStack {
                    if isExpanded {
                        TextField("Enter name", text: $text)
                            .padding()
                            .glassEffect()
                    }
                    
                    Image(systemName: isExpanded ? "checkmark" : "plus")
                        .font(.system(size: 30))
                        .frame(width: 56, height: 56)
                        .glassEffect(.regular.interactive())
                        .onTapGesture {
                            withAnimation {
                                isExpanded.toggle()
                            }
                        }
                }
                .padding()
            }
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
    LiquidGlassTransitionView()
}
