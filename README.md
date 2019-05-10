The Focus task manager built using Flutter.


## Getting Started

### Install Flutter and Flutter Web
* Install Flutter by following the directions here: https://flutter.dev/docs/get-started/install
* Clone the repo and `cd focus_flutter`.
* Install flutter_web by following the directions here: https://github.com/flutter/flutter_web#install-the-flutter_web-build-tools
* The docs for flutter_web don't indicate that you need to add Flutter's bundled dart sdk to your PATH - but you do. The sdk is at: `$WHERE_YOU_PUT_FLUTTER/bin/cache/dart-sdk/bin`. You'll need to add this to your PATH.

Ultimately, you should have added a `flutter/bin`, a `flutter/.pub-cache/bin`, and a `flutter/bin/cache/dart-sdk/bin` to your PATH.


### Running the app
From the repo root, `webdev serve --auto restart`. This will build the project and serve it on localhost. You can see the port in the output of the command. This will also watch files for changes and hot-reload.

### VS Code
Instructions for installing the VS Code plugin can be found here: https://github.com/flutter/flutter_web#visual-studio-code

I recommend setting the `editor.formatOnSave: true` setting if you haven't already.
