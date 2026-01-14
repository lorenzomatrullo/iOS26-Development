import SwiftUI

// Haptic feedback using sensoryFeedback modifier.
// Provides tactile feedback for user interactions.
struct HapticFeedbacksView: View {
    @State private var impactTrigger = false
    @State private var successTrigger = false
    @State private var warningTrigger = false
    @State private var errorTrigger = false
    @State private var selectionTrigger = false
    
    var body: some View {
        VStack(spacing: 30) {
            // Impact feedback
            VStack(spacing: 10) {
                Button("Impact Feedback") {
                    impactTrigger.toggle()
                }
                .buttonStyle(.glassProminent)
                .sensoryFeedback(.impact, trigger: impactTrigger)
                
                Text("Physical impact sensation")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            
            // Success feedback
            VStack(spacing: 10) {
                Button("Success Feedback") {
                    successTrigger.toggle()
                }
                .buttonStyle(.glassProminent)
                .tint(.green)
                .sensoryFeedback(.success, trigger: successTrigger)
                
                Text("Positive confirmation")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            
            // Warning feedback
            VStack(spacing: 10) {
                Button("Warning Feedback") {
                    warningTrigger.toggle()
                }
                .buttonStyle(.glassProminent)
                .tint(.orange)
                .sensoryFeedback(.warning, trigger: warningTrigger)
                
                Text("Attention needed")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            
            // Error feedback
            VStack(spacing: 10) {
                Button("Error Feedback") {
                    errorTrigger.toggle()
                }
                .buttonStyle(.glassProminent)
                .tint(.red)
                .sensoryFeedback(.error, trigger: errorTrigger)
                
                Text("Something went wrong")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            
            // Selection feedback
            VStack(spacing: 10) {
                Button("Selection Feedback") {
                    selectionTrigger.toggle()
                }
                .buttonStyle(.glassProminent)
                .tint(.purple)
                .sensoryFeedback(.selection, trigger: selectionTrigger)
                
                Text("Item selection")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
        }
        .navigationTitle("24 - Haptic Feedbacks")
    }
}

#Preview {
    HapticFeedbacksView()
}
