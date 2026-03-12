import SwiftUI
import StoreKit

// Request App Store review using requestReview environment action.
// iOS automatically limits how often the review prompt can appear.
struct RequestReviewView: View {
    @Environment(\.requestReview) var requestReview
    
    var body: some View {
        VStack {
            Button("Request Review") {
                requestReview()
            }
            .buttonStyle(.glassProminent)
        }
        
        .navigationTitle("38 - Request Review")
    }
}

#Preview {
    RequestReviewView()
}
