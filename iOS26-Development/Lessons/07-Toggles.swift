import SwiftUI

// Simple state, buttons, and a toggle.
struct TogglesView: View {
    // Local state values; changing them updates the view.
    @State private var isOn = false
    
    var body: some View {
        Form {
            Toggle(isOn: $isOn) {
                Text("Bluetooth")
                Text("Connected to AirPods Pro")
                Text("Battery: 100%")
            }
            
            Text(isOn ? "Toggle is on" : "Toggle is off")
                .foregroundStyle(isOn ? .green : .secondary)
        }
        .navigationTitle("07 - Toggles")
    }
}

#Preview {
    TogglesView()
}
