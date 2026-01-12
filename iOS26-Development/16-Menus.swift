import SwiftUI

// Menus for presenting contextual actions and options.
struct MenusView: View {
    @State private var selectedOption = "None"
    @State private var showAlert = false
    @State private var bold = false
    @State private var italic = false
    @State private var underline = false
    
    var body: some View {
        Form {
            // Basic menu with simple actions.
            Section {
                Menu("Simple Menu") {
                    Button("Option 1") {
                        selectedOption = "Option 1"
                    }
                    
                    Button("Option 2") {
                        selectedOption = "Option 2"
                    }
                    
                    Button("Option 3") {
                        selectedOption = "Option 3"
                    }
                }
                
                Text("Selected: \(selectedOption)")
                    .foregroundStyle(.secondary)
            } header: {
                Text("Basic Menu")
            } footer: {
                Text("Menus present a list of actions when tapped.")
            }
            
            
            
            // Menu with SF Symbols.
            Section {
                Menu {
                    Button(action: { selectedOption = "Edit" }) {
                        Label("Edit", systemImage: "pencil")
                        Text("Modify the item")
                    }
                    
                    Button(action: { selectedOption = "Share" }) {
                        Label("Duplicate", systemImage: "doc.on.doc")
                        Text("Create a copy")
                    }
                    
                    Button(role: .destructive, action: { selectedOption = "Delete" }) {
                        Label("Delete", systemImage: "trash")
                        Text("Remove permanently")
                    }
                } label: {
                    Label("Actions", systemImage: "ellipsis.circle")
                }
                
                Text("Selected: \(selectedOption)")
                    .foregroundStyle(.secondary)
            } header: {
                Text("Menu with Icons")
            } footer: {
                Text("Use Label to add SF Symbols to menu items for better visual communication.")
            }
            
            
            
            // Menu with sections and dividers.
            Section {
                Menu("Organized Menu") {
                    Button("New File") {
                        selectedOption = "New File"
                    }
                    
                    Button("Open File") {
                        selectedOption = "Open File"
                    }
                    
                    Divider()
                    
                    Button("Save") {
                        selectedOption = "Save"
                    }
                    
                    Button("Save As...") {
                        selectedOption = "Save As"
                    }
                    
                    Divider()
                    
                    Button("Close", role: .destructive) {
                        selectedOption = "Close"
                    }
                }
                
                Text("Selected: \(selectedOption)")
                    .foregroundStyle(.secondary)
            } header: {
                Text("Menu with Dividers")
            } footer: {
                Text("Dividers help group related menu items logically.")
            }
            
            
            
            // Nested menus (submenus).
            Section {
                Menu("File") {
                    Button("New") {
                        selectedOption = "New"
                    }
                    
                    Menu("Recent Files") {
                        Button("Document 1") {
                            selectedOption = "Document 1"
                        }
                        
                        Button("Document 2") {
                            selectedOption = "Document 2"
                        }
                        
                        Button("Document 3") {
                            selectedOption = "Document 3"
                        }
                    }
                    
                    Button("Open...") {
                        selectedOption = "Open"
                    }
                }
                
                Text("Selected: \(selectedOption)")
                    .foregroundStyle(.secondary)
            } header: {
                Text("Nested Menus")
            } footer: {
                Text("Menus can contain other menus for hierarchical organization.")
            }
            
            
            
            // Menu with destructive actions.
            Section {
                Menu("More Options") {
                    Button("Info") {
                        selectedOption = "Info"
                    }
                    
                    Button("Duplicate") {
                        selectedOption = "Duplicate"
                    }
                    
                    Divider()
                    
                    Button("Delete", role: .destructive) {
                        showAlert = true
                        selectedOption = "Delete"
                    }
                }
                
                Text("Selected: \(selectedOption)")
                    .foregroundStyle(.secondary)
            } header: {
                Text("Destructive Actions")
            } footer: {
                Text("Use the destructive role for actions that delete or remove content.")
            }
            
            
            
            // Menu with dismiss behavior disabled (iOS 16.4+).
            Section {
                Menu("Format") {
                    Toggle("Bold", isOn: $bold)
                    Toggle("Italic", isOn: $italic)
                    Toggle("Underline", isOn: $underline)
                }
                .menuActionDismissBehavior(.disabled)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Bold: \(bold ? "On" : "Off")")
                        Text("Italic: \(italic ? "On" : "Off")")
                        Text("Underline: \(underline ? "On" : "Off")")
                    }
                    .font(.caption)
                }
            } header: {
                Text("Menu Dismiss Behavior")
            } footer: {
                Text("Keep a menu open after selecting an action. Perfect for menus with multiple selections.")
            }
            
            
            
            // Context menu alternative.
            Section {
                Text("Long press me")
                    .foregroundStyle(.blue)
                    .contextMenu {
                        Button("Copy") {
                            selectedOption = "Copy"
                        }
                        
                        Button("Paste") {
                            selectedOption = "Paste"
                        }
                        
                        Button("Delete", role: .destructive) {
                            selectedOption = "Delete"
                        }
                    }
                
                Text("Selected: \(selectedOption)")
                    .foregroundStyle(.secondary)
            } header: {
                Text("Context Menu")
            } footer: {
                Text("Context menus appear on long press and work similarly to regular menus.")
            }
        }
        .listSectionSpacing(20)
        .navigationTitle("15 - Menus")
        .alert("Delete Item", isPresented: $showAlert) {
            Button("Cancel", role: .cancel) {}
            Button("Delete", role: .destructive) {}
        } message: {
            Text("Are you sure you want to delete this item?")
        }
    }
}

#Preview {
    MenusView()
}
