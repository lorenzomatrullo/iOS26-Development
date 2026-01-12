import SwiftUI

// GroupBox: A container that groups related content with a subtle background.
struct GroupBoxView: View {
    @State private var agreedToTerms = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                // First row
                HStack(spacing: 16) {
                    // Heart Rate Box
                    GroupBox {
                        VStack(alignment: .leading, spacing: 8) {
                            Label("Heart Rate", systemImage: "heart.fill")
                                .foregroundStyle(.red)
                                .font(.headline)
                            
                            Text("Your heart rate is 90 BPM.")
                                .font(.subheadline)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    
                    // Steps Box
                    GroupBox {
                        VStack(alignment: .leading, spacing: 8) {
                            Label("Steps", systemImage: "figure.walk")
                                .foregroundStyle(.green)
                                .font(.headline)
                            
                            Text("You walked 8,432 steps today.")
                                .font(.subheadline)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                
                // Second row
                HStack(spacing: 16) {
                    // Sleep Box
                    GroupBox {
                        VStack(alignment: .leading, spacing: 8) {
                            Label("Sleep", systemImage: "bed.double.fill")
                                .foregroundStyle(.purple)
                                .font(.headline)
                            
                            Text("You slept for 7h 45m last night.")
                                .font(.subheadline)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    
                    GroupBox {
                        // Calories Box
                        VStack(alignment: .leading, spacing: 8) {
                            Label("Calories", systemImage: "flame.fill")
                                .foregroundStyle(.orange)
                                .font(.headline)
                            
                            Text("You burned 420 calories today.")
                                .font(.subheadline)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                
                // Third row
                HStack(spacing: 16) {
                    // Water Box
                    GroupBox {
                        VStack(alignment: .leading, spacing: 8) {
                            Label("Water", systemImage: "drop.fill")
                                .foregroundStyle(.blue)
                                .font(.headline)
                            
                            Text("You drank 6 glasses of water.")
                                .font(.subheadline)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    
                    // Workout Box
                    GroupBox {
                        VStack(alignment: .leading, spacing: 8) {
                            Label("Workout", systemImage: "dumbbell.fill")
                                .foregroundStyle(.yellow)
                                .font(.headline)
                            
                            Text("You exercised for 45 minutes.")
                                .font(.subheadline)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                
                // End-User Agreement
                GroupBox {
                    VStack(alignment: .leading, spacing: 16) {
                        Text("By using this health tracking app, you agree to share your health data with our secure servers for analysis and personalized recommendations. Your data will be encrypted and never sold to third parties. You can delete your account and all associated data at any time. Continued use of this app constitutes acceptance of our privacy policy and terms of service.")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        
                        Toggle("I agree to the above terms", isOn: $agreedToTerms)
                    }
                } label: {
                    Label("End-User Agreement", systemImage: "building.columns.fill")
                        .font(.headline)
                }
            }
            .padding()
        }
        .navigationTitle("09 - GroupBox")
    }
}

#Preview {
    GroupBoxView()
}
