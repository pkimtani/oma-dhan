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
- (optional) Docker
  - Required for `firebase-emulator`
  - You can optionally setup emulator from firebase official documentation [here](https://firebase.google.com/docs/emulator-suite/install_and_configure)

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
    Note:
    - If you wish to not use docker, you can follow the official documentation [here](https://firebase.google.com/docs/emulator-suite/install_and_configure)
    - This step is untested outside my development envt.
    - If you get authentication error, try creating a project in your firebase account with project id as `oma-dhan` (as mentioned in `./docker/firebase-emulator/.firebaserc` file)

    ```bash
    docker-compose -f docker/firebase-emulator.docker-compose.yml up -d
    ```
    This will start the firebase emulator on your local machine.
    You can access the firebase-emulator console at `http://localhost:4000`
    
    `docker/firebase-emulator` is mounted to the container.
    All logs will be available in the `docker/firebase-emulator/logs` directory.
    `docker/firebase-emulator/firebase.json` contains the configuration for the emulator.
    `docker/firebase-emulator/.firebaserc` contains the project id for the emulator.
    `docker/firebase-emulator/rules` (shall) contain the security rules (coming soon).

    By default, the emulator starts with `--import` and `--export-on-exit` flags pointing to `docker/firebase-emulator/data` directory.
    In order for emulator to gracefully handle the export and then exit, use `docker stop <container_name>` before removing the container.
    For ex: `docker stop firebase-emulator && docker rm firebase-emulator`
    The exported data shall be available in `docker/firebase-emulator/data` directory and ready for import on next start.

6. Run the project