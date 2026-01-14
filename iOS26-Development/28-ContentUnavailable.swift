import SwiftUI

// ContentUnavailableView makes empty states clearer and more helpful.
// Perfect for search results, offline screens, or empty content.
struct ContentUnavailableExampleView: View {
    var body: some View {
        TabView {
            // Basic search
            VStack {
                Spacer()
                
                ContentUnavailableView.search
                
                Spacer()
                
                Text("ContentUnavailableView.search")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .padding()
                    .padding(.bottom, 40)
            }
            
            
            // Search with specific text
            VStack {
                Spacer()
                
                ContentUnavailableView.search(text: "Titanic")
                
                Spacer()
                
                Text("ContentUnavailableView.search(text: \"Titanic\")")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .padding()
                    .padding(.bottom, 40)
            }
            
            
            // Custom with title, image, and description
            VStack {
                Spacer()
                
                ContentUnavailableView(
                    "No Connection",
                    systemImage: "wifi.slash",
                    description: Text("Please check your internet connection.")
                )
                
                Spacer()
                
                Text("Custom title, image, and description")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .padding()
                    .padding(.bottom, 40)
            }
            
            
            // Custom with actions
            VStack {
                Spacer()
                
                ContentUnavailableView {
                    Label("No Connection", systemImage: "wifi.slash")
                } description: {
                    Text("Please check your internet connection.")
                } actions: {
                    Button("Try Again") {}
                }
                
                Spacer()
                
                Text("With custom actions (Try Again button)")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .padding()
                    .padding(.bottom, 40)
            }
            
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        .navigationTitle("26 - Content Unavailable")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ContentUnavailableExampleView()
}
