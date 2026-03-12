import SwiftUI

struct TabViewPages: View {
    var body: some View {
        TabView {
            VStack {
                Text("Hello World 1")
            }
            
            VStack {
                Text("Hello World 2")
            }
            
            VStack {
                Text("Hello World 3")
            }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        .navigationTitle("17 - Tab View Pages")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    TabViewPages()
}
