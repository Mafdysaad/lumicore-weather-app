# Weather App Assessment

## Overview

Weather App is a Flutter application that allows users to search for weather information by city name, cache weather data locally, access search history, and refresh weather information using pull-to-refresh.

The application follows Clean Architecture principles and uses Cubit (flutter_bloc) for state management.

---

## Features

### Weather Search

* Search weather by city name.
* Fetch weather data from a remote API.

### Local Caching

* Cache weather data locally using SharedPreferences.
* Display cached weather when internet connection is unavailable.
* Load previously searched city when reopening the application.

### Search History

* Store searched cities locally.
* Quickly search again by selecting a city from history.

### Pull To Refresh

* Refresh weather data using swipe-down gesture.

### Theme Support

* Light Mode
* Dark Mode

### Error Handling

* Handle API and network errors gracefully.
* Display user-friendly error messages.

### Responsive UI

* Responsive layout for different screen sizes.
* Fixed text scaling to preserve UI consistency.

---

## Architecture

The project follows Clean Architecture and is divided into three layers:

### Data Layer

Responsible for:

* API communication
* Local storage
* Data models

Components:

* RemoteDataSource
* LocalDataSource
* Models

### Domain Layer

Responsible for:

* Business logic
* Repository contracts

Components:

* WeatherRepo
* Repository Implementation

### Presentation Layer

Responsible for:

* UI
* State Management

Components:

* Screens
* Widgets
* Cubit
* States

---

## State Management

The application uses flutter_bloc (Cubit).

Implemented states:

* WeatherCubitInitial
* LoadingState
* SuccessState
* FailureState

---

## Project Structure

lib/

├── Features/

│ └── weather_feature/

│ ├── data/

│ │ ├── data_sources/

│ │ ├── models/

│ │ └── repositories/

│

│ ├── domain/

│ │ ├── repositories/

│ │ 

│

│ └── presentation/

│ ├── view/

│ ├── widgets/

│ └── view_models/

│

├── core/

│ ├── networking/

│ ├── cache/

│ ├── theme/

│ └── utils/

│

└── main.dart

---

## Packages Used

* flutter_bloc
* dio
* dartz
* shared_preferences
* shimmer

---

## Setup Instructions

### Clone Repository

```bash
git clone <repository-url>
```

### Install Dependencies

```bash
flutter pub get
```

### Run Application

```bash
flutter run
```

---

## Build APK

Generate release APK:

```bash
flutter build apk --release
```

APK output:

```text
build/app/outputs/flutter-apk/app-release.apk
```

---

## Notes

* Cached weather data is used when the API request fails.
* Search history is persisted locally.
* Current city and last successful weather response are stored locally.
* The application supports both online and offline scenarios.

---

## Author

Mafdy Saad
Flutter Developer
