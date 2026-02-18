# Project Context & Architecture Guidelines

## General Instructions
- **Coding Style:** Follow the existing coding style of the project.
- **Comments:** Ensure all new functions and classes have proper comments.
- **Imports:** Always prefer importing `lib/commons.dart` for shared utilities and styles instead of importing individual files.

------------------------------------------------------------------------

## 1. Project Structure
We follow a strict directory structure. All code must be placed accordingly.

* **`lib/styles/`**:
    * `colors.dart`: Custom color definitions.
    * `sizes.dart`: Spacing and layout constants (e.g., `kPadd2`, `kBorderRadius10`).
    * `styles.dart`: Text styles and shared decorations (e.g., `kTitleStyle`).
    * `themes.dart`: Global `ThemeData` definitions.
* **`lib/screens/`**: Contains all screen folders.
    * **Rule:** Every screen MUST have its own dedicated folder.
    * **Example:** A screen named "profile" goes into `lib/screens/profile/`.
* **`lib/model/`**: Contains data models (e.g., `user_model.dart`).
* **`lib/widgets/`**: Reusable global widgets.
* **`lib/utils/`**: Helper files for external libraries (Firebase) and internal logic.
* **`lib/commons.dart`**: Central export file. Used to export common styles/utils so they don't need to be imported individually.

------------------------------------------------------------------------

## 2. Style & Design System (Strict)
**Rule:** Never hardcode padding, sizes, or text styles if a constant exists in `lib/styles/`.
* **Usage Examples:**
    * ❌ `Padding(padding: EdgeInsets.all(2))`
    * ✅ `Padding(padding: kPadd2)`
    * ❌ `TextStyle(fontSize: 35, fontWeight: FontWeight.bold)`
    * ✅ `kTitleStyle`

------------------------------------------------------------------------

### 3. Screen Architecture (Strict)
**Rule:** Every screen is split into **Logic** and **View** using Dart's `part` and `part of` directives with an **Inheritance Pattern**.

**Naming Convention:**
* Input Name: `<NAME>` (e.g., `history`)
* Class Prefix: `<CLASS>` (PascalCase, e.g., `History`)
* Path: `lib/screens/<NAME>/`

### Required Output When Creating a New Screen (Critical)

When asked to create a screen, you MUST output ALL of the following in
the same response:

1)  Create the folder: `lib/screens/<NAME>/`
2)  Create **File A**: `<NAME>_screen.dart`
3)  Create **File B**: `<NAME>_controller.dart`
4)  Update `lib/screens/screens.dart`:
-   Add an `export` for the new screen
-   Add a new route constant in `Screens`
5)  Update `MaterialApp.routes`:
-   Add the new route entry using `Screens.<NAME>`

**Route naming convention (Strict):** - Route const name:
`Screens.<NAME>` - Route string: `'/<name>'` (lowercase) - Example:
`HistoryScreen` → `Screens.history` → `'/history'`

**DONE criteria:** Screen generation is NOT complete unless items (1–5) are included.

#### File A: `<NAME>_screen.dart` (The View)
**Responsibilities:**
1.  Declares `part '<NAME>_controller.dart';`.
2.  The State class **extends** the Controller class (`_<CLASS>Screen extends <CLASS>Controller`).

```dart
import 'package:flutter/material.dart';

part '<NAME>_controller.dart';

class <CLASS>Screen extends StatefulWidget {
  const <CLASS>Screen({Key? key}) : super(key: key);

  @override
  createState() => _<CLASS>Screen();
}

class _<CLASS>Screen extends <CLASS>Controller {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```
### File B: `<NAME>_controller.dart` (The Logic)
```dart
part of '<NAME>_screen.dart';

abstract class <CLASS>Controller extends State<<CLASS>Screen> {

  @override
  void initState() {
    super.initState();
    // Initialize logic
  }

  @override
  void dispose() {
    super.dispose();
  }
}
```
------------------------------------------------------------------------

## 4. Architecture Pattern

We follow a lightweight MVC-inspired pattern:

- Screen → UI only
- Controller → UI logic only
- Utils/Services → Business logic and API calls
- Models → Pure data classes

Controllers MUST NOT contain API logic directly.
API logic must be placed inside lib/utils/ or lib/services/.

------------------------------------------------------------------------

## 5. Services

All API calls must be placed in: `lib/utils/services/`

Example: - `auth_service.dart` - `user_service.dart`

Screens and Controllers must never directly call Firebase or HTTP.

------------------------------------------------------------------------

## 6. State Management

This project does NOT use Riverpod/Provider/BLoC/etc.

State is handled using: - StatefulWidget + setState - Controller pattern
via `part` files

Do NOT introduce state management libraries.

------------------------------------------------------------------------

## 7. Navigation (Strict)

We use classic `MaterialApp.routes` with a centralized routes registry
in `lib/screens/screens.dart`.

### Rules
- Never hardcode route strings (e.g. `'/login'`). Always use `Screens.<route>`.
- Never use `MaterialPageRoute`, `CupertinoPageRoute`, or anonymous routes.

### Allowed navigation calls
- `Navigator.pushNamed(context, Screens.login)`
- `Navigator.pushReplacementNamed(context, Screens.home)`
- `Navigator.pop(context)`

### Initial route
`MaterialApp.initialRoute` MUST be `Screens.initial`.
`Screens.initial` is set by `initializeApp()` and must not be overwritten elsewhere.


