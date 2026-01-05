import SwiftUI

// Enum defining all available lesson views in the app.
enum AppView: String, CaseIterable, Identifiable {
    case textAndModifiers = "01 - Text & Modifiers"
    case stacksAndSpacing = "02 - Stacks & Spacing"
    case imagesAndSymbols = "03 - Images & SF Symbols"
    case stateAndButtons = "04 - State & Buttons"
    case buttons = "05 - Button Styles"
    case listsAndForEach = "06 - Lists & ForEach"
    case navigationStack = "07 - Navigation Stack"
    case tabView = "08 - Tab View"
    case formsAndSections = "09 - Forms & Sections"
    case sliders = "10 - Sliders"
    case pickerStyles = "11 - Picker Styles"
    case menus = "12 - Menus"
    case animationsAndTransitions = "13 - Animations & Transitions"
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
                    ToolbarItem(placement: .primaryAction) {
                        Menu {
                            Picker("Select Lesson", selection: $selectedView) {
                                Text("01 - Text & Modifiers").tag(AppView.textAndModifiers)
                                Text("02 - Stacks & Spacing").tag(AppView.stacksAndSpacing)
                                Text("03 - Images & SF Symbols").tag(AppView.imagesAndSymbols)
                                Text("04 - State & Buttons").tag(AppView.stateAndButtons)
                                Text("05 - Button Styles").tag(AppView.buttons)
                                Text("06 - Lists & ForEach").tag(AppView.listsAndForEach)
                                Text("07 - Navigation Stack").tag(AppView.navigationStack)
                                Text("08 - Tab View").tag(AppView.tabView)
                                Text("09 - Forms & Sections").tag(AppView.formsAndSections)
                                Text("10 - Sliders").tag(AppView.sliders)
                                Text("11 - Picker Styles").tag(AppView.pickerStyles)
                                Text("12 - Menus").tag(AppView.menus)
                                Text("13 - Animations & Transitions").tag(AppView.animationsAndTransitions)
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
                .navigationTitle(selectedView.rawValue)
                .navigationBarTitleDisplayMode(.inline)
        }
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
        case .stateAndButtons:
            StateAndButtonsView()
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
