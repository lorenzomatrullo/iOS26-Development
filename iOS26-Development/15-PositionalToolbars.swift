import SwiftUI

// Positional Toolbars: Use specific position placements (.topBarLeading, .topBarTrailing, .bottomBar) to control exact item placement
// NavigationStack IS REQUIRED for .toolbar to work

struct PositionalToolbarsView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationStack {
            VStack {

            }
            .navigationTitle("Positional Toolbars")
            .navigationSubtitle("grouping, spacers and bottom bars") // it will be leading placed if the text is long enough
            .toolbar {
                // Single toolbar items
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel", systemImage: "xmark") {
                        dismiss()
                    }
                }

                ToolbarSpacer(.fixed, placement: .topBarLeading)

                ToolbarItem(placement: .topBarLeading) {
                    Button("Help", systemImage: "questionmark") {

                    }
                }


                // Grouped toolbar items
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button("Draw", systemImage: "pencil") {

                    }

                    Button("Erase", systemImage: "eraser") {

                    }
                }

                ToolbarSpacer(.fixed, placement: .topBarTrailing)

                ToolbarItem(placement: .topBarTrailing) {
                    Button("Info", systemImage: "info") {

                    }
                }


                // Bottom toolbar items apart
                ToolbarItem(placement: .bottomBar) {
                    Button("Delete", systemImage: "trash") {
                        // perform delete action
                    }
                    .tint(.red)
                }

                ToolbarSpacer(.flexible, placement: .bottomBar)

                ToolbarItem(placement: .bottomBar) {
                    Button("New", systemImage: "plus") {

                    }
                }
            }
        }
    }
}

#Preview() {
    PositionalToolbarsView()
}
