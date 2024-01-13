# Flutter Mvvm Architecture

## Overview
This project is an example developed using Flutter and MVVM architecture. 

## Features
- Login Operations
- List Posts

## Technologies Used
- Flutter
- Provider State Management

## Folder Structure
The project follows a structured directory layout to organize code and assets effectively. Here is an overview of the main directories:

- **lib**: Contains the Dart source code files for your Flutter application.
  - **utils**: Store constant values and configurations.
    - `app_constants.dart`: Define application-wide constants.
  - **models**: Define data models used in the application.
    - `post.dart`: Example data model for a post.
    - `user.dart`: Example data model for a user.
  - **services**: Implement API services and other data-related services.
    - `api_service.dart`: Example API service for fetching data.
  - **utils**: Store utility classes and helper functions.
    - `helper.dart`: Example helper functions.
  - **views**: Define the different screens or UI components in the application.
    - `login_screen.dart`: Example login screen.
    - `post_list_screen.dart`: Example screen displaying a list of posts.
  - **viewmodels**: Implement the view models for the screens.
    - `post_viewmodel.dart`: Example view model for managing post-related data.
    - `user_viewmodel.dart`: Example view model for user-related data.
  - `main.dart`: The main entry point of the Flutter application.
- **test**: Contains test files for unit testing and widget testing.
  - `widget_test.dart`: Example widget tests for the UI components.

## Installation
1. Install Flutter: [Flutter Installation Page](https://flutter.dev/docs/get-started/install)
2. Clone this project: `git clone https://github.com/berkekurnaz/flutter_mvvm_architecture.git`
3. Open the project in the terminal and install dependencies: `flutter pub get`

## Usage
1. Navigate to the directory where your project is located.
2. Run the application: `flutter run`

## Contribution
- Fork the repository and make your improvements.
- Create a pull request.
- Wait for review and merging.