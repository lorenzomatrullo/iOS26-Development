import SwiftUI

// Sheets: Present modal views that slide up from the bottom.
struct SheetsView: View {
    @State private var showSheet = false
    @State private var showSheetWithModifiers = false
    @State private var showSheetAnimation = false
    @Namespace private var animation
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Button("Show Sheet") {
                        showSheet.toggle()
                    }
                } header: {
                    Text("Basic Sheet")
                } footer: {
                    Text("A standard sheet that slides up from the bottom.")
                }
                
                Section {
                    Button("Show Sheet") {
                        showSheetWithModifiers.toggle()
                    }
                } header: {
                    Text("Sheet with Modifiers")
                } footer: {
                    Text("A different sheet with settings content.")
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Animated Sheet", systemImage: "doc.plaintext") {
                        showSheetAnimation.toggle()
                    }
                }
                .matchedTransitionSource(id: "animation", in: animation)
            }
            .sheet(isPresented: $showSheet) {
                SheetView()
            }
            .sheet(isPresented: $showSheetWithModifiers) {
                SheetView()
                    .presentationDetents([.medium, .large])
            }
            .sheet(isPresented: $showSheetAnimation) {
                SheetView()
                    .navigationTransition(.zoom(sourceID: "animation", in: animation))
                    .presentationDetents([.height(250)])
                    .presentationCornerRadius(20)
                    .presentationDragIndicator(.hidden)
                    .presentationBackground(
                        .green.opacity(0.3)
                    )
            }
            .navigationTitle("15 - Sheets")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

// Sheet content view.
struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 10) {
                Text("This is a Sheet")
                    .font(.title)
                
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
