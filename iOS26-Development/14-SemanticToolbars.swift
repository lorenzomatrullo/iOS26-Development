import SwiftUI

// Semantic Toolbars: Use semantic placement modifiers to position toolbar items appropriately across platforms
// NavigationStack is provided by ViewPickerContainer

struct SemanticToolbarsView: View {
    var onReturnToFirstLesson: (() -> Void)? = nil

    var body: some View {
        VStack {
            EmptyView()
        }
        .navigationTitle("14 - Semantic Toolbars")
        .navigationSubtitle("symantic toolbar placement") // it will be leading placed if the text is long enough
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .cancellationAction) {
                Button("Cancel", systemImage: "xmark") {
                    returnToFirstLesson()
                }
            }

            ToolbarItem(placement: .destructiveAction) {
                Button("Delete", systemImage: "trash") {
                    // perform delete action
                }
                .tint(.red)
            }

            ToolbarItem(placement: .confirmationAction) {
                Button("Done", systemImage: "checkmark") {
                    // perform action
                }
            }
        }
    }

    // Function to handle returning to the first lesson
    private func returnToFirstLesson() {
        onReturnToFirstLesson?()
    }
}

#Preview() {
    SemanticToolbarsView()
}
