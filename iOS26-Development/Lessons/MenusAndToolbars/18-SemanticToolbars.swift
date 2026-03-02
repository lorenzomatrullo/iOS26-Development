import SwiftUI

// Semantic Toolbars: Use semantic placement modifiers to position toolbar items across platforms.
struct SemanticToolbarsView: View {
    var onReturnToFirstLesson: (() -> Void)? = nil

    var body: some View {
        NavigationStack {
            VStack {
                EmptyView()
            }
            .navigationTitle("16 - Semantic Toolbars")
            .navigationSubtitle("semantic toolbar placement")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel", systemImage: "xmark") {
                        returnToFirstLesson()
                    }
                }

                ToolbarItem(placement: .destructiveAction) {
                    Button("Delete", systemImage: "trash") {}
                        .tint(.red)
                }

                ToolbarItem(placement: .confirmationAction) {
                    Button("Done", systemImage: "checkmark") {}
                }
            }
        }
    }

    private func returnToFirstLesson() {
        onReturnToFirstLesson?()
    }
}

#Preview {
    SemanticToolbarsView()
}
