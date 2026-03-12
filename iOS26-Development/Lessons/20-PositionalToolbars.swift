import SwiftUI

// Positional Toolbars: Use specific position placements to control exact item placement.
struct PositionalToolbarsView: View {
    var onReturnToFirstLesson: (() -> Void)? = nil

    var body: some View {
        NavigationStack {
            VStack {

            }
            .navigationTitle("20 - Positional Toolbars")
            .navigationSubtitle("grouping, spacers and bottom bars")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel", systemImage: "xmark") {
                        returnToFirstLesson()
                    }
                }

                ToolbarSpacer(.fixed, placement: .topBarLeading)

                ToolbarItem(placement: .topBarLeading) {
                    Button("Help", systemImage: "questionmark") {}
                }

                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button("Draw", systemImage: "pencil") {}
                    Button("Erase", systemImage: "eraser") {}
                }

                ToolbarSpacer(.fixed, placement: .topBarTrailing)

                ToolbarItem(placement: .topBarTrailing) {
                    Button("Info", systemImage: "info") {}
                }
                .sharedBackgroundVisibility(.hidden)

                ToolbarItem(placement: .bottomBar) {
                    Button("Delete", systemImage: "trash") {}
                        .tint(.red)
                }

                ToolbarSpacer(.flexible, placement: .bottomBar)

                ToolbarItem(placement: .bottomBar) {
                    Button("New", systemImage: "plus") {}
                }
            }
        }
    }

    private func returnToFirstLesson() {
        onReturnToFirstLesson?()
    }
}

#Preview {
    PositionalToolbarsView()
}
