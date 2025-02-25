# Task Reminder App

This is a simple Flutter application that allows users to create, view, and set reminders for tasks. It leverages platform-specific native features for notifications and haptic feedback on iOS and Android.

## Features
- Add tasks with a title, description, and reminder time.
- View tasks in a list.
- Notifications for task reminders using platform-specific notification APIs.
- Platform-specific date/time pickers.
  
## Setup and Run

1. Clone the repository:
    ```
    git clone https://github.com/yourusername/task_reminder_app.git
    ```

2. Install dependencies:
    ```
    flutter pub get
    ```

3. Run the app on your preferred platform:
    ```
    flutter run
    ```

## Platform-Specific Implementations

### Android
- Android notifications are triggered using `flutter_local_notifications` with native Android implementation.

### iOS
- iOS notifications use the native iOS notification system and are initialized with the iOS version of `flutter_local_notifications`.

## Challenges Faced
- Implementing platform-specific code while maintaining shared logic.
- Testing on both iOS and Android simulators/emulators.
