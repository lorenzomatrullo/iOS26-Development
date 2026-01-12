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
