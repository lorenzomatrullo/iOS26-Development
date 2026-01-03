import SwiftUI

// Asset images and SF Symbols in one simple layout.
struct ImagesAndSFSymbolsView: View {
    var body: some View {
        VStack {
            Spacer()
            // Row of colored SF Symbol icons.
            HStack(spacing: 16) {
                Image(systemName: "heart.fill")
                    .foregroundStyle(.red)
                    .font(.largeTitle)
                
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
                    .font(.largeTitle)
                
                Image(systemName: "bolt.fill")
                    .foregroundStyle(.blue)
                    .font(.largeTitle)
            }

            Spacer()
        }
        .padding()
    }
}

#Preview {
    ImagesAndSFSymbolsView()
}
