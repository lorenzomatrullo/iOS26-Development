import SwiftUI

struct KeyboardSubmitLabelView: View {
    @State private var sendText = ""
    @State private var continueText = ""
    @State private var goText = ""
    @State private var returnText = ""
    @State private var routeText = ""
    @State private var nextText = ""
    @State private var joinText = ""
    @State private var doneText = ""
    @State private var searchText = ""
    
    var body: some View {
        Form {
            Section {
                Text("Use `.submitLabel()` to customize the keyboard's return key to match the user's next action.")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            
            Section("Send") {
                TextField("Message", text: $sendText)
                    .submitLabel(.send)
            }
            
            Section("Continue") {
                TextField("Continue to next step", text: $continueText)
                    .submitLabel(.continue)
            }
            
            Section("Go") {
                TextField("Enter URL", text: $goText)
                    .submitLabel(.go)
            }
            
            Section("Return") {
                TextField("Default return key", text: $returnText)
                    .submitLabel(.return)
            }
            
            Section("Route") {
                TextField("Enter destination", text: $routeText)
                    .submitLabel(.route)
            }
            
            Section("Next") {
                TextField("First name", text: $nextText)
                    .submitLabel(.next)
            }
            
            Section("Join") {
                TextField("Enter room code", text: $joinText)
                    .submitLabel(.join)
            }
            
            Section("Done") {
                TextField("Final input", text: $doneText)
                    .submitLabel(.done)
            }
            
            Section("Search") {
                TextField("Search query", text: $searchText)
                    .submitLabel(.search)
            }
        }
        .navigationTitle("22 - Keyboard Submit Label")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        KeyboardSubmitLabelView()
    }
}
