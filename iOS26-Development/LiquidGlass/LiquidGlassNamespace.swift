import SwiftUI

struct LiquidGlassNamespaceView: View {
    @Namespace var namespace
    
    var body: some View {
        VStack {
            GlassEffectContainer {
                HStack {
                    Group {
                        Image(systemName: "cloud.bolt.rain.fill")
                        Image(systemName: "sun.rain.fill")
                    }
                    .font(.system(size: 36))
                    .frame(width: 80, height: 80)
                    .glassEffect()
                    .glassEffectUnion(id: 1, namespace: namespace)
                }
                
                HStack {
                    Image(systemName: "cloud.bolt.rain.fill")
                        .font(.system(size: 36))
                        .frame(width: 80, height: 80)
                        .glassEffect()
                    
                    Image(systemName: "sun.rain.fill")
                        .font(.system(size: 36))
                        .frame(width: 80, height: 80)
                        .glassEffect()
                }
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
    LiquidGlassNamespaceView()
}
