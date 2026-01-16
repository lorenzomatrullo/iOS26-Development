import SwiftUI

// In iOS 26.0+, searchable() places the search field at the bottom by default.
// You can move it back to the navigation bar using .navigationBarDrawer placement.
struct SearchableView: View {
    // State for the search text.
    @State private var searchText = ""
    
    // Sample data for the list.
    let frameworks = ["SwiftUI", "UIKit", "Core Data", "Combine", "MapKit", "CoreML", "AVFoundation", "Vision"]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(filteredFrameworks, id: \.self) { framework in
                    HStack {
                        Image(systemName: "checkmark.seal.fill")
                            .foregroundStyle(.blue)
                        Text(framework)
                    }
                }
            }
            // .scrollEdgeEffectStyle(.hard, for: .top) // hard scroll effect
            .navigationTitle("Frameworks")
            // iOS 26.0+ default: search field at the bottom
            .searchable(text: $searchText)
            // Uncomment the line below to move it back to the navigation bar
            //.searchable(text: $searchText, placement: .navigationBarDrawer)
        }
    }
    
    // Filter the frameworks based on search text.
    var filteredFrameworks: [String] {
        if searchText.isEmpty {
            return frameworks
        } else {
            return frameworks.filter { $0.localizedCaseInsensitiveContains(searchText) }
        }
    }
}

#Preview {
    SearchableView()
}
