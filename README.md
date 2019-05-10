The Focus task manager built using flutter.


## Getting Started

### Install Flutter and Flutter Web
* Install flutter by following the directions here: https://flutter.dev/docs/get-started/install
* Clone the repo and `cd focus-flutter`.
* Install flutter_web by following the directions here: https://github.com/flutter/flutter_web#install-the-flutter_web-build-tools
* The docs for flutter_web don't indicate that you need to add the flutter sdk's bundld dart sdk to your path - but you do. The sdk is at: `$WHERE_YOU_PUT_FLUTTER/bin/cache/dart-sdk/bin`.

Ultimately, you should have added a `flutter/bin`, a `flutter/.pub-cache/bin`, and a `flutter/bin/cache/dart-sdk/bin` to your path.


### Running the app
From the repo root, `webdev serve --auto restart`. This will build the project and serve it on localhost. You can see the port in the output of the command. This will also watch files for changes and hot-reload.
