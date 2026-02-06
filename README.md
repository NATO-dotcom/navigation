# Navigation App

A Flutter application demonstrating navigation patterns and bottom tab navigation. This project showcases multi-screen navigation using Flutter's named routes and a bottom navigation bar interface.

## Overview

The Navigation App is a mobile application that implements core navigation concepts in Flutter. It features a welcome screen with onboarding, followed by a tabbed interface with multiple screens accessible via bottom navigation.

## Features

- **Welcome Screen**: Branded splash screen with app logo and "Get Started" call-to-action button
- **Bottom Tab Navigation**: Four-tab navigation system with:
  - Home screen
  - Chat screen
  - Community screen
  - Profile screen
- **Named Routes**: Clean navigation using Flutter's named route system
- **Material Design**: Consistent UI following Material Design principles with custom color schemes
- **Responsive Layout**: Works seamlessly across different device sizes

## Project Structure

```
lib/
├── main.dart              # Application entry point and MyApp widget
├── screens/
│   ├── welcome.dart       # Welcome/onboarding screen with logo and CTA
│   └── home_screen.dart   # Home screen accessible via named route
└── nav/
    └── home_nav.dart      # Bottom navigation with tabbed interface
```

## Technical Details

### Dependencies

- **Flutter SDK**: ^3.10.7
- **Material Design Icons**: Built-in Material Icons
- **Cupertino Icons**: ^1.0.8 (iOS-style icons)

### Architecture

**main.dart**
- Root widget `MyApp` extending `StatelessWidget`
- Material app configuration with debug mode disabled
- Two named routes defined:
  - `/home` - Direct access to HomeScreen
  - `/nav` - Bottom navigation interface

**screens/welcome.dart**
- Welcome screen with green background
- Centered logo display (300x300px from assets)
- "Get Started" button that navigates to the tabbed interface using `pushReplacementNamed`

**screens/home_screen.dart**
- Simple screen displaying "Welcome to Home Screen"
- Accessible via the `/home` route

**nav/home_nav.dart**
- Main navigation hub extending `StatefulWidget`
- Manages selected tab index with `_selectedIndex`
- Bottom navigation bar with 4 items:
  - Home (house icon)
  - Chat (chat bubble icon)
  - Community (people icon)
  - Profile (person icon)
- Displays different content based on selected tab
- Blue-grey themed app bar and bottom navigation
- Includes drawer placeholder for future expansion

## Navigation Flow

```
Welcome Screen
    ↓ (Get Started button)
HomeNav (Bottom Tab Navigation)
├─ Tab 1: Home Screen
├─ Tab 2: Chat Screen
├─ Tab 3: Community Screen
└─ Tab 4: Profile Screen
```

Users can also directly access the home screen via the `/home` route.

## Getting Started

### Prerequisites

- Flutter SDK (version 3.10.7 or higher)
- Dart SDK (included with Flutter)
- Android Studio, Xcode, or VS Code with Flutter extension

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd navigation
```

2. Install dependencies:
```bash
flutter pub get
```

3. Ensure you have the required assets:
```bash
# assets/logo.png should exist in the assets folder
```

### Running the App

Run on your default device or emulator:
```bash
flutter run
```

Run on a specific device:
```bash
flutter run -d <device-id>
```

### Building for Release

Build Android APK:
```bash
flutter build apk --release
```

Build iOS app:
```bash
flutter build ios --release
```

## Assets

The app includes the following asset:
- `assets/logo.png` - Application logo displayed on the welcome screen

## Color Scheme

- **Primary Background**: Green Accent (Welcome screen)
- **Navigation Background**: Blue-Grey
- **Content Background**: Light Grey
- **Text Color**: Black with Blue accents
- **Selected Item**: Deep Purple
- **Unselected Item**: Black

## Customization

### Adding New Screens

1. Create a new widget in `lib/screens/`:
```dart
class MyNewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Your content here
    );
  }
}
```

2. Add a route in `main.dart`:
```dart
routes: {
  "/myroute": (context) => MyNewScreen(),
}
```

### Modifying Navigation Tabs

Edit `lib/nav/home_nav.dart`:
1. Modify the `_screens` list to add or remove screens
2. Update the `BottomNavigationBar` items list with new tab definitions

## Known Limitations

- Profile, Chat, and Community tabs currently display placeholder text
- Drawer is not yet implemented
- No state management solution (for larger apps, consider Provider, Riverpod, or GetX)

## Future Enhancements

- Implement actual content for each tab screen
- Add functional drawer navigation menu
- Integrate state management solution
- Add app navigation animations
- Implement persistent navigation state
- Add authentication flows
- Integrate backend API connections

## Code Quality

This project follows Flutter best practices:
- Stateless widgets used where appropriate for performance
- Proper widget composition and separation of concerns
- Named routes for clean navigation
- Material Design compliance
- Lint analysis with flutter_lints

## Resources

- [Flutter Documentation](https://docs.flutter.dev/)
- [Navigation and Routing Guide](https://docs.flutter.dev/ui/navigation)
- [Material Design](https://material.io/design)
- [Bottom Navigation Bar](https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html)

## License

This project is not yet published. For licensing information, see the pubspec.yaml file.

## Support

For issues, questions, or contributions, please refer to the project repository.
