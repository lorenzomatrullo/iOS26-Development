import SwiftUI

// Basic navigation: tap a row to push a detail screen.
struct NavigationStackView: View {
    // List of lesson numbers for the rows.
    let lessons = Array(1...5)
    
    var body: some View {
        NavigationStack {
            List(lessons, id: \.self) { index in
                NavigationLink("Lesson \(index)") {
                    DetailView(number: index)
                }
            }
            .navigationTitle("Navigation")
        }
    }
}

private struct DetailView: View {
    let number: Int
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Lesson \(number)")
                .font(.largeTitle)
            
            Text("This is a detail screen pushed using NavigationStack.")
                .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    NavigationStackView()
}
