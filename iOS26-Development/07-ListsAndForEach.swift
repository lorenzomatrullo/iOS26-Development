import SwiftUI

// List of topics built from an array using ForEach.
struct ListsAndForEachView: View {
    // Data for the rows.
    let items = ["SwiftUI", "Combine", "Widgets", "Animations"]
    
    var body: some View {
        List {
            // One row per item in the array.
            ForEach(items, id: \.self) { item in
                HStack {
                    Image(systemName: "checkmark.circle")
                        .foregroundStyle(.green)
                    Text(item)
                }
            }
        }
        .navigationTitle("07 - Lists & ForEach")
    }
}

#Preview {
    ListsAndForEachView()
}
