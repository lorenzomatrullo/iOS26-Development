import SwiftUI

// Simple settings-style form with a few inputs.
struct FormsAndInputsView: View {
    // Current values for the form controls.
    @State private var username = ""
    @State private var notificationsEnabled = true
    @State private var selectedLevel = 1

    var body: some View {
        NavigationStack {
            Form {
                Section("Profile") {
                    TextField("Username", text: $username)
                    
                    Picker("Level", selection: $selectedLevel) {
                        ForEach(1...5, id: \.self) { level in
                            Text("Level \(level)")
                        }
                    }
                }

                Section("Preferences") {
                    Toggle("Enable notifications", isOn: $notificationsEnabled)
                }
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    FormsAndInputsView()
}
