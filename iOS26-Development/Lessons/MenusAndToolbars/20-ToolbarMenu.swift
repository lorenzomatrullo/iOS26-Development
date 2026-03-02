import SwiftUI

struct ToolbarMenuView: View {
    var body: some View {
        VStack {
            Text("Tap the title to see the menu")
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        .navigationTitle("19 - Toolbar Menu")
        .navigationBarTitleDisplayMode(.inline)
        .toolbarTitleMenu {
            Button("Show Completed", systemImage: "checkmark.circle") {}
            Button("Show Pending", systemImage: "clock") {}
            Button("Show All", systemImage: "tray.full") {}
        }
    }
}

#Preview {
    NavigationStack {
        ToolbarMenuView()
    }
}
