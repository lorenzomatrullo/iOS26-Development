import SwiftUI

struct LiquidGlassView: View {
    var body: some View {
        VStack {
            Text("Hello World")
                .font(.largeTitle)
                .padding()
                .glassEffect()
            
            Text("Hello World")
                .font(.largeTitle)
                .padding()
                .glassEffect(.regular.interactive(), in: .rect(cornerRadius: 18)) // acts like a button
                .onTapGesture {
                    // Do something like a button
                }
            
            Text("Hello World")
                .font(.largeTitle)
                .padding()
                .glassEffect(.clear)
            
            Text("Hello World")
                .font(.largeTitle)
                .padding()
                .glassEffect(.clear.interactive(), in: .rect(cornerRadius: 18)) // acts like a button
                .onTapGesture {
                    // Do something like a button
                }
            
            Text("Hello World")
                .font(.largeTitle)
                .padding()
                .glassEffect(.clear.interactive().tint(.mint.opacity(0.3))) // acts like a button
                .onTapGesture {
                    // Do something like a button
                }
            
            Color.clear.frame(height: 40)

            Image(systemName: "applelogo")
                .font(.system(size: 36))
                .frame(width: 80, height: 80)
                .glassEffect(.regular.interactive())
            
            Image(systemName: "applelogo")
                .font(.system(size: 36))
                .frame(width: 80, height: 80)
                .glassEffect(.clear.interactive())
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
    LiquidGlassView()
}
