import SwiftUI

// Forms and Sections: basic building blocks for settings screens.
struct FormsAndSectionsView: View {
    // Current values for the form controls.
    @State private var username = ""
    @State private var email = ""
    @State private var notificationsEnabled = true
    @State private var soundEnabled = false
    
    var body: some View {
        NavigationStack {
            Form {
                // Section with a simple header string.
                Section("Profile") {
                    TextField("Username", text: $username)
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                }
                
                // Section with header and footer text.
                Section {
                    Toggle("Enable notifications", isOn: $notificationsEnabled)
                    Toggle("Enable sound", isOn: $soundEnabled)
                } header: {
                    Text("Preferences")
                } footer: {
                    Text("Customize your notification settings here.")
                }
                
                // Section without a header.
                Section {
                    Button("Save Changes") {
                        
                    }
                    
                    Button("Reset to Defaults", role: .destructive) {
                        username = ""
                        email = ""
                        notificationsEnabled = true
                        soundEnabled = false
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    FormsAndSectionsView()
}
