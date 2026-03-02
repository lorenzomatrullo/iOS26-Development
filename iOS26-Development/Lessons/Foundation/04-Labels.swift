import SwiftUI

struct LabelsView: View {
    var body: some View {
        VStack(spacing: 50) {
            VStack(alignment: .leading) {
                Label("iPhone", systemImage: "iphone")
                Label("iPad", systemImage: "ipad")
                Label("MacBook", systemImage: "macbook")
            }
            
            VStack(alignment: .leading) {
                Label("iPhone", systemImage: "iphone")
                Label("iPad", systemImage: "ipad")
                Label("MacBook", systemImage: "macbook")
            }
            .labelReservedIconWidth(20)
        }
        .navigationTitle("04 - Labels")
    }
}

#Preview {
    LabelsView()
}
