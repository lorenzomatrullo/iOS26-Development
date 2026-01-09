import SwiftUI

// Sheets: Present modal views that slide up from the bottom.
struct SheetsView: View {
    @State private var showSheet = false
    
    var body: some View {
        Form {
            Section {
                Button("Show Sheet") {
                    showSheet = true
                }
            } header: {
                Text("Basic Sheet")
            } footer: {
                Text("A standard sheet that slides up from the bottom.")
            }
        }
        .navigationTitle("12 - Sheets")
        .sheet(isPresented: $showSheet) {
            SheetView()
        }
    }
}

// Sheet content view.
struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Image(systemName: "doc.plaintext")
                    .font(.system(size: 60))
                    .foregroundStyle(.blue)
                
                Text("This is a Sheet")
                    .font(.title2)
                
                Text("Sheets are modal views that slide up from the bottom of the screen.")
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)
                
                Text("Swipe down to dismiss")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            .padding()
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Dismiss", systemImage: "xmark") {
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    SheetsView()
}
