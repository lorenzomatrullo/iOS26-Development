import SwiftUI

// ForEach is used to iterate over collections and create views dynamically.
struct ForEachView: View {
    let fruits = ["Apple", "Banana", "Cherry", "Date", "Elderberry"]
    
    var body: some View {
        VStack(spacing: 10) {
            ForEach(fruits, id: \.self) { fruit in
                Text(fruit)
            }
        }
        .navigationTitle("11 - ForEach")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        ForEachView()
    }
}
