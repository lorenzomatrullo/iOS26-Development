import SwiftUI

// Asset images and SF Symbols in one simple layout.
struct ImagesAndSFSymbolsView: View {
    var body: some View {
        VStack {
            Spacer()
            // Custom SF Symbol.
            Image(systemName: "visionpro")
                .font(.system(size: 250, weight: .ultraLight))
                .foregroundStyle(
                    LinearGradient(
                        colors: [.gray, .black, .gray],
                        startPoint: .top,
                        endPoint: .bottom
                    ),
                    EllipticalGradient(
                        colors: [.indigo, .black],
                        center: .center,
                        startRadiusFraction: 0.0,
                        endRadiusFraction: 0.55
                    )
                )
                .shadow(color: .black.opacity(0.5), radius: 25, y: 7)
            
            Spacer()
        }
        .padding()
        .navigationTitle("03 - Images & SF Symbols")
    }
}

#Preview {
    ImagesAndSFSymbolsView()
}
