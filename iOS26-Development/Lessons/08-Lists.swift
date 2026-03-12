import SwiftUI

// List of topics built from an array using ForEach.
struct ListsView: View {
    // Data for the sections (A-Z).
    let letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    
    var body: some View {
        List {
            Section {
                Text("Item")
                    .badge(5)
                    .badgeProminence(.increased)
                Text("Item")
                    .badge(5)
                Text("Item")
                    .badge("New")
                    .badgeProminence(.increased)
                Text("Item")
                    .badge("New")
            }

            // NavigationLink indicator visibility control (iOS 17.0+)
            Section {
                NavigationLink("Photos") {
                    Text("Photos Detail")
                }
                .navigationLinkIndicatorVisibility(.visible)
                
                NavigationLink("Movies") {
                    Text("Movies Detail")
                }
                .navigationLinkIndicatorVisibility(.visible)
            } header: {
                Text("With Disclosure Indicator")
            } footer: {
                Text("navigationLinkIndicatorVisibility(.visible) shows the chevron.")
            }
            
            
            Section {
                NavigationLink("Photos") {
                    Text("Photos Detail")
                }
                .navigationLinkIndicatorVisibility(.hidden)
                
                NavigationLink("Movies") {
                    Text("Movies Detail")
                }
                .navigationLinkIndicatorVisibility(.hidden)
            } header: {
                Text("Without Disclosure Indicator")
            } footer: {
                Text("navigationLinkIndicatorVisibility(.hidden) hides the chevron. Perfect for cleaner lists or when you want full control over row styling.")
            }

            ForEach(letters, id: \.self) { letter in
                Section {
                    ForEach(1...5, id: \.self) { number in
                        Text("Item \(number)")
                    }
                } header: {
                    Text("Letter \(letter)")
                }
                .sectionIndexLabel(letter)
            }
        }
        .navigationTitle("08 - Lists")
    }
}

#Preview {
    ListsView()
}
