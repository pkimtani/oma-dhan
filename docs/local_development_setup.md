## Local Development Setup

Table of Contents

- [Prerequisites](#prerequisites)
- [Setting up the project](#setting-up-the-project)

### Prerequisites

- Flutter SDK
    - Follow the instructions from [here](https://docs.flutter.dev/get-started/install)
- Android Studio / VS Code
    - Install the Flutter and Dart plugins
- Emulator / Physical Device
- Firebase emulator
  - Requires `docker` to be installed
  - If you do not wish to have `docker` installed, you can setup emulator from firebase official documentation [here](https://firebase.google.com/docs/emulator-suite/install_and_configure)

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

5. Setup the Firebase emulator
    This step is untested outside my development envt.
    If you get authentication error, try creating a project in your firebase account with project id as `oma-dhan` (as mentioned in `../firebaserc` file)
    ```bash
    docker-compose -f docker/firebase-emulator.docker-compose.yml up -d
    ```
   If you have decided to not use the dockerized emulator, you can follow the official documentation [here](https://firebase.google.com/docs/emulator-suite/install_and_configure)

6. Run the project