# FUTO Hostel Reservation App

A Flutter application for the Federal University of Technology, Owerri (FUTO) hostel reservation system. This project implements the frontend design with a focus on "FUTO Green" branding and usability.

## Screens Implemented

1.  **Splash Screen** (`splash_screen.dart`)
    *   **Description**: Displays the FUTO logo on a green background with a loading animation.
    *   **Logic**: Automatically navigates to Sign In after 3 seconds.

2.  **Sign In Screen** (`sign_in_screen.dart`)
    *   **Description**: Login form with branding.
    *   **Flow**: Success -> Hostel Gallery | "Sign Up" -> Registration Screen.

3.  **Registration Screen** (`registration_screen.dart`)
    *   **Description**: Detailed student registration form (Reg No, Dept, etc.).
    *   **Flow**: Success -> Back to Sign In.

4.  **Hostel Gallery** (`hostel_gallery_screen.dart`)
    *   **Description**: Main dashboard showing available hostels in a grid layout.
    *   **Features**: Hero animations, Availability tags ("Available", "Full").
    *   **Flow**: Click Hostel -> Room Selection.

5.  **Room Selection** (`hostel_details_screen.dart`)
    *   **Description**: Displays the list of rooms for a specific hostel.
    *   **Features**: Filter chips (4-Man, 2-Man), Room cards with attributes.
    *   **Flow**: Click "Select" -> Room Showcase.

6.  **Room Showcase** (`room_detail_screen.dart`)
    *   **Description**: Detailed view of a specific room.
    *   **Features**: Image header, Amenities grid, Description, "Book Now" action.

## Project Architecture

The project follows a modular structure to ensure different group members can work on different layers simultaneously:

- **`lib/core/`**: Shared utilities and global configurations.
    - `theme/app_theme.dart`: Centralized FUTO branding (colors, typography, widget styles).
- **`lib/data/`**: Data models and repositories.
    - `mock_data.dart`: Static data for testing screens without a backend.
- **`lib/presentation/`**: All UI-related code.
    - `screens/`: Individual app pages (Splash, Sign In, Gallery, etc.).
    - `widgets/`: Reusable UI components (Headers, Custom Buttons).
- **`lib/main.dart`**: Application entry point and configuration.

## How to Run

1.  **Install Dependencies**:
    ```bash
    flutter pub get
    ```

2.  **Run App**:
    It is recommended to run on **Chrome** for the fastest setup.
    ```bash
    flutter run -d chrome
    ```

3.  **Note**: This app uses `NetworkImage` to load the high-quality assets provided in the design. Ensure you have an active internet connection when running.

## Troubleshooting

### Phantom C++ Errors in VS Code
If you see red squiggles in files like `linux/runner/my_application.h` or `windows/runner/main.cpp` while working on a different OS, these are **IntelliSense mismatches** and do not affect the app's functionality.

**Solution implemented:**
- I have added a `.vscode/settings.json` file to the project.
- This file hides non-active platform folders (like `linux`, `ios`, `macos`) from the sidebar and disables C++ error squiggles for them.
- If you need to see these folders, you can modify the `files.exclude` setting in `.vscode/settings.json`.

### Build Issues
If you encounter build errors after merging changes:
1. Run `flutter clean`
2. Run `flutter pub get`
3. Run `flutter run`
