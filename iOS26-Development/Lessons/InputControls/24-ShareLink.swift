import SwiftUI

struct ShareLinkView: View {
    let textToShare = "Check out this amazing content!"
    let urlToShare = URL(string: "https://lorenzomatrullo.dev")!

    var body: some View {
        VStack {
            ShareLink(item: urlToShare) {
                Text("Share URL")
            }
            .padding()

            ShareLink(item: textToShare) {
                Text("Share Text")
            }
            .padding()
        }
    }
}

#Preview {
    ShareLinkView()
}
