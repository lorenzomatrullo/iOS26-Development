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
  - `App.swift`: App entry point that launches one of the lesson views.
  - `01-TextAndModifiers.swift`: Text styling and common modifiers.
  - `02-StacksAndSpacing.swift`: VStack, HStack, ZStack, and spacing.
  - `03-ImagesAndSFSymbols.swift`: Asset images and SF Symbols.
  - `04-StateAndButtons.swift`: @State, buttons, and simple interaction.
  - `05-ListsAndForEach.swift`: Lists of data with ForEach.
  - `06-NavigationStack.swift`: NavigationStack and NavigationLink.
  - `07-TabView.swift`: TabView for basic app structure.
  - `08-FormsAndInputs.swift`: Form, text fields, toggles, and pickers.
  - `09-AnimationsAndTransitions.swift`: Implicit animations and transitions.
- **`iOS26-Development.xcodeproj`**: Xcode project.

Each numbered file is independent and has its own `#Preview`, so you can open and run any lesson without wiring it into the app entry point.

---

### Learning Path

#### Basics – Layout, text, and previews

- **[01 – Text and Modifiers](iOS26-Development/01-TextAndModifiers.swift)**
  Fonts, colors, emphasis, alignment, and line limits.
- **[02 – Stacks and Spacing](iOS26-Development/02-StacksAndSpacing.swift)**
  VStack, HStack, ZStack, spacers, and simple backgrounds.

#### Visuals – Images and symbols

- **[03 – Images and SF Symbols](iOS26-Development/03-ImagesAndSFSymbols.swift)**
  Using asset images, resizing, clipping, and SF Symbols.

#### State and interaction

- **[04 – State and Buttons](iOS26-Development/04-StateAndButtons.swift)**
  `@State`, buttons, toggles, and reactive text.

#### Lists, navigation, and app structure

- **[05 – Lists and ForEach](iOS26-Development/05-ListsAndForEach.swift)**
  List views with dynamic data and simple row layouts.
- **[06 – NavigationStack](iOS26-Development/06-NavigationStack.swift)**
  NavigationStack, NavigationLink, and a simple detail screen.
- **[07 – TabView](iOS26-Development/07-TabView.swift)**
  TabView with multiple sections such as Home, Library, and Settings.

#### Forms and animations

- **[08 – Forms and input controls](iOS26-Development/08-FormsAndInputs.swift)**
  Form, TextField, Picker, and Toggle for basic settings screens.
- **[09 – Animations and transitions](iOS26-Development/09-AnimationsAndTransitions.swift)**
  Toggling views with implicit animations and combined transitions.

---

### How to Work Through the Repo

- **New to SwiftUI?**
  Start with `01-TextAndModifiers.swift`. Open it in Xcode, read the code, then run the preview. Modify the text styles to see how SwiftUI responds.

- **Expanding the course**  
  When you are ready for the next concept, move to the next numbered file. If you want to add more topics, create a new Swift file with the next number and a clear name, focusing that file on one idea only.

- **Reviewing topics**  
  Use the numbered filenames as quick anchors. If you need a reminder on navigation or tab bars later, jump directly to the corresponding numbered file.

- **Using Xcode and VS Code together**  
  Use Xcode to run the iOS app and previews, and VS Code as a lightweight editor and navigator with Code Runner for small, non‑UI Swift experiments.

As you add more files, this repository becomes a structured SwiftUI notebook: short, ordered, and always runnable.
