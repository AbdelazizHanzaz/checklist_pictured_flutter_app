# Daily Work Checklist App

The Daily Work Checklist App is a Flutter mobile application that allows workers to manage their daily work tasks. Workers can mark tasks as completed and capture pictures related to each completed task for documentation purposes. The app provides the functionality to send completed checklists and associated pictures to Firestore and Firebase Cloud Storage for storage and future reference.

## Features

- View a pre-defined daily work checklist.
- Check off tasks as they are completed.
- Capture pictures for each completed task (required).
- View task details and associated pictures.
- Send completed checklist data and pictures to Firestore and Firebase Cloud Storage.

## Screenshots

Include some screenshots or gifs here to showcase the app's UI and features.

## Packages Used

- `image_picker`: A Flutter plugin to access the device's camera for capturing pictures.
- `firebase_core`: Firebase Core plugin, which is required for using Firebase services.
- `cloud_firestore`: A Flutter plugin to interact with Firestore, the NoSQL cloud database provided by Firebase.
- `firebase_storage`: A Flutter plugin to interact with Firebase Cloud Storage, allowing storage and retrieval of files.
- `provider`: A Flutter package for state management, used to manage the state of completed tasks.

## Data Flow

The data flow within the Daily Work Checklist App follows these steps:

1. **Checklist Viewing**: Workers can view a pre-defined daily work checklist, which is fetched from Firestore.

2. **Task Completion**: Workers can mark tasks as completed by tapping on them. The state of completed tasks is managed by the `ChecklistProvider`, a state management class using the Provider package.

3. **Picture Capture**: For each completed task, workers must capture pictures. The captured images are stored as local file paths associated with the corresponding `ChecklistItem` object.

4. **Data Sending**: The app requires all checklist items to be completed before sending data to Firestore and Firebase Cloud Storage. When the user taps the "Send" button, the app checks if all checklist items are completed. If not, it displays an error message. Only when all items are completed, the data, including completed checklist details and associated pictures, is sent to Firestore and Firebase Cloud Storage using the `FirebaseService` class.

## Getting Started

### Prerequisites

- Flutter: Make sure you have Flutter installed. For installation instructions, visit [Flutter Docs](https://flutter.dev/docs/get-started/install).
- Firebase: You need a Firebase account and a new project created in the Firebase Console. For more information, visit [Firebase Docs](https://firebase.google.com/docs/flutter/setup).

### Installation

1. Clone the repository:
   
   '''
   git clone https://github.com/your_username/your_repository.git
   '''


2. Navigate to the project directory:

   '''
   cd your_repository
   '''


## Usage

- Launch the app on your device or simulator.
- View the pre-defined daily work checklist.
- Tap on a task to mark it as completed.
- Capture pictures for each completed task using the camera icon (required).
- Ensure all checklist items are completed before tapping the send button.
- Use the send button to upload completed checklist data and pictures to Firestore and Firebase Cloud Storage.

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, feel free to create a pull request or open an issue.

## License

This project is licensed under the [MIT License](LICENSE).



   

