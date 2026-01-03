import SwiftUI

// Simple state, buttons, and a toggle.
struct StateAndButtonsView: View {
    // Local state values; changing them updates the view.
    @State private var counter = 0
    @State private var isOn = false
    
    var body: some View {
        VStack(spacing: 24) {
            Text("Counter: \(counter)")
                .font(.title)
            
            // Two buttons controlling the counter.
            HStack(spacing: 16) {
                Button("Increment") {
                    counter += 1
                }
                
                Button("Reset") {
                    counter = 0
                }
                .tint(.red)
            }
            
            Toggle("Toggle state", isOn: $isOn)
            
            Text(isOn ? "Toggle is on" : "Toggle is off")
                .foregroundStyle(isOn ? .green : .secondary)
        }
        .padding()
    }
}

#Preview {
    StateAndButtonsView()
}
