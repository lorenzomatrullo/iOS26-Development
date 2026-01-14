import SwiftUI
import WebKit

struct WebContentView: View {
    var body: some View {
        WebView(url: URL(string: "https://lorenzomatrullo.dev"))
    }
}

#Preview {
    WebContentView()
}
