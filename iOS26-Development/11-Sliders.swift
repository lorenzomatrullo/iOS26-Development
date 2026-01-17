import SwiftUI

// Sliders for selecting numeric values within a range.
struct SlidersView: View {
    @State private var basicValue: Double = 50
    @State private var rangeValue: Double = 25
    @State private var stepValue: Double = 1
    @State private var volume: Double = 0.5
    
    var body: some View {
        Form {
            // Basic slider with default range (0...1).
            Section {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Value: \(basicValue, specifier: "%.0f")")
                        .font(.headline)
                    
                    Slider(value: $basicValue, in: 0...100)
                }
            } header: {
                Text("Basic Slider")
            } footer: {
                Text("A simple slider with a custom range from 0 to 100.")
            }
            
            
            
            // Slider with custom range and labels.
            Section {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Temperature: \(rangeValue, specifier: "%.1f")°C")
                        .font(.headline)
                    
                    Slider(value: $rangeValue, in: -10...40) {
                        Text("Temperature")
                    } minimumValueLabel: {
                        Text("-10°")
                    } maximumValueLabel: {
                        Text("40°")
                    }
                }
            } header: {
                Text("Slider with Labels")
            } footer: {
                Text("Sliders can have labels at both ends for context.")
            }
            
            
            
            // Slider with step increments.
            Section {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Step Value: \(stepValue, specifier: "%.0f")")
                        .font(.headline)
                    
                    Slider(value: $stepValue, in: 0...2, step: 1.0, label: {})
                    
                    Text("Moves in increments of 1 with visual tick marks")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
            } header: {
                Text("Slider with Steps and Ticks")
            } footer: {
                Text("Use the step parameter to snap to discrete values and the ticks parameter to show visual indicators at specific positions.")
            }
            
            
            
            // Slider with SF Symbol labels.
            Section {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Volume: \(Int(volume * 100))%")
                        .font(.headline)
                    
                    HStack {
                        Image(systemName: "speaker.fill")
                            .foregroundStyle(.secondary)
                        
                        Slider(value: $volume, in: 0...1)
                        
                        Image(systemName: "speaker.wave.3.fill")
                            .foregroundStyle(.secondary)
                    }
                }
            } header: {
                Text("Slider with Icons")
            } footer: {
                Text("SF Symbols work great as visual indicators for slider ranges.")
            }
            .tint(.red) // change the color of the slider
            
            
            
            // Visual feedback example.
            Section {
                VStack(alignment: .leading, spacing: 12) {
                    HStack {
                        Text("Brightness")
                            .font(.headline)
                        Spacer()
                        Text("\(Int(basicValue))%")
                            .font(.headline)
                            .foregroundStyle(.blue)
                    }
                    
                    Slider(value: $basicValue, in: 0...100)
                        .tint(.blue)
                    
                    // Visual representation.
                    Rectangle()
                        .fill(.blue.opacity(basicValue / 100))
                        .frame(height: 40)
                        .cornerRadius(8)
                }
            } header: {
                Text("Slider with Visual Feedback")
            } footer: {
                Text("Combine sliders with visual elements to show the current value dynamically.")
            }
        }
        .listSectionSpacing(20)
        .navigationTitle("10 - Sliders")
    }
}

#Preview {
    SlidersView()
}
