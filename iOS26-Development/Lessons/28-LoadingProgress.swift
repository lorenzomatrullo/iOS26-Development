import SwiftUI

// Progress indicators for showing loading states and determinate progress.
struct LoadingProgressView: View {
    var body: some View {
        VStack(spacing: 40) {
            // Indeterminate progress (spinning indicator)
            VStack(spacing: 10) {
                ProgressView()
                    .controlSize(.large)

                Text("Large Control Size")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }

            VStack(spacing: 10) {
                ProgressView()
                    .controlSize(.regular)

                Text("Regular Control Size")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }

            VStack(spacing: 10) {
                ProgressView()
                    .controlSize(.small)

                Text("Small Control Size")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
        }
        .navigationTitle("28 - Loading Progress")
    }
}

#Preview {
    LoadingProgressView()
}
