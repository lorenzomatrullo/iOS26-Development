import SwiftUI

// Semantic Toolbars: Use semantic placement modifiers to position toolbar items appropriately across platforms
// NavigationStack IS REQUIRED for .toolbar to work

struct SemanticToolbarsView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack {
                
            }
            .navigationTitle("Semantic Toolbars")
            .navigationSubtitle("symantic toolbar placement") // it will be leading placed if the text is long enough
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel", systemImage: "xmark") {
                        dismiss()
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
    }
}

#Preview() {
    SemanticToolbarsView()
}
