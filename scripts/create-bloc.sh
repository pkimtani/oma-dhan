#!/bin/bash

# This script will create a new name_bloc BLoC in the given module_directory for the given package.
# The script will:
# 1. Check if the given package exists
# 2. Check if the given module exists
# 3. Create the bloc directory if it does not exist
# 4. Create the state directory if it does not exist
# 5. Create the event directory if it does not exist
# 6. convert the given bloc name to UpperCamelCase
# 7. Create the state file if it does not exist and populate it with the boilerplate code
# 8. Create the event file if it does not exist and populate it with the boilerplate code
# 9. Create the bloc file if it does not exist and populate it with the boilerplate code


# Function to convert string to UpperCamelCase
to_upper_camel_case() {
    local input="$1"

    # Replace dashes/underscores with spaces, capitalize first letter of each word, and remove spaces
    echo "$input" | tr '_-' ' ' | awk '{ for(i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) tolower(substr($i,2)) }1' | tr -d ' '
}


# Check if the --module_directory is given
MODULE_NAME=""
BLOC_NAME=""
PACKAGE_NAME="lib"

while [ "$#" -gt 0 ]; do
    case "$1" in
        --module)
            MODULE_NAME="$2"
            shift 2
            ;;
        --bloc)
            BLOC_NAME="$2"
            shift 2
            ;;
        --package)
            PACKAGE_NAME="$2"
            shift 2
            ;;
        --help)
            echo "Usage:"
            echo ""
            echo "Options:"
            echo "  --module      Specify the module_directory where the bloc will be created"
            echo "  --bloc        Specify the name of the bloc"
            echo "  --package     Specify the package name. (default is 'lib' directory for root package)"
            echo "  --help        Display this help message"
            echo ""
            ;;
        *)
            echo "Invalid option: $1"
            echo "Check usage with --help command"
            ;;
    esac
done

echo "Creating bloc: $BLOC_NAME in module: $MODULE_NAME for package: $PACKAGE_NAME"

if [ -z "$MODULE_NAME" ]; then
    echo "Please specify the module where the bloc will be created"
    echo "Check usage with --help command"
    exit 1
fi

if [ -z "$BLOC_NAME" ]; then
    echo "Please specify the name of the bloc"
    echo "Check usage with --help command"
    exit 1
fi

# set $PACKAGE_NAME to "packages/$PACKAGE_NAME" if it is not "lib"
LIB_DIR="$PACKAGE_NAME"
PACKAGE_DIR="$PACKAGE_NAME"
if [ "$PACKAGE_NAME" != "lib" ]; then
    PACKAGE_DIR="packages/$PACKAGE_NAME"
    LIB_DIR="$PACKAGE_DIR/lib"
fi

MODULE_DIR="$LIB_DIR/$MODULE_DIR"
BLOC_DIR="$MODULE_DIR/bloc"
STATE_DIR="$MODULE_DIR/state"
EVENT_DIR="$MODULE_DIR/event"

if [ ! -d "$PACKAGE_DIR" ]; then
    echo "Package not found: $PACKAGE_DIR"
    exit 1
fi

if [ ! -d "$LIB_DIR" ]; then
    echo "lib directory for $PACKAGE_NAME not found"
    exit 1
fi

if [ ! -d "$MODULE_DIR" ]; then
    echo "Module not found: $MODULE_DIR"
    exit 1
fi

if [ ! -d "$BLOC_DIR" ]; then
    echo "Creating bloc directory $BLOC_DIR"
    mkdir -p "$BLOC_DIR"
fi

if [ ! -d "$STATE_DIR" ]; then
    echo "Creating state directory $STATE_DIR"
    mkdir -p "$STATE_DIR"
fi

if [ ! -d "$EVENT_DIR" ]; then
    echo "Creating event directory $EVENT_DIR"
    mkdir -p "$EVENT_DIR"
fi

BLOC_NAME_UPPER=$(to_upper_camel_case "$BLOC_NAME")

# create state file, if not exists
# and populate it with the boilerplate code
# UpperCamelCase for bloc name
if [ ! -f "$STATE_DIR/${BLOC_NAME}_state.dart" ]; then
    echo "Creating ${BLOC_NAME}_state.dart with bloc name $BLOC_NAME_UPPER"
    {
      echo "import 'package:freezed_annotation/freezed_annotation.dart';"
      echo ""
      echo "part '${BLOC_NAME}_state.freezed.dart';"
      echo ""
      echo "@freezed"
      echo "class ${BLOC_NAME_UPPER}State with _\$${BLOC_NAME_UPPER}State {"
      echo "  const factory ${BLOC_NAME_UPPER}State({"
      echo "  }) = _${BLOC_NAME_UPPER}State;"
      echo "}"
    } >> "$STATE_DIR/${BLOC_NAME}_state.dart"
fi

# create event file, if not exists
# and populate it with the boilerplate code
if [ ! -f "$EVENT_DIR/${BLOC_NAME}_event.dart" ]; then
    echo "Creating ${BLOC_NAME}_event.dart"
    {
      echo "import 'package:freezed_annotation/freezed_annotation.dart';"
      echo ""
      echo "part '${BLOC_NAME}_event.freezed.dart';"
      echo ""
      echo "@freezed"
      echo "class ${BLOC_NAME_UPPER}Event with _\$${BLOC_NAME_UPPER}Event {"
      echo "  const factory ${BLOC_NAME_UPPER}Event({"
      echo "  }) = _${BLOC_NAME_UPPER}Event;"
      echo "}"
    } >> "$EVENT_DIR/${BLOC_NAME}_event.dart"
fi

# create bloc file, if not exists
# and populate it with the boilerplate code
if [ ! -f "$BLOC_DIR/${BLOC_NAME}_bloc.dart" ]; then
    echo "Creating ${BLOC_NAME}_bloc.dart"
    {
      echo "import 'package:flutter_bloc/flutter_bloc.dart';"
      echo "import 'package:$PACKAGE_NAME/$MODULE_NAME/event/${BLOC_NAME}_event.dart';"
      echo "import 'package:$PACKAGE_NAME/$MODULE_NAME/state/${BLOC_NAME}_state.dart';"
      echo ""
      echo "part '${BLOC_NAME}_bloc.freezed.dart';"
      echo ""
      echo "class ${BLOC_NAME_UPPER}Bloc extends Bloc<${BLOC_NAME_UPPER}Event, ${BLOC_NAME_UPPER}State> {"
      echo "  ${BLOC_NAME_UPPER}Bloc() : super(const ${BLOC_NAME_UPPER}State());"
      echo ""
      echo "}"
    } >> "$BLOC_DIR/${BLOC_NAME}_bloc.dart"
fi

#echo "Created bloc: $("$BLOC_NAME" | sed -E 's/(^| )(\w)/\U\2/g') in $MODULE_DIR";
echo "Created bloc: $(to_upper_camel_case "$BLOC_NAME") in $MODULE_DIR";