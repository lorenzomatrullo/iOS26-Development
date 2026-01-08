import SwiftUI

// Three-tab layout using TabView.
struct TabBarView: View {
    var body: some View {
        TabView {
            VStack(spacing: 12) {
                Text("Home")
            }
            .tabItem {
                Label("Home", systemImage: "house")
            }
            
            VStack(spacing: 12) {
                Text("Library")
            }
            .tabItem {
                Label("Library", systemImage: "books.vertical")
            }
            
            VStack(spacing: 12) {
                Text("Settings")
            }
            .tabItem {
                Label("Settings", systemImage: "gearshape")
            }
        }
        .navigationTitle("08 - Tab View")
    }
}

#Preview {
    TabBarView()
}
