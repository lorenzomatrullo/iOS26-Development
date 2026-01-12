## SwiftUI for iOS 26 – Mini Course in a Repo

This repository is a small, hands‑on SwiftUI learning path for iOS 26.
Each Swift file is a tiny, runnable example that you can open in Xcode, preview, and extend as you go.

Over time you can treat this as a **mini textbook you can execute**: move through the numbered files in order, read the code, then run the previews or the app.

---

### Requirements

- **Xcode 16+** with iOS 26 SDK (recommended way to run SwiftUI previews and the iOS app).
- **Swift toolchain** available in the terminal (installed with Xcode).
- **Visual Studio Code** (optional, for browsing and editing the code).
  - **Swift extension** by Apple (for syntax highlighting and language support).
  - **Code Runner** extension (for quickly running small Swift snippets or experiments).

**Quick setup with VS Code**

1. Install Visual Studio Code.
2. Install the Swift extension and the Code Runner extension from the VS Code Marketplace.
3. Make sure the `swift` tool is available in the integrated terminal (Xcode command line tools installed).
4. Open this folder in VS Code.
5. Open any Swift file and use the Code Runner play button if you create small script‑style examples; for SwiftUI UI previews and the full app, use Xcode.

For more details on Swift development with VS Code, see the official docs:
- [Swift in Visual Studio Code](https://code.visualstudio.com/docs/languages/swift)

---

### Repository Structure

- **`iOS26-Development`**: Main SwiftUI app target.
  - **`Application/`**: App entry point and navigation controller.
    - `App.swift`: Main app entry point with Liquid Glass compatibility notes.
    - `ViewPickerContainer.swift`: Lesson selector and navigation controller.
  - `01-TextAndModifiers.swift`: Text styling and common modifiers.
  - `02-StacksAndSpacing.swift`: VStack, HStack, ZStack, and spacing.
  - `03-ImagesAndSFSymbols.swift`: Asset images and SF Symbols.
  - `04-Labels.swift`: Combining text and icons with Label views.
  - `05-ScrollView.swift`: Scrollable content containers.
  - `06-ButtonStyles.swift`: Button styles (standard and Liquid Glass styles).
  - `07-Toggles.swift`: Toggle switches and @State.
  - `08-Lists.swift`: Lists of data with ForEach.
  - `09-FormsAndSections.swift`: Form, Sections, text fields, and toggles.
  - `10-GroupBox.swift`: Grouping related content with GroupBox.
  - `11-Sliders.swift`: Slider controls with ranges, steps, labels, and tick marks.
  - `12-Pickers.swift`: Picker with different styles (menu, segmented, wheel, inline).
  - `13-NavigationStack.swift`: NavigationStack and NavigationLink.
  - `14-Sheets.swift`: Modal presentations with sheets.
  - `15-TabView.swift`: TabView for basic app structure with badge customization.
  - `16-Menus.swift`: Menus, context menus, menu organization, and dismiss behavior.
  - `17-SemanticToolbars.swift`: Semantic toolbar placements for platform-appropriate positioning.
  - `18-PositionalToolbars.swift`: Positional toolbar placements with grouping and spacers.
  - `19-ToolbarMenu.swift`: Menu-based toolbar items.
  - `20-AnimationsAndTransitions.swift`: Implicit animations and transitions.
  - `21-Searchable.swift`: Search functionality with iOS 26's new bottom placement and navigation bar drawer option.
  - `ForEach.swift`: Deep dive into ForEach and dynamic lists.
  - `LiquidGlass.swift`, `LiquidGlassNamespace.swift`, `LiquidGlassTransition.swift`: Bonus lessons on advanced UI effects.
- **`iOS26-Development.xcodeproj`**: Xcode project.

Each numbered file is independent and has its own `#Preview`, so you can open and run any lesson without wiring it into the app entry point.

---

### Learning Path

Follow the lessons in order for the best learning experience. Each lesson builds on concepts from previous ones.

#### Part 1: Foundation – Basic UI Building Blocks

- **[01 – Text and Modifiers](iOS26-Development/01-TextAndModifiers.swift)**
  **Start here!** Learn the basics: displaying text with fonts, colors, emphasis, alignment, and line limits.

- **[02 – Stacks and Spacing](iOS26-Development/02-StacksAndSpacing.swift)**
  Master layout fundamentals with VStack, HStack, ZStack, spacers, and simple backgrounds.

- **[03 – Images and SF Symbols](iOS26-Development/03-ImagesAndSFSymbols.swift)**
  Add visual content using asset images, resizing, clipping, and SF Symbols.

- **[04 – Labels](iOS26-Development/04-Labels.swift)**
  Combine text and icons elegantly with Label views.

- **[05 – ScrollView](iOS26-Development/05-ScrollView.swift)**
  Create scrollable content containers for larger views.

- **[06 – Button Styles](iOS26-Development/06-ButtonStyles.swift)**
  Comprehensive showcase of all button styles including standard and Liquid Glass variants.

- **[07 – Toggles](iOS26-Development/07-Toggles.swift)**
  Interactive toggle switches and state management with @State.

#### Part 2: Basic Interaction & Organization

- **[08 – Lists](iOS26-Development/08-Lists.swift)**
  Display dynamic data with List views and simple row layouts.

- **[09 – Forms and Sections](iOS26-Development/09-FormsAndSections.swift)**
  Build settings screens with Form, Sections, TextField, and Toggle.

- **[10 – GroupBox](iOS26-Development/10-GroupBox.swift)**
  Group related content with labeled containers.

#### Part 3: Input Controls

- **[11 – Sliders](iOS26-Development/11-Sliders.swift)**
  Work with slider controls for numeric input: ranges, steps, labels, tick marks, and visual feedback.

- **[12 – Picker Styles](iOS26-Development/12-Pickers.swift)**
  Master selection controls: Picker with menu, segmented, wheel, inline, and navigation link styles.

#### Part 4: Navigation & Structure

- **[13 – NavigationStack](iOS26-Development/13-NavigationStack.swift)**
  Navigate between screens using NavigationStack and NavigationLink.

- **[14 – Sheets](iOS26-Development/14-Sheets.swift)**
  Present modal views with sheets and custom presentations.

- **[15 – Tab View](iOS26-Development/15-TabView.swift)**
  Structure your app with TabView for multiple sections. Includes UIKit badge color customization.

#### Part 5: Advanced Interactions

- **[16 – Menus](iOS26-Development/16-Menus.swift)**
  Present contextual actions with Menus, submenus, dividers, context menus, and iOS 16.4+ dismiss behavior.

- **[17 – Semantic Toolbars](iOS26-Development/17-SemanticToolbars.swift)**
  Use semantic placement modifiers to position toolbar items appropriately across platforms.

- **[18 – Positional Toolbars](iOS26-Development/18-PositionalToolbars.swift)**
  Control exact toolbar item placement with positional modifiers, grouping, and spacers.

- **[19 – Toolbar Menu](iOS26-Development/19-ToolbarMenu.swift)**
  Create menu-based toolbar items for compact action organization.

#### Part 6: Polish & Enhancement

- **[20 – Animations and Transitions](iOS26-Development/20-AnimationsAndTransitions.swift)**
  Add polish with implicit animations and smooth view transitions.

- **[21 – Searchable](iOS26-Development/21-Searchable.swift)**
  Add search functionality with the `.searchable()` modifier. Learn about iOS 26's new default bottom placement and how to move it back to the navigation bar drawer.

#### Additional Concepts

- **[ForEach](iOS26-Development/ForEach.swift)**
  Deep dive into ForEach for creating dynamic lists and understanding iteration in SwiftUI.

#### Bonus: Advanced Techniques

The Liquid Glass lessons (accessible via submenu in the app) demonstrate advanced techniques for creating modern, translucent UI effects:
- **[Liquid Glass](iOS26-Development/LiquidGlass.swift)**: Basic translucent background effects
- **[Liquid Glass Namespace](iOS26-Development/LiquidGlassNamespace.swift)**: Namespace-based animations
- **[Liquid Glass Transition](iOS26-Development/LiquidGlassTransition.swift)**: Advanced transition animations

**Note**: Set `UIDesignRequiresCompatibility` to `YES` in Info.plist to fall back to classic UI, or `NO` to support the new Liquid Glass design (iOS 18+).

---

### How to Work Through the Repo

**This repository is designed as a progressive course.** Follow the lessons in order from 01 to 21 for the best learning experience.

#### For Beginners

1. **Start with Lesson 01**
   Open `01-TextAndModifiers.swift` in Xcode. Read the code and comments, then run the preview. Try modifying values to see how SwiftUI responds.

2. **Progress sequentially**
   Move to the next numbered file when you're comfortable with the current concepts. Each lesson builds on previous ones.

3. **Use the app picker**
   Run the app in Xcode. The view picker in the toolbar lets you jump between lessons while learning. The app starts at Lesson 01 by default.

4. **Experiment freely**
   Modify the code, break things, and fix them. Each file has its own `#Preview`, so changes won't affect other lessons.

#### For Reference

- **Quick topic lookup**
  Use the numbered filenames as anchors. Need a reminder on Menus? Jump to `16-Menus.swift`.

- **Extending the course**
  Add new topics by creating files like `22-YourTopic.swift`. Keep each file focused on one concept.

- **Using Xcode and VS Code together**
  Use Xcode to run the iOS app and previews. Use VS Code as a lightweight editor for browsing code and small Swift experiments with Code Runner.
