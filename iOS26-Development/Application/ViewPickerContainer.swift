import SwiftUI

// Enum defining all available lesson views in the app.
enum AppView: String, CaseIterable, Identifiable {
    // Foundation - Basic UI Building Blocks
    case textAndModifiers = "01 - Text & Modifiers"
    case stacksAndSpacing = "02 - Stacks & Spacing"
    case imagesAndSymbols = "03 - Images & SF Symbols"
    case labels = "04 - Labels"
    case scrollView = "05 - ScrollView"
    case buttons = "06 - Button Styles"
    case stateAndButtons = "07 - Toggles"
    
    // Basic Interaction & Organization
    case lists = "08 - Lists"
    case formsAndSections = "09 - Forms & Sections"
    case groupBox = "10 - GroupBox"
    
    // Input Controls
    case sliders = "11 - Sliders"
    case pickers = "12 - Picker Styles"

    // Navigation & Structure
    case navigationStack = "13 - Navigation Stack"
    case sheets = "14 - Sheets"
    case tabView = "15 - Tab View"
    case tabViewPages = "16 - Tab View Pages"

    // Menus & Toolbars
    case menus = "17 - Menus"
    case semanticToolbars = "18 - Semantic Toolbars"
    case positionalToolbars = "19 - Positional Toolbars"
    case toolbarMenu = "20 - Toolbar Menu"

    // Additional Input Controls
    case submitLabel = "21 - Keyboard Submit Label"
    case keyboardTypes = "22 - Keyboard Types"
    case pasteButton = "23 - Paste Button"
    case shareLink = "24 - Share Link"

    // Polish & Enhancement
    case animationsAndTransitions = "25 - Animations & Transitions"
    case searchable = "26 - Searchable"
    case loadingProgress = "27 - Loading Progress"
    case hapticFeedbacks = "28 - Haptic Feedbacks"
    case contentUnavailable = "29 - Content Unavailable"

    // Other Frameworks (non-SwiftUI imports)
    case notifications = "Notifications"
    case requestReview = "Request Review"
    case webView = "WebView"

    // Liquid Glass (Advanced Demos)
    case liquidGlass = "Liquid Glass"
    case liquidGlassNamespace = "Liquid Glass Namespace"
    case liquidGlassTransition = "Liquid Glass Transition"
    case liquidGlassBlend = "Liquid Glass Blend"
    
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
                                    Text("04 - Labels").tag(AppView.labels)
                                    Text("05 - ScrollView").tag(AppView.scrollView)
                                    Text("06 - Button Styles").tag(AppView.buttons)
                                    Text("07 - Toggles").tag(AppView.stateAndButtons)
                                    Text("08 - Lists").tag(AppView.lists)
                                    Text("09 - Forms & Sections").tag(AppView.formsAndSections)
                                    Text("10 - GroupBox").tag(AppView.groupBox)
                                    Text("11 - Sliders").tag(AppView.sliders)
                                    Text("12 - Pickers").tag(AppView.pickers)
                                    Text("13 - Navigation Stack").tag(AppView.navigationStack)
                                    Text("14 - Sheets").tag(AppView.sheets)
                                    Text("15 - Tab View").tag(AppView.tabView)
                                    Text("16 - Tab View Pages").tag(AppView.tabViewPages)
                                    Text("17 - Menus").tag(AppView.menus)
                                    Text("18 - Semantic Toolbars").tag(AppView.semanticToolbars)
                                    Text("19 - Positional Toolbars").tag(AppView.positionalToolbars)
                                    Text("20 - Toolbar Menu").tag(AppView.toolbarMenu)
                                    Text("21 - Keyboard Submit Label").tag(AppView.submitLabel)
                                    Text("22 - Keyboard Types").tag(AppView.keyboardTypes)
                                    Text("23 - Paste Button").tag(AppView.pasteButton)
                                    Text("24 - Share Link").tag(AppView.shareLink)
                                    Text("25 - Animations & Transitions").tag(AppView.animationsAndTransitions)
                                    Text("26 - Searchable").tag(AppView.searchable)
                                    Text("27 - Loading Progress").tag(AppView.loadingProgress)
                                    Text("28 - Haptic Feedbacks").tag(AppView.hapticFeedbacks)
                                    Text("29 - Content Unavailable").tag(AppView.contentUnavailable)
                                }

                                Divider()

                                // Other Frameworks submenu
                                Menu("Other Frameworks") {
                                    Picker("Select Other Framework Lesson", selection: $selectedView) {
                                        Text("Notifications").tag(AppView.notifications)
                                        Text("Request Review").tag(AppView.requestReview)
                                        Text("WebView").tag(AppView.webView)
                                    }
                                }

                                // Liquid Glass submenu
                                Menu("Liquid Glass") {
                                    Picker("Select Liquid Glass Lesson", selection: $selectedView) {
                                        Text("Liquid Glass").tag(AppView.liquidGlass)
                                        Text("Liquid Glass Namespace").tag(AppView.liquidGlassNamespace)
                                        Text("Liquid Glass Transition").tag(AppView.liquidGlassTransition)
                                        Text("Liquid Glass Blend").tag(AppView.liquidGlassBlend)
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
        case .labels:
            LabelsView()
        case .scrollView:
            ScrollViewView()
        case .stateAndButtons:
            TogglesView()
        case .lists:
            ListsView()
        case .navigationStack:
            NavigationStackView()
        case .tabView:
            TabBarView()
        case .tabViewPages:
            TabViewPages()
        case .formsAndSections:
            FormsAndSectionsView()
        case .sliders:
            SlidersView()
        case .pickers:
            PickersView()
        case .submitLabel:
            KeyboardSubmitLabelView()
        case .keyboardTypes:
            KeyboardTypesView()
        case .pasteButton:
            PasteButtonView()
        case .shareLink:
            ShareLinkView()
        case .menus:
            MenusView()
        case .animationsAndTransitions:
            AnimationsAndTransitionsView()
        case .searchable:
            SearchableView()
        case .loadingProgress:
            LoadingProgressView()
        case .notifications:
            UserNotificationsView()
        case .hapticFeedbacks:
            HapticFeedbacksView()
        case .requestReview:
            RequestReviewView()
        case .contentUnavailable:
            ContentUnavailableExampleView()
        case .webView:
            WebContentView()
        case .semanticToolbars:
            SemanticToolbarsView(onReturnToFirstLesson: returnToFirstLesson)
        case .positionalToolbars:
            PositionalToolbarsView(onReturnToFirstLesson: returnToFirstLesson)
        case .toolbarMenu:
            ToolbarMenuView()
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
        case .liquidGlassBlend:
            LiquidGlassBlendView()
        }
    }
}
