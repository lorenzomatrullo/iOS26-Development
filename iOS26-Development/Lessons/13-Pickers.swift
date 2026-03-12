import SwiftUI

// Pickers with different styles for selecting from a list of options.
struct PickersView: View {
    let themes = ["System", "Light", "Dark"]
    let menuOptions = ["Option 1", "Option 2", "Option 3", "Option 4"]
    let sizeOptions = ["Small", "Medium", "Large"]
    let colorOptions = ["Red", "Green", "Blue", "Yellow", "Purple"]
    let platformOptions = ["iOS", "macOS", "watchOS", "tvOS"]

    @State private var menuSelection = "Option 1"
    @State private var segmentedSelection = "Small"
    @State private var wheelSelection = 1
    @State private var inlineSelection = "Red"
    @State private var navigationSelection = "iOS"
    @State private var selectedTheme = "System"

    var body: some View {
        Form {
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

            Section {
                Menu("Theme") {
                    Picker("Pick a Theme", selection: $selectedTheme) {
                        ForEach(themes, id: \.self) { theme in
                            Text(theme)
                        }
                    }
                    .pickerStyle(.palette)
                }
            } header: {
                Text("Palette Style")
            } footer: {
                Text("Palette pickers in a Menu show options with visual indicators.")
            }
        }
        .listSectionSpacing(20)
        .navigationTitle("13 - Pickers")
    }
}

#Preview {
    PickersView()
}
