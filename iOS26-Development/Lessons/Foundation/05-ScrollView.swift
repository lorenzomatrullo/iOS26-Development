import SwiftUI

// Scrollable container when content exceeds available space.
struct ScrollViewView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                Text("Vertical Scrolling")
                    .font(.title2).bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                // Vertical scrolling items
                ForEach(1...12, id: \.self) { number in
                    Text("V\(number)")
                        .frame(maxWidth: .infinity)
                        .padding(35)
                        .background(.blue.opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                
                Text("Horizontal Scrolling")
                    .font(.title2).bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 8)
                
                // Horizontal scrolling items
                ScrollView(.horizontal) {
                    HStack(spacing: 16) {
                        ForEach(1...10, id: \.self) { number in
                            Text("H\(number)")
                                .frame(width: 120, height: 100)
                                .background(.green.opacity(0.2))
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                    }
                    .padding(.horizontal, 0)
                }
                .scrollIndicators(.hidden)
            }
            .padding()
        }
        .navigationTitle("04 - ScrollView")
    }
}

#Preview {
    ScrollViewView()
}
