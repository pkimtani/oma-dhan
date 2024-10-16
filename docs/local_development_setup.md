## Local Development Setup

Table of Contents

- [Prerequisites](#prerequisites)
- [Setting up the project](#setting-up-the-project)
- [Running the project](#running-the-project)

### Prerequisites

- Flutter SDK
    - Follow the instructions from [here](https://docs.flutter.dev/get-started/install)
- Android Studio / VS Code
    - Install the Flutter and Dart plugins
- Emulator / Physical Device
- Firebase emulator (coming soon)

### Setting up the project

1. Clone the repository (if not done already)
    ```bash
    git clone git@github.com:pkimtani/oma-dhan.git
    ```

2. Install `melos` as global dependency
    ```bash
    dart pub global activate melos
    ```

3. Navigate to the project directory
    ```bash
    cd OmaDhan
    ```

4. Initialize the project
    ```bash
    melos bs
    ```
    This will install all the dependencies for the project.
    It will also run "dart run build_runner build" post bootstrap.

5. Run the project