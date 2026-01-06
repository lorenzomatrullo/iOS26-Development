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
    - `App.swift`: Main app entry point.
    - `ViewPickerContainer.swift`: Lesson selector and navigation controller.
  - `01-TextAndModifiers.swift`: Text styling and common modifiers.
  - `02-StacksAndSpacing.swift`: VStack, HStack, ZStack, and spacing.
  - `03-ImagesAndSFSymbols.swift`: Asset images and SF Symbols.
  - `04-StateAndButtons.swift`: @State, buttons, and toggles.
  - `05-Buttons.swift`: Button styles (standard and Liquid Glass styles).
  - `06-ListsAndForEach.swift`: Lists of data with ForEach.
  - `07-NavigationStack.swift`: NavigationStack and NavigationLink.
  - `08-TabBar.swift`: TabView for basic app structure.
  - `09-FormsAndSections.swift`: Form, Sections, text fields, and toggles.
  - `10-Sliders.swift`: Slider controls with ranges, steps, labels, and tick marks.
  - `11-PickerStyles.swift`: Picker with different styles (menu, segmented, wheel, inline).
  - `12-Menus.swift`: Menus, context menus, and menu organization.
  - `13-AnimationsAndTransitions.swift`: Implicit animations and transitions.
  - `14-SemanticToolbars.swift`: Semantic toolbar placements for platform-appropriate positioning.
  - `15-PositionalToolbars.swift`: Positional toolbar placements with grouping and spacers.
  - `LiquidGlass.swift`, `LiquidGlassNamespace.swift`, `LiquidGlassTransition.swift`: Bonus lessons.
- **`iOS26-Development.xcodeproj`**: Xcode project.

Each numbered file is independent and has its own `#Preview`, so you can open and run any lesson without wiring it into the app entry point.

---

### Learning Path

Follow the lessons in order for the best learning experience. Each lesson builds on concepts from previous ones.

#### Part 1: Fundamentals – Layout and Text

- **[01 – Text and Modifiers](iOS26-Development/01-TextAndModifiers.swift)**
  **Start here!** Learn the basics: displaying text with fonts, colors, emphasis, alignment, and line limits.

- **[02 – Stacks and Spacing](iOS26-Development/02-StacksAndSpacing.swift)**
  Master layout fundamentals with VStack, HStack, ZStack, spacers, and simple backgrounds.

- **[03 – Images and SF Symbols](iOS26-Development/03-ImagesAndSFSymbols.swift)**
  Add visual content using asset images, resizing, clipping, and SF Symbols.

#### Part 2: Interactivity and State

- **[04 – State and Buttons](iOS26-Development/04-StateAndButtons.swift)**
  Your first interactive views: `@State`, buttons, toggles, and reactive text.

- **[05 – Button Styles](iOS26-Development/05-Buttons.swift)**
  Comprehensive showcase of all button styles including standard and Liquid Glass variants.

- **[06 – Lists and ForEach](iOS26-Development/06-ListsAndForEach.swift)**
  Display dynamic data with List views and simple row layouts.

#### Part 3: Navigation and App Structure

- **[07 – NavigationStack](iOS26-Development/07-NavigationStack.swift)**
  Navigate between screens using NavigationStack and NavigationLink.

- **[08 – TabBar](iOS26-Development/08-TabBar.swift)**
  Structure your app with TabView for multiple sections (Home, Library, Settings).

#### Part 4: Forms and Input Controls

- **[09 – Forms and Sections](iOS26-Development/09-FormsAndSections.swift)**
  Build settings screens with Form, Sections, TextField, and Toggle.

- **[10 – Sliders](iOS26-Development/10-Sliders.swift)**
  Work with slider controls for numeric input: ranges, steps, labels, tick marks, and visual feedback.

- **[11 – Picker Styles](iOS26-Development/11-PickerStyles.swift)**
  Master selection controls: Picker with menu, segmented, wheel, inline, and navigation link styles.

- **[12 – Menus](iOS26-Development/12-Menus.swift)**
  Present contextual actions with Menus, submenus, dividers, and context menus.

#### Part 5: Polish and Effects

- **[13 – Animations and Transitions](iOS26-Development/13-AnimationsAndTransitions.swift)**
  Add polish with implicit animations and smooth view transitions.

#### Part 6: Toolbars and Navigation Customization

- **[14 – Semantic Toolbars](iOS26-Development/14-SemanticToolbars.swift)**
  Use semantic placement modifiers to position toolbar items appropriately across platforms.

- **[15 – Positional Toolbars](iOS26-Development/15-PositionalToolbars.swift)**
  Control exact toolbar item placement with positional modifiers, grouping, and spacers.

#### Bonus: Advanced Techniques

The Liquid Glass lessons (accessible via submenu in the app) demonstrate advanced techniques for creating modern, translucent UI effects:
- **Liquid Glass**: Basic translucent background effects
- **Liquid Glass Namespace**: Namespace-based animations
- **Liquid Glass Transition**: Advanced transition animations

---

### How to Work Through the Repo

**This repository is designed as a progressive course.** Follow the lessons in order from 01 to 13 for the best learning experience.

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
  Use the numbered filenames as anchors. Need a reminder on Forms? Jump to `08-FormsAndSections.swift`.

- **Extending the course**
  Add new topics by creating files like `14-YourTopic.swift`. Keep each file focused on one concept.

- **Using Xcode and VS Code together**
  Use Xcode to run the iOS app and previews. Use VS Code as a lightweight editor for browsing code and small Swift experiments with Code Runner.
