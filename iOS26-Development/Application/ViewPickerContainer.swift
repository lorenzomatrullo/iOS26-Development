import SwiftUI

enum AppView: String, CaseIterable, Identifiable {
    case textAndModifiers = "01 - Text & Modifiers"
    case stacksAndSpacing = "02 - Stacks & Spacing"
    case imagesAndSymbols = "03 - Images & SF Symbols"
    case labels = "04 - Labels"
    case scrollView = "05 - ScrollView"
    case buttons = "06 - Button Styles"
    case stateAndButtons = "07 - Toggles"

    case lists = "08 - Lists"
    case formsAndSections = "09 - Forms & Sections"
    case groupBox = "10 - GroupBox"
    case forEachView = "ForEach"

    case sliders = "11 - Sliders"
    case pickers = "12 - Picker Styles"
    case submitLabel = "21 - Keyboard Submit Label"
    case keyboardTypes = "22 - Keyboard Types"
    case pasteButton = "23 - Paste Button"
    case shareLink = "24 - Share Link"

    case navigationStack = "13 - Navigation Stack"
    case sheets = "14 - Sheets"
    case tabView = "15 - Tab View"
    case tabViewPages = "16 - Tab View Pages"

    case menus = "17 - Menus"
    case semanticToolbars = "18 - Semantic Toolbars"
    case positionalToolbars = "19 - Positional Toolbars"
    case toolbarMenu = "20 - Toolbar Menu"

    case animationsAndTransitions = "25 - Animations & Transitions"
    case searchable = "26 - Searchable"
    case loadingProgress = "27 - Loading Progress"
    case hapticFeedbacks = "28 - Haptic Feedbacks"
    case contentUnavailable = "29 - Content Unavailable"

    case notifications = "Notifications"
    case requestReview = "Request Review"
    case webView = "WebView"

    case liquidGlass = "Liquid Glass"
    case liquidGlassButtons = "Liquid Glass Buttons"
    case liquidGlassNamespace = "Liquid Glass Namespace"
    case liquidGlassTransition = "Liquid Glass Transition"
    case liquidGlassBlend = "Liquid Glass Blend"
    case liquidGlassOnboarding = "Liquid Glass Onboarding"

    var id: String { rawValue }

    enum Category {
        case lessons, frameworks, liquidGlass
    }

    var category: Category {
        switch self {
        case .notifications, .requestReview, .webView:
            return .frameworks
        case .liquidGlass, .liquidGlassButtons, .liquidGlassNamespace,
             .liquidGlassTransition, .liquidGlassBlend, .liquidGlassOnboarding:
            return .liquidGlass
        default:
            return .lessons
        }
    }

    static let lessons = allCases.filter { $0.category == .lessons }
    static let frameworks = allCases.filter { $0.category == .frameworks }
    static let liquidGlassCases = allCases.filter { $0.category == .liquidGlass }
}

struct ViewPickerContainer: View {
    @State private var selectedView: AppView = .textAndModifiers

    var body: some View {
        NavigationStack {
            selectedViewContent
                .toolbar {
                    if selectedView != .semanticToolbars && selectedView != .positionalToolbars {
                        ToolbarItem(placement: .primaryAction) {
                            Menu {
                                Picker("Select Lesson", selection: $selectedView) {
                                    ForEach(AppView.lessons) { view in
                                        Text(view.rawValue).tag(view)
                                    }
                                }

                                Divider()

                                Menu("Other Frameworks") {
                                    Picker("Select Framework", selection: $selectedView) {
                                        ForEach(AppView.frameworks) { view in
                                            Text(view.rawValue).tag(view)
                                        }
                                    }
                                }

                                Menu("Liquid Glass") {
                                    Picker("Select Liquid Glass", selection: $selectedView) {
                                        ForEach(AppView.liquidGlassCases) { view in
                                            Text(view.rawValue).tag(view)
                                        }
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
        case .formsAndSections:
            FormsAndSectionsView()
        case .groupBox:
            GroupBoxView()
        case .forEachView:
            ForEachView()
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
        case .navigationStack:
            NavigationStackView()
        case .sheets:
            SheetsView()
        case .tabView:
            TabBarView()
        case .tabViewPages:
            TabViewPages()
        case .menus:
            MenusView()
        case .semanticToolbars:
            SemanticToolbarsView { selectedView = .textAndModifiers }
        case .positionalToolbars:
            PositionalToolbarsView { selectedView = .textAndModifiers }
        case .toolbarMenu:
            ToolbarMenuView()
        case .animationsAndTransitions:
            AnimationsAndTransitionsView()
        case .searchable:
            SearchableView()
        case .loadingProgress:
            LoadingProgressView()
        case .hapticFeedbacks:
            HapticFeedbacksView()
        case .contentUnavailable:
            ContentUnavailableExampleView()
        case .notifications:
            UserNotificationsView()
        case .requestReview:
            RequestReviewView()
        case .webView:
            WebContentView()
        case .buttons:
            ButtonsView()
        case .liquidGlass:
            LiquidGlassView()
        case .liquidGlassButtons:
            LiquidGlassButtons {}
        case .liquidGlassNamespace:
            LiquidGlassNamespaceView()
        case .liquidGlassTransition:
            LiquidGlassTransitionView()
        case .liquidGlassBlend:
            LiquidGlassBlendView()
        case .liquidGlassOnboarding:
            LiquidGlassOnboardingView()
        }
    }
}
