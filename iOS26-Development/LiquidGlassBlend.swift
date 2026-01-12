import SwiftUI

struct LiquidGlassBlendView: View {
    @State private var spacingBlend: Double = 25
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 20)
            
            VStack(spacing: 10) {
                Text("Spacing Blend: \(Int(spacingBlend))")
                    .font(.headline)
                
                Slider(value: $spacingBlend, in: 0...100) {
                    Text("Spacing")
                } minimumValueLabel: {
                    Text("0")
                } maximumValueLabel: {
                    Text("100")
                }
                .padding(.horizontal)
            }
            .padding()
            .glassEffect(.clear, in: .rect(cornerRadius: 30))
            .padding(.horizontal)
            
            Spacer()
            
            GlassEffectContainer(spacing: spacingBlend) {
                HStack {
                    Text("Now Playing")
                        .font(.system(size: 25))
                        .padding()
                        .glassEffect(.clear)
                    Image(systemName: "waveform")
                        .foregroundStyle(.mint)
                        .font(.system(size: 60))
                        .padding()
                        .glassEffect(.clear)
                }
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            ScrollView([.horizontal, .vertical]) {
                Image(.frosted)
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    LiquidGlassBlendView()
}
