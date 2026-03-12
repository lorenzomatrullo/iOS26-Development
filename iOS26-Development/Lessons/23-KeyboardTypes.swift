import SwiftUI

struct KeyboardTypesView: View {
    @State private var defaultText = ""
    @State private var emailText = ""
    @State private var numberPadText = ""
    @State private var phonePadText = ""
    @State private var decimalPadText = ""
    @State private var urlText = ""
    @State private var webSearchText = ""
    @State private var twitterText = ""
    @State private var asciiText = ""
    @State private var namePhoneText = ""
    
    var body: some View {
        Form {
            Section {
                Text("Use `.keyboardType()` to display the most appropriate keyboard for the expected input.")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            
            Section("Default") {
                TextField("Standard keyboard", text: $defaultText)
                    .keyboardType(.default)
            }
            
            Section("Email Address") {
                TextField("Enter email", text: $emailText)
                    .keyboardType(.emailAddress)
                    .textContentType(.emailAddress)
                    .textInputAutocapitalization(.never)
            }
            
            Section("Number Pad") {
                TextField("Enter digits only", text: $numberPadText)
                    .keyboardType(.numberPad)
            }
            
            Section("Phone Pad") {
                TextField("Enter phone number", text: $phonePadText)
                    .keyboardType(.phonePad)
                    .textContentType(.telephoneNumber)
            }
            
            Section("Decimal Pad") {
                TextField("Enter decimal number", text: $decimalPadText)
                    .keyboardType(.decimalPad)
            }
            
            Section("URL") {
                TextField("Enter website URL", text: $urlText)
                    .keyboardType(.URL)
                    .textContentType(.URL)
                    .textInputAutocapitalization(.never)
            }
            
            Section("Web Search") {
                TextField("Search the web", text: $webSearchText)
                    .keyboardType(.webSearch)
            }
            
            Section("Twitter") {
                TextField("Tweet something", text: $twitterText)
                    .keyboardType(.twitter)
            }
            
            Section("ASCII Capable") {
                TextField("ASCII characters only", text: $asciiText)
                    .keyboardType(.asciiCapable)
            }
            
            Section("Name Phone Pad") {
                TextField("Name or phone", text: $namePhoneText)
                    .keyboardType(.namePhonePad)
            }
        }
        .navigationTitle("Keyboard Types")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        KeyboardTypesView()
    }
}
