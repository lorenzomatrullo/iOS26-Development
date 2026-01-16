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
    case submitLabel = "13 - Submit Label"
    case pasteButton = "14 - Paste Button"
    case shareLink = "15 - Share Link"

    // Navigation & Structure
    case navigationStack = "16 - Navigation Stack"
    case sheets = "17 - Sheets"
    case tabView = "18 - Tab View"
    case tabViewPages = "19 - Tab View Pages"

    // Advanced Interactions
    case menus = "20 - Menus"
    case semanticToolbars = "21 - Semantic Toolbars"
    case positionalToolbars = "22 - Positional Toolbars"
    case toolbarMenu = "23 - Toolbar Menu"

    // Polish & Enhancement
    case animationsAndTransitions = "24 - Animations & Transitions"
    case searchable = "25 - Searchable"
    case loadingProgress = "26 - Loading Progress"
    case hapticFeedbacks = "27 - Haptic Feedbacks"
    case contentUnavailable = "28 - Content Unavailable"

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
                                    Text("13 - Keyboard Submit Label").tag(AppView.submitLabel)
                                    Text("14 - Paste Button").tag(AppView.pasteButton)
                                    Text("15 - Share Link").tag(AppView.shareLink)
                                    Text("16 - Navigation Stack").tag(AppView.navigationStack)
                                    Text("17 - Sheets").tag(AppView.sheets)
                                    Text("18 - Tab View").tag(AppView.tabView)
                                    Text("19 - Tab View Pages").tag(AppView.tabViewPages)
                                    Text("20 - Menus").tag(AppView.menus)
                                    Text("21 - Semantic Toolbars").tag(AppView.semanticToolbars)
                                    Text("22 - Positional Toolbars").tag(AppView.positionalToolbars)
                                    Text("23 - Toolbar Menu").tag(AppView.toolbarMenu)
                                    Text("24 - Animations & Transitions").tag(AppView.animationsAndTransitions)
                                    Text("25 - Searchable").tag(AppView.searchable)
                                    Text("26 - Loading Progress").tag(AppView.loadingProgress)
                                    Text("27 - Haptic Feedbacks").tag(AppView.hapticFeedbacks)
                                    Text("28 - Content Unavailable").tag(AppView.contentUnavailable)
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
