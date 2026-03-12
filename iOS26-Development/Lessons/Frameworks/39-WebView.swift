import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL?

    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        guard let url else { return }
        webView.load(URLRequest(url: url))
    }
}

struct WebContentView: View {
    var body: some View {
        WebView(url: URL(string: "https://lorenzomatrullo.dev"))
            .navigationTitle("39 - WebView")
    }
}

#Preview {
    WebContentView()
}
