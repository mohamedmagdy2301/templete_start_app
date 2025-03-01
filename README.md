# Template Start App

This is a template Flutter application designed to help you get started quickly with a new project. It includes a splash screen, home screen, custom widgets, and a router setup using GoRouter.

## Project Structure

```
lib/
├── core/
│   ├── constants/
│   ├── extensions/
│   ├── router/
│   │   ├── app_router.dart
│   │   ├── router_helper.dart
│   │   └── routes.dart
│   └── utils/
│       ├── helper/
│       ├── widgets/
│       │   ├── custom_loading_widget.dart
│       │   ├── custom_text_field.dart
│       │   └── snakbar/
│       │       ├── animated_snackbar.dart
│       │       └── snackbar_helper.dart
├── main.dart
└── splash_screen.dart
```

## Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK

### Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/yourusername/templete_start_app.git
   ```
2. Navigate to the project directory:
   ```sh
   cd templete_start_app
   ```
3. Get the dependencies:
   ```sh
   flutter pub get
   ```

### Running the App

To run the app on an emulator or physical device, use:
```sh
flutter run
```

## Features

### Splash Screen

The splash screen is displayed for 3 seconds before navigating to the home screen.

### Home Screen

The home screen includes a switch to toggle between light and dark themes.

### Custom Widgets

- **CustomLoadingWidget**: Displays a loading animation.
- **CustomTextField**: A customizable text field with validation.
- **AnimatedSnackBar**: An animated snackbar for displaying messages.

### Routing

The app uses GoRouter for navigation. The routes are defined in `app_router.dart`.

## Usage

### Adding a New Route

1. Define the route in `routes.dart`.
2. Add the route to the `GoRouter` configuration in `app_router.dart`.

### Showing a Snackbar

To show a snackbar, use the `showMessage` function from `snackbar_helper.dart`:
```dart
showMessage(
  context,
  type: SnackBarType.success,
  message: 'This is a success message!',
);
```

## License

This project is licensed under the Apache License 2.0. See the [LICENSE](LICENSE) file for details.