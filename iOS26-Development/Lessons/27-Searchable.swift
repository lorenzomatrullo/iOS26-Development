import SwiftUI

// In iOS 26.0+, searchable() places the search field at the bottom by default.
struct SearchableView: View {
    let frameworks = ["SwiftUI", "UIKit", "Core Data", "Combine", "MapKit", "CoreML", "AVFoundation", "Vision"]

    @State private var searchText = ""

    var filteredFrameworks: [String] {
        if searchText.isEmpty {
            return frameworks
        } else {
            return frameworks.filter { $0.localizedCaseInsensitiveContains(searchText) }
        }
    }

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
            .navigationTitle("Frameworks")
            .searchable(text: $searchText)
        }
    }
}

#Preview {
    SearchableView()
}
