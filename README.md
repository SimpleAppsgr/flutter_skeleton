
# Flutter Skeleton

A production-ready Flutter starter template with a structured
architecture, strict design system rules, and an AI-optimized project
configuration.

This skeleton is designed for developers who want:

-   Clean separation between UI and logic
-   Centralized navigation
-   A consistent design system
-   No heavy state management libraries
-   A predictable structure that scales
-   Reliable AI-assisted code generation

## 📚 Related Articles

This project follows the architecture discussed in:

- [A Simple way to organize your code in Flutter](https://medium.com/@kanellopoulos.leo/a-simple-way-to-organize-your-code-in-flutter-e175e7004fb5)
- [A Simple way to organize your Styles & Themes in Flutter](https://medium.com/@kanellopoulos.leo/a-simple-way-to-organize-your-styles-themes-in-flutter-a0e7eba5b297)

------------------------------------------------------------------------

## 🏗 Architecture Overview

This skeleton follows a lightweight MVC-inspired structure:

```
lib/
├── commons.dart
├── constants.dart
├── styles/
├── screens/
│    └── example/
│         ├── example_screen.dart
│         └── example_controller.dart
├── widgets/
├── model/
├── services/
└── utils/
```
### Core Principles

-   Screen → UI only
-   Controller → UI logic only
-   Services → Business logic & API calls
-   Models → Pure data classes
-   Centralized route management
-   Strict design system enforcement

No Riverpod.\
No Bloc.\
No unnecessary abstraction layers.

Just clean, scalable Flutter.

------------------------------------------------------------------------

## 🚀 Getting Started

These instructions will help you grab a copy of the project and start developing.

### Installation
#### 1️⃣ Clone the repository

```
git clone https://github.com/SimpleAppsgr/flutter_skeleton
```

#### 2️⃣ Navigate into the project

``` 
cd flutter_skeleton
```

#### 3️⃣ Install dependencies

``` 
flutter clean 
flutter pub get
```

#### 4️⃣ Run the project

```
flutter run
```
Your sample app will launch on your emulator or connected device.

------------------------------------------------------------------------

## 🤖 AI-Optimized Development (gemini.md Included)

This project includes a `gemini.md` file.

It defines strict architectural rules so AI tools:

-   Generate screens correctly
-   Respect folder structure
-   Register routes properly
-   Follow naming conventions
-   Avoid hardcoded styles
-   Update `screens.dart` automatically

The rules define completion criteria so generated features are not
partially implemented.

This makes the project ideal for:

-   AI-assisted coding
-   Rapid feature development
-   Teaching structured Flutter architecture
-   Teams that want predictable output

------------------------------------------------------------------------

## 📄 License

MIT License