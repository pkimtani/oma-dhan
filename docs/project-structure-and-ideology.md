## Project Structure and Ideology

This document contains information about the structure of the project and the ideology behind it.

### Table of Contents
- [Project Structure](#project-structure)
- [Melos](#melos)

#### Project Structure
The project is structured as a monorepo with multiple packages.

Package: A package is a collection of source files that provide a specific functionality.
The idea behind this is to abstract the implementation layer from the business logic layer and consumer layer.
For ex: "Authentication"
Currently, the "authentication" package implements "Firebase" integration for authenticating users.
This might change in future, therefore to keep them loosely coupled, we abstract this to a package of it's own.

The core packages, i.e. the main package is further divided into multiple modules.
A module is a collection of functionalities that belong to a single business layer.
This idea stems from the way NestJS structures it's codebase.

The project uses BLoC pattern for state management.
The BLoC pattern is implemented using the `flutter_bloc` package.
`States`, `Events` and `BLoC` are all contained within the module itself under their respective directories.
`States` and `Events` are `sealed` classes, therefore, closing them for extension and/or modification.

#### Melos
The project uses `melos` as a monorepo management tool.

In a nutshell, `melos` is a tool that helps you manage multiple packages within a single repository.
It allows you to run commands across all packages, link packages together, and more.

For example, if you want to create a new "bloc" in a "module" for specific "package", you can run:
```bash
melos create-bloc -- --module user-module --bloc app
```

You can read about `melos` [here](https://melos.invertase.dev/~melos-latest).