import SwiftUI

struct LiquidGlassView: View {
    var body: some View {
        VStack {
            Text("Hello World")
                .font(.largeTitle)
                .padding()
                //.glassEffect(in: .rect(cornerRadius: 10))
                //.glassEffect()
                .glassEffect(.regular.interactive()) // acts like a button
                .onTapGesture {
                    // Do something like a button
                }
            
            Text("Hello World")
                .font(.largeTitle)
                .padding()
                //.glassEffect(.clear, in: .rect(cornerRadius: 10))
                //.glassEffect(.clear)
                .glassEffect(.clear.interactive()) // acts like a button
                .onTapGesture {
                    // Do something like a button
                }
            
            //
            Text("Hello World")
                .font(.largeTitle)
                .padding()
                //.glassEffect(.clear, in: .rect(cornerRadius: 10))
                //.glassEffect(.clear)
                .glassEffect(.clear.interactive().tint(.mint.opacity(0.3))) // acts like a button
                .onTapGesture {
                    // Do something like a button
                }
            
            Spacer()
                .frame(height: 40) // Fixed height spacer
            
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
            ScrollView([.horizontal, .vertical]){
                Image(.frosted)
            }.ignoresSafeArea()
        }
    }
}

#Preview {
    LiquidGlassView()
}
