import SwiftUI

// Enum defining all available lesson views in the app.
enum AppView: String, CaseIterable, Identifiable {
    // Foundation - Basic UI Building Blocks
    case textAndModifiers = "01 - Text & Modifiers"
    case stacksAndSpacing = "02 - Stacks & Spacing"
    case imagesAndSymbols = "03 - Images & SF Symbols"
    case scrollView = "04 - ScrollView"
    case buttons = "05 - Button Styles"
    case stateAndButtons = "06 - Toggles"

    // Basic Interaction & Organization
    case listsAndForEach = "07 - Lists & ForEach"
    case formsAndSections = "08 - Forms & Sections"
    case groupBox = "09 - GroupBox"

    // Input Controls
    case sliders = "10 - Sliders"
    case pickerStyles = "11 - Picker Styles"

    // Navigation & Structure
    case navigationStack = "12 - Navigation Stack"
    case sheets = "13 - Sheets"
    case tabView = "14 - Tab View"

    // Advanced Interactions
    case menus = "15 - Menus"
    case semanticToolbars = "16 - Semantic Toolbars"
    case positionalToolbars = "17 - Positional Toolbars"

    // Polish & Enhancement
    case animationsAndTransitions = "18 - Animations & Transitions"

    // Liquid Glass (Advanced Demos)
    case liquidGlass = "Liquid Glass"
    case liquidGlassNamespace = "Liquid Glass Namespace"
    case liquidGlassTransition = "Liquid Glass Transition"

    var id: String { rawValue }
}

// Main container view that provides lesson selection and navigation.
struct ViewPickerContainer: View {
    @State private var selectedView: AppView = .textAndModifiers
    
    var body: some View {
        NavigationStack {
            selectedViewContent
                .toolbar {
                    // Hide the View Selector menu for toolbar lessons to avoid confusion
                    if selectedView != .semanticToolbars && selectedView != .positionalToolbars {
                        ToolbarItem(placement: .primaryAction) {
                            Menu {
                                Picker("Select Lesson", selection: $selectedView) {
                                    Text("01 - Text & Modifiers").tag(AppView.textAndModifiers)
                                    Text("02 - Stacks & Spacing").tag(AppView.stacksAndSpacing)
                                    Text("03 - Images & SF Symbols").tag(AppView.imagesAndSymbols)
                                    Text("04 - ScrollView").tag(AppView.scrollView)
                                    Text("05 - Button Styles").tag(AppView.buttons)
                                    Text("06 - Toggles").tag(AppView.stateAndButtons)
                                    Text("07 - Lists & ForEach").tag(AppView.listsAndForEach)
                                    Text("08 - Forms & Sections").tag(AppView.formsAndSections)
                                    Text("09 - GroupBox").tag(AppView.groupBox)
                                    Text("10 - Sliders").tag(AppView.sliders)
                                    Text("11 - Picker Styles").tag(AppView.pickerStyles)
                                    Text("12 - Navigation Stack").tag(AppView.navigationStack)
                                    Text("13 - Sheets").tag(AppView.sheets)
                                    Text("14 - Tab View").tag(AppView.tabView)
                                    Text("15 - Menus").tag(AppView.menus)
                                    Text("16 - Semantic Toolbars").tag(AppView.semanticToolbars)
                                    Text("17 - Positional Toolbars").tag(AppView.positionalToolbars)
                                    Text("18 - Animations & Transitions").tag(AppView.animationsAndTransitions)
                                }

                                Divider()

                                // Liquid Glass submenu
                                Menu("Liquid Glass") {
                                    Picker("Select Liquid Glass Lesson", selection: $selectedView) {
                                        Text("Liquid Glass").tag(AppView.liquidGlass)
                                        Text("Liquid Glass Namespace").tag(AppView.liquidGlassNamespace)
                                        Text("Liquid Glass Transition").tag(AppView.liquidGlassTransition)
                                    }
                                }
                            } label: {
                                Label("View Selector", systemImage: "rectangle.stack")
                            }
                        }
                    }
                }
                .navigationTitle(selectedView.rawValue)
                .navigationBarTitleDisplayMode(.inline)
        }
    }

    // Function to return to the first lesson
    private func returnToFirstLesson() {
        selectedView = .textAndModifiers
    }

    @ViewBuilder
    private var selectedViewContent: some View {
        switch selectedView {
        case .textAndModifiers:
            TextAndModifiersView()
        case .stacksAndSpacing:
            StacksAndSpacingView()
        case .imagesAndSymbols:
            ImagesAndSFSymbolsView()
        case .scrollView:
            ScrollViewView()
        case .stateAndButtons:
            TogglesView()
        case .listsAndForEach:
            ListsAndForEachView()
        case .navigationStack:
            NavigationStackView()
        case .tabView:
            TabBarView()
        case .formsAndSections:
            FormsAndSectionsView()
        case .sliders:
            SlidersView()
        case .pickerStyles:
            PickerStylesView()
        case .menus:
            MenusView()
        case .animationsAndTransitions:
            AnimationsAndTransitionsView()
        case .semanticToolbars:
            SemanticToolbarsView(onReturnToFirstLesson: returnToFirstLesson)
        case .positionalToolbars:
            PositionalToolbarsView(onReturnToFirstLesson: returnToFirstLesson)
        case .sheets:
            SheetsView()
        case .groupBox:
            GroupBoxView()
        case .buttons:
            ButtonsView()
        case .liquidGlass:
            LiquidGlassView()
        case .liquidGlassNamespace:
            LiquidGlassNamespaceView()
        case .liquidGlassTransition:
            LiquidGlassTransitionView()
        }
    }
}
