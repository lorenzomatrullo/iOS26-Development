# iOS 26 Development
A hands-on SwiftUI course built entirely inside an Xcode project. 39 self-contained lessons — open any file, read the code, run the preview.

<br>

### Requirements
| Tool | Purpose |
|------|---------|
| **Xcode 26+** | Run previews and the full app |
| **iOS 26 SDK** | Required for Liquid Glass APIs |

<br>

### How It Works
Each lesson is a single Swift file with its own `#Preview`. You can:

1. **Follow in order** — lessons are numbered 01 to 39, building on each other
2. **Jump around** — every file runs independently, no wiring needed
3. **Use the app** — run the project and pick any lesson from the toolbar menu

<br>

### Lessons
| # | Topic | What You Learn |
|---|-------|----------------|
| 01 | [Text & Modifiers](iOS26-Development/Lessons/01-TextAndModifiers.swift) | Fonts, colors, alignment, line limits |
| 02 | [Stacks & Spacing](iOS26-Development/Lessons/02-StacksAndSpacing.swift) | VStack, HStack, ZStack, Spacer |
| 03 | [Images & SF Symbols](iOS26-Development/Lessons/03-ImagesAndSFSymbols.swift) | Asset images, resizing, clipping, symbols |
| 04 | [Labels](iOS26-Development/Lessons/04-Labels.swift) | Combining text and icons |
| 05 | [ScrollView](iOS26-Development/Lessons/05-ScrollView.swift) | Scrollable content containers |
| 06 | [Button Styles](iOS26-Development/Lessons/06-ButtonStyles.swift) | Standard and Liquid Glass button styles |
| 07 | [Toggles](iOS26-Development/Lessons/07-Toggles.swift) | Toggle switches and @State |
| 08 | [Lists](iOS26-Development/Lessons/08-Lists.swift) | Dynamic data with List and ForEach |
| 09 | [Forms & Sections](iOS26-Development/Lessons/09-FormsAndSections.swift) | Settings screens with Form |
| 10 | [GroupBox](iOS26-Development/Lessons/10-GroupBox.swift) | Grouped content containers |
| 11 | [ForEach](iOS26-Development/Lessons/11-ForEach.swift) | Dynamic view generation |
| 12 | [Sliders](iOS26-Development/Lessons/12-Sliders.swift) | Ranges, steps, labels, tick marks |
| 13 | [Pickers](iOS26-Development/Lessons/13-Pickers.swift) | Menu, segmented, wheel, inline styles |
| 14 | [NavigationStack](iOS26-Development/Lessons/14-NavigationStack.swift) | Screen-to-screen navigation |
| 15 | [Sheets](iOS26-Development/Lessons/15-Sheets.swift) | Modal presentations |
| 16 | [TabView](iOS26-Development/Lessons/16-TabView.swift) | Tab-based app structure with badges |
| 17 | [TabView Pages](iOS26-Development/Lessons/17-TabViewPages.swift) | Page-style swiping |
| 18 | [Menus](iOS26-Development/Lessons/18-Menus.swift) | Context menus, submenus, dividers |
| 19 | [Semantic Toolbars](iOS26-Development/Lessons/19-SemanticToolbars.swift) | Platform-appropriate toolbar placement |
| 20 | [Positional Toolbars](iOS26-Development/Lessons/20-PositionalToolbars.swift) | Exact toolbar positioning and grouping |
| 21 | [Toolbar Menu](iOS26-Development/Lessons/21-ToolbarMenu.swift) | Menu-based toolbar items |
| 22 | [Keyboard Submit Label](iOS26-Development/Lessons/22-KeyboardSubmitLabel.swift) | Custom return key labels |
| 23 | [Keyboard Types](iOS26-Development/Lessons/23-KeyboardTypes.swift) | Email, phone, URL keyboards |
| 24 | [Paste Button](iOS26-Development/Lessons/24-PasteButton.swift) | System paste with permissions |
| 25 | [Share Link](iOS26-Development/Lessons/25-ShareLink.swift) | Native share sheet |
| 26 | [Animations & Transitions](iOS26-Development/Lessons/26-AnimationsAndTransitions.swift) | Implicit animations and view transitions |
| 27 | [Searchable](iOS26-Development/Lessons/27-Searchable.swift) | Search with iOS 26 bottom placement |
| 28 | [Loading Progress](iOS26-Development/Lessons/28-LoadingProgress.swift) | ProgressView and loading states |
| 29 | [Haptic Feedbacks](iOS26-Development/Lessons/29-HapticFeedbacks.swift) | Tactile feedback and vibrations |
| 30 | [Content Unavailable](iOS26-Development/Lessons/30-ContentUnavailable.swift) | Empty states and error views |
| 31 | [Liquid Glass](iOS26-Development/Lessons/LiquidGlass/31-LiquidGlass.swift) | Translucent glass effects |
| 32 | [Liquid Glass Buttons](iOS26-Development/Lessons/LiquidGlass/32-LiquidGlassButtons.swift) | Glass-styled interactive buttons |
| 33 | [Liquid Glass Namespace](iOS26-Development/Lessons/LiquidGlass/33-LiquidGlassNamespace.swift) | Namespace-based glass animations |
| 34 | [Liquid Glass Transition](iOS26-Development/Lessons/LiquidGlass/34-LiquidGlassTransition.swift) | Animated glass transitions |
| 35 | [Liquid Glass Blend](iOS26-Development/Lessons/LiquidGlass/35-LiquidGlassBlend.swift) | Glass blend mode effects |
| 36 | [Liquid Glass Onboarding](iOS26-Development/Lessons/LiquidGlass/36-LiquidGlassOnboarding.swift) | iOS 26-style onboarding flow |
| 37 | [Notifications](iOS26-Development/Lessons/Frameworks/37-Notifications.swift) | Local notifications with UserNotifications |
| 38 | [Request Review](iOS26-Development/Lessons/Frameworks/38-RequestReview.swift) | App Store review prompts with StoreKit |
| 39 | [WebView](iOS26-Development/Lessons/Frameworks/39-WebView.swift) | Web content with WKWebView |

<br>

### Tips
- **First time?** Start at [`01-TextAndModifiers.swift`](iOS26-Development/Lessons/01-TextAndModifiers.swift) and work your way up
- **Quick reference?** Jump to any file by number — e.g., [`18-Menus.swift`](iOS26-Development/Lessons/18-Menus.swift)
- **Extending the course?** Add `40-YourTopic.swift` and follow the same pattern
- Set `UIDesignRequiresCompatibility` to `NO` in Info.plist for Liquid Glass support (already configured)
