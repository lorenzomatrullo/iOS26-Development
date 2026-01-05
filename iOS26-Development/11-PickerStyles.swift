import SwiftUI

// Pickers with different styles for selecting from a list of options.
struct PickerStylesView: View {
    @State private var menuSelection = "Option 1"
    @State private var segmentedSelection = "Small"
    @State private var wheelSelection = 1
    @State private var inlineSelection = "Red"
    @State private var navigationSelection = "iOS"
    
    let menuOptions = ["Option 1", "Option 2", "Option 3", "Option 4"]
    let sizeOptions = ["Small", "Medium", "Large"]
    let colorOptions = ["Red", "Green", "Blue", "Yellow", "Purple"]
    let platformOptions = ["iOS", "macOS", "watchOS", "tvOS"]
    
    var body: some View {
        NavigationStack {
            Form {
                // Default picker style (menu) in a Form.
                Section {
                    Picker("Choose an option", selection: $menuSelection) {
                        ForEach(menuOptions, id: \.self) { option in
                            Text(option)
                        }
                    }
                } header: {
                    Text("Menu Style (Default)")
                } footer: {
                    Text("The default picker style in a Form shows a menu when tapped.")
                }
                
                // Segmented picker style.
                Section {
                    Picker("Size", selection: $segmentedSelection) {
                        ForEach(sizeOptions, id: \.self) { size in
                            Text(size)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("Segmented Style")
                } footer: {
                    Text("Segmented pickers show all options as buttons in a row.")
                }
                
                // Wheel picker style.
                Section {
                    Picker("Level", selection: $wheelSelection) {
                        ForEach(1...10, id: \.self) { level in
                            Text("Level \(level)")
                        }
                    }
                    .pickerStyle(.wheel)
                } header: {
                    Text("Wheel Style")
                } footer: {
                    Text("Wheel pickers let you scroll through options like a spinning wheel.")
                }
                
                // Inline picker style.
                Section {
                    Picker("Color", selection: $inlineSelection) {
                        ForEach(colorOptions, id: \.self) { color in
                            Text(color)
                        }
                    }
                    .pickerStyle(.inline)
                } header: {
                    Text("Inline Style")
                } footer: {
                    Text("Inline pickers expand to show all options as a list within the form.")
                }
                
                // Navigation link picker style (deprecated but still functional).
                Section {
                    Picker("Platform", selection: $navigationSelection) {
                        ForEach(platformOptions, id: \.self) { platform in
                            Text(platform)
                        }
                    }
                    .pickerStyle(.navigationLink)
                } header: {
                    Text("Navigation Link Style")
                } footer: {
                    Text("Navigation link pickers push to a new screen to show options.")
                }
            }
            .listSectionSpacing(20)
            .navigationTitle("Picker Styles")
        }
    }
}

#Preview {
    PickerStylesView()
}
