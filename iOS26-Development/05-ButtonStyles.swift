import SwiftUI

// Button styles showcase for different contexts and emphasis levels.
struct ButtonsView: View {
    var body: some View {
        Form {
            Section("Standard Button Styles") {
                LabeledContent("Default") {
                    Button("Label") {}
                }
                
                LabeledContent("Borderless") {
                    Button("Label") {}
                        .buttonStyle(.borderless)
                }
                
                LabeledContent("Plain") {
                    Button("Label") {}
                        .buttonStyle(.plain)
                }
                
                LabeledContent("Bordered") {
                    Button("Label") {}
                        .buttonStyle(.bordered)
                }
                
                LabeledContent("Bordered Prominent") {
                    Button("Label") {}
                        .buttonStyle(.borderedProminent)
                }
            }
            
            Section("Liquid Glass Styles") {
                LabeledContent("Glass") {
                    Button("Label") {}
                        .buttonStyle(.glass)
                }
                
                LabeledContent("Glass Prominent") {
                    Button("Label") {}
                        .buttonStyle(.glassProminent)
                }
            }
        }
        .navigationTitle("05 - Button Styles")
    }
}

#Preview {
    ButtonsView()
}
