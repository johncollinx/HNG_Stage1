// lib/data/questions.dart

import '../models/question.dart';

const techQuestions = [
  // 1
  Question(
    questionText: 'What is the primary function of the Flutter framework?',
    options: [
      'Backend server development',
      'Cross-platform mobile app development',
      'Data science and machine learning',
      'Web page styling (CSS)',
    ],
    correctAnswer: 'Cross-platform mobile app development',
  ),
  // 2
  Question(
    questionText: 'Which programming language is used to write Flutter apps?',
    options: ['Kotlin', 'Java', 'Dart', 'Swift'],
    correctAnswer: 'Dart',
  ),
  // 3
  Question(
    questionText: 'What are the two main types of widgets in Flutter?',
    options: [
      'Functional and Abstract',
      'Input and Output',
      'Stateless and Stateful',
      'Material and Cupertino',
    ],
    correctAnswer: 'Stateless and Stateful',
  ),
  // 4
  Question(
    questionText:
        'In Flutter, what is an immutable description of part of the user interface?',
    options: ['A Variable', 'A Widget', 'A Class', 'An Element'],
    correctAnswer: 'A Widget',
  ),
  // 5
  Question(
    questionText: 'What is the purpose of the `setState()` method?',
    options: [
      'To switch between different screens/pages.',
      'To build a new database query.',
      'To rebuild the widget tree with new data.',
      'To initialize a widget\'s properties.',
    ],
    correctAnswer: 'To rebuild the widget tree with new data.',
  ),
  // 6
  Question(
    questionText:
        'Which widget allows for scrolling through a single column of content?',
    options: ['Row', 'Column', 'Container', 'SingleChildScrollView'],
    correctAnswer: 'SingleChildScrollView',
  ),
  // 7
  Question(
    questionText: 'The concept of "hot reload" in Flutter is primarily used for:',
    options: [
      'Database connection',
      'Building release APKs',
      'Faster development iteration',
      'Code optimization',
    ],
    correctAnswer: 'Faster development iteration',
  ),
  // 8
  Question(
    questionText: 'What is the root of the widget tree in a typical Flutter application?',
    options: ['Scaffold', 'main() function', 'runApp()', 'MaterialApp or CupertinoApp'],
    correctAnswer: 'MaterialApp or CupertinoApp',
  ),
  // 9
  Question(
    questionText: 'Which property is used to align widgets horizontally in a Row?',
    options: [
      'MainAxisAlignment',
      'CrossAxisAlignment',
      'TextDirection',
      'VerticalDirection',
    ],
    correctAnswer: 'MainAxisAlignment',
  ),
  // 10
  Question(
    questionText: 'What does the abbreviation "API" stand for in programming?',
    options: [
      'Application Program Interface',
      'Advanced Process Instruction',
      'Automated Protocol Index',
      'Application Performance Indicator',
    ],
    correctAnswer: 'Application Program Interface',
  ),
  // 11
  Question(
    questionText: 'What is the function of the `build()` method in a Flutter widget?',
    options: [
      'To handle user input',
      'To describe how to display the widget in the UI',
      'To initialize variables',
      'To run background tasks',
    ],
    correctAnswer: 'To describe how to display the widget in the UI',
  ),
  // 12
  Question(
    questionText: 'Which widget provides basic visual structure like AppBar and FloatingActionButton?',
    options: ['Container', 'MaterialApp', 'Scaffold', 'Card'],
    correctAnswer: 'Scaffold',
  ),
  // 13
  Question(
    questionText: 'What is the purpose of the `pubspec.yaml` file in a Flutter project?',
    options: [
      'To define database schema',
      'To manage dependencies and assets',
      'To handle network configurations',
      'To store user preferences',
    ],
    correctAnswer: 'To manage dependencies and assets',
  ),
  // 14
  Question(
    questionText: 'Which command is used to create a new Flutter project?',
    options: [
      'flutter init project',
      'flutter new app',
      'flutter create project_name',
      'dart create app',
    ],
    correctAnswer: 'flutter create project_name',
  ),
  // 15
  Question(
    questionText: 'What package manager does Flutter use for dependencies?',
    options: ['npm', 'pub', 'pip', 'gradle'],
    correctAnswer: 'pub',
  ),
  // 16
  Question(
    questionText: 'What function is called when a Flutter app starts?',
    options: ['runApp()', 'initState()', 'main()', 'build()'],
    correctAnswer: 'main()',
  ),
  // 17
  Question(
    questionText: 'What is the difference between hot reload and hot restart in Flutter?',
    options: [
      'Hot reload preserves state, hot restart resets it',
      'Hot restart is faster',
      'They are the same thing',
      'Hot reload clears the build cache',
    ],
    correctAnswer: 'Hot reload preserves state, hot restart resets it',
  ),
  // 18
  Question(
    questionText: 'Which widget is used to apply padding around another widget?',
    options: ['Margin', 'Padding', 'Container', 'SizedBox'],
    correctAnswer: 'Padding',
  ),
  // 19
  Question(
    questionText: 'What does the `Expanded` widget do in a `Row` or `Column`?',
    options: [
      'Forces a widget to take all available space',
      'Fixes the widget size',
      'Centers the widget vertically',
      'Adds scroll behavior',
    ],
    correctAnswer: 'Forces a widget to take all available space',
  ),
  // 20
  Question(
    questionText: 'Which layout widget positions children relative to each other?',
    options: ['Stack', 'ListView', 'GridView', 'Wrap'],
    correctAnswer: 'Stack',
  ),
  // 21
  Question(
    questionText: 'What is the role of the `mainAxisAlignment` property in a Column?',
    options: [
      'Aligns children vertically',
      'Aligns children horizontally',
      'Adds margin between children',
      'Determines animation direction',
    ],
    correctAnswer: 'Aligns children vertically',
  ),
  // 22
  Question(
    questionText: 'What widget is used for displaying an image from an asset?',
    options: ['Image.asset', 'Image.network', 'AssetWidget', 'PictureWidget'],
    correctAnswer: 'Image.asset',
  ),
  // 23
  Question(
    questionText: 'What is Riverpod used for in Flutter?',
    options: [
      'Routing',
      'State management',
      'Database interaction',
      'HTTP requests',
    ],
    correctAnswer: 'State management',
  ),
  // 24
  Question(
    questionText: 'Which package provides FFI access to Windows APIs in Dart?',
    options: ['ffi', 'win32', 'platform', 'dart:ui'],
    correctAnswer: 'win32',
  ),
  // 25
  Question(
    questionText: 'In Flutter, how do you navigate to a new screen?',
    options: [
      'Navigator.push(context, route)',
      'context.navigateTo(route)',
      'MaterialPageRoute()',
      'runApp()',
    ],
    correctAnswer: 'Navigator.push(context, route)',
  ),
  // 26
  Question(
    questionText: 'Which widget displays a scrollable list of items?',
    options: ['GridView', 'Column', 'ListView', 'Row'],
    correctAnswer: 'ListView',
  ),
  // 27
  Question(
    questionText: 'What is the difference between `mainAxisAlignment` and `crossAxisAlignment`?',
    options: [
      'MainAxis is primary direction; CrossAxis is perpendicular',
      'CrossAxis centers widgets vertically',
      'They are the same',
      'MainAxis controls spacing only',
    ],
    correctAnswer: 'MainAxis is primary direction; CrossAxis is perpendicular',
  ),
  // 28
  Question(
    questionText: 'Which class is used to display a material design button with elevation?',
    options: ['TextButton', 'ElevatedButton', 'OutlinedButton', 'IconButton'],
    correctAnswer: 'ElevatedButton',
  ),
  // 29
  Question(
    questionText: 'Which Flutter command is used to build a Windows release?',
    options: [
      'flutter build windows --release',
      'flutter build desktop',
      'flutter release windows',
      'flutter run release',
    ],
    correctAnswer: 'flutter build windows --release',
  ),
  // 30
  Question(
    questionText: 'What does the `Container` widget primarily do?',
    options: [
      'Adds spacing only',
      'Combines common painting, positioning, and sizing widgets',
      'Displays a dialog',
      'Manages app lifecycle',
    ],
    correctAnswer:
        'Combines common painting, positioning, and sizing widgets',
  ),
  // 31
  Question(
    questionText: 'Which function is used to run your Flutter app?',
    options: ['initState()', 'runApp()', 'main()', 'build()'],
    correctAnswer: 'runApp()',
  ),
  // 32
  Question(
    questionText: 'What is the use of the "Future" class in Dart?',
    options: [
      'To represent asynchronous operations',
      'To create synchronous code',
      'To store images',
      'To handle UI widgets',
    ],
    correctAnswer: 'To represent asynchronous operations',
  ),
  // 33
  Question(
    questionText: 'What is the entry point file of a Flutter project?',
    options: ['index.html', 'app.dart', 'main.dart', 'flutter.yaml'],
    correctAnswer: 'main.dart',
  ),
  // 34
  Question(
    questionText: 'Which widget is best for displaying large scrollable data?',
    options: ['Column', 'Row', 'ListView.builder', 'GridView.count'],
    correctAnswer: 'ListView.builder',
  ),
  // 35
  Question(
    questionText: 'What keyword is used in Dart to define a constant?',
    options: ['let', 'final', 'const', 'static'],
    correctAnswer: 'const',
  ),
  // 36
  Question(
    questionText: 'What does FFI stand for in Dart?',
    options: [
      'Foreign Function Interface',
      'File Function Integration',
      'Fast Framework Interface',
      'Flutter File Import',
    ],
    correctAnswer: 'Foreign Function Interface',
  ),
  // 37
  Question(
    questionText: 'Which class in Flutter is used to draw rectangles, circles, etc.?',
    options: ['CustomPaint', 'Canvas', 'Painter', 'DrawingWidget'],
    correctAnswer: 'CustomPaint',
  ),
  // 38
  Question(
    questionText: 'What is the function of `MediaQuery` in Flutter?',
    options: [
      'To get device screen size and orientation',
      'To play media files',
      'To store UI states',
      'To manage app themes',
    ],
    correctAnswer: 'To get device screen size and orientation',
  ),
  // 39
  Question(
    questionText: 'Which Flutter widget is used to show short messages at the bottom of the screen?',
    options: ['AlertDialog', 'SnackBar', 'Tooltip', 'Banner'],
    correctAnswer: 'SnackBar',
  ),
  // 40
  Question(
    questionText: 'What method is used to update Riverpod provider state?',
    options: ['ref.watch()', 'ref.update()', 'ref.read().state =', 'ref.listen()'],
    correctAnswer: 'ref.read().state =',
  ),
  // 41
  Question(
    questionText: 'Which data type in Dart is used for true/false values?',
    options: ['num', 'bool', 'int', 'var'],
    correctAnswer: 'bool',
  ),
  // 42
  Question(
    questionText: 'What does `async` indicate in a Dart function?',
    options: [
      'The function performs asynchronous work',
      'It is a static function',
      'It is a getter',
      'It must run on UI thread',
    ],
    correctAnswer: 'The function performs asynchronous work',
  ),
  // 43
  Question(
    questionText: 'What is the main difference between `const` and `final` in Dart?',
    options: [
      'const values are compile-time constants; final are runtime constants',
      'final values can change later',
      'They are interchangeable',
      'final is used only for widgets',
    ],
    correctAnswer:
        'const values are compile-time constants; final are runtime constants',
  ),
  // 44
  Question(
    questionText: 'What does the `StatefulWidget` class maintain?',
    options: [
      'Mutable state that can change over time',
      'Static configuration only',
      'Immutable data only',
      'App-wide global state',
    ],
    correctAnswer: 'Mutable state that can change over time',
  ),
  // 45
  Question(
    questionText: 'What widget would you use for adaptive scrolling in Flutter?',
    options: ['ScrollView', 'ListView', 'CustomScrollView', 'SingleChildScrollView'],
    correctAnswer: 'CustomScrollView',
  ),
  // 46
  Question(
    questionText: 'In Dart, which keyword is used to define an abstract class?',
    options: ['class', 'abstract', 'interface', 'extends'],
    correctAnswer: 'abstract',
  ),
  // 47
  Question(
    questionText: 'Which Riverpod provider type is best for async operations?',
    options: ['Provider', 'StateProvider', 'FutureProvider', 'ChangeNotifierProvider'],
    correctAnswer: 'FutureProvider',
  ),
  // 48
  Question(
    questionText: 'What is the command to upgrade all Flutter dependencies?',
    options: [
      'flutter update',
      'flutter pub upgrade',
      'flutter upgrade all',
      'pub install',
    ],
    correctAnswer: 'flutter pub upgrade',
  ),
  // 49
  Question(
    questionText: 'Which Flutter widget is commonly used to make a responsive layout?',
    options: ['LayoutBuilder', 'Container', 'Row', 'Stack'],
    correctAnswer: 'LayoutBuilder',
  ),
  // 50
  Question(
    questionText: 'Which Win32 API constant sets the desktop wallpaper?',
    options: [
      'SPI_SETDESKWALLPAPER',
      'SPI_GETDESKWALLPAPER',
      'WM_WALLPAPER',
      'DESKTOP_SET_IMAGE',
    ],
    correctAnswer: 'SPI_SETDESKWALLPAPER',
  ),
  // 51
  Question(
    questionText: 'What function loads dynamic libraries in Dart FFI?',
    options: [
      'DynamicLibrary.open()',
      'FFI.load()',
      'System.import()',
      'Native.open()',
    ],
    correctAnswer: 'DynamicLibrary.open()',
  ),
  // 52
  Question(
    questionText: 'Which Flutter widget is ideal for presenting a grid of images?',
    options: ['GridView', 'ListView', 'PageView', 'Column'],
    correctAnswer: 'GridView',
  ),
  // 53
  Question(
    questionText: 'What tool helps to analyze Dart code for potential errors and style issues?',
    options: ['dartfmt', 'dartanalyzer', 'flutter doctor', 'pub get'],
    correctAnswer: 'dartanalyzer',
  ),
  // 54
  Question(
    questionText: 'What is the purpose of `flutter doctor`?',
    options: [
      'Run the app on device',
      'Check environment setup and missing dependencies',
      'Build release binaries',
      'Format Dart code',
    ],
    correctAnswer: 'Check environment setup and missing dependencies',
  ),
  // 55
  Question(
    questionText: 'What is the typical file format for Flutter assets images?',
    options: ['.exe', '.apk', '.png/.jpg', '.dart'],
    correctAnswer: '.png/.jpg',
  ),
  // 56
  Question(
    questionText: 'Which widget is used to place widgets next to each other horizontally?',
    options: ['Column', 'Row', 'Stack', 'ListView'],
    correctAnswer: 'Row',
  ),
  // 57
  Question(
    questionText: 'Which property controls how a child is positioned inside a Container with alignment?',
    options: ['padding', 'alignment', 'margin', 'transform'],
    correctAnswer: 'alignment',
  ),
  // 58
  Question(
    questionText: 'Which widget is commonly used for in-app dialogs and confirmation boxes?',
    options: ['SnackBar', 'AlertDialog', 'Tooltip', 'BottomSheet'],
    correctAnswer: 'AlertDialog',
  ),
  // 59
  Question(
    questionText: 'What is the use of `InheritedWidget` in Flutter?',
    options: [
      'To manage navigation',
      'To share data efficiently down the widget tree',
      'To create animations',
      'To style text globally',
    ],
    correctAnswer: 'To share data efficiently down the widget tree',
  ),
  // 60
  Question(
    questionText: 'Which tool is used to inspect Flutter widget tree at runtime?',
    options: ['DevTools', 'adb', 'Xcode', 'Android Studio only'],
    correctAnswer: 'DevTools',
  ),
  // 61
  Question(
    questionText: 'What is the main advantage of using const constructors for widgets?',
    options: [
      'They compile faster',
      'They are required for all widgets',
      'They allow widget reuse and improve performance',
      'They enable network requests',
    ],
    correctAnswer: 'They allow widget reuse and improve performance',
  ),
  // 62
  Question(
    questionText: 'Which Flutter widget is best for showing a list of items with separators?',
    options: ['ListView.separated', 'ListView', 'Column', 'GridView'],
    correctAnswer: 'ListView.separated',
  ),
  // 63
  Question(
    questionText: 'What is `pubspec.lock` used for?',
    options: [
      'To lock app state',
      'To record exact versions of dependencies',
      'To configure CI/CD',
      'To store user data',
    ],
    correctAnswer: 'To record exact versions of dependencies',
  ),
  // 64
  Question(
    questionText: 'Which widget should you use when you need to repaint frequently with custom drawing?',
    options: ['StatelessWidget', 'StatefulWidget', 'CustomPaint', 'Container'],
    correctAnswer: 'CustomPaint',
  ),
  // 65
  Question(
    questionText: 'Which keyword prevents a variable from being reassigned in Dart?',
    options: ['const', 'final', 'let', 'static'],
    correctAnswer: 'final',
  ),
  // 66
  Question(
    questionText: 'Which widget lets you respond to gestures like taps and swipes?',
    options: ['GestureDetector', 'Listener', 'InkWell', 'All of the above'],
    correctAnswer: 'All of the above',
  ),
  // 67
  Question(
    questionText: 'What package provides Material Design icons in Flutter?',
    options: ['flutter_icons', 'material_icons', 'Icons', 'cupertino_icons'],
    correctAnswer: 'Icons',
  ),
  // 68
  Question(
    questionText: 'Which command runs the Flutter app on a connected device or emulator?',
    options: ['flutter build', 'flutter run', 'flutter start', 'flutter launch'],
    correctAnswer: 'flutter run',
  ),
  // 69
  Question(
    questionText: 'Which widget would you use for pagination of full-screen pages?',
    options: ['ListView', 'PageView', 'GridView', 'SingleChildScrollView'],
    correctAnswer: 'PageView',
  ),
  // 70
  Question(
    questionText: 'Which Dart collection is ordered and allows duplicate values?',
    options: ['Set', 'Map', 'List', 'Queue'],
    correctAnswer: 'List',
  ),
  // 71
  Question(
    questionText: 'What does `Navigator.pop(context)` do?',
    options: [
      'Pushes a new route',
      'Removes current route and returns to previous one',
      'Closes the app',
      'Restarts the app',
    ],
    correctAnswer: 'Removes current route and returns to previous one',
  ),
  // 72
  Question(
    questionText: 'Which widget helps to debounce heavy rebuilds by limiting updates to visible area?',
    options: ['Visibility', 'RepaintBoundary', 'Offstage', 'SliverList'],
    correctAnswer: 'RepaintBoundary',
  ),
  // 73
  Question(
    questionText: 'Which technique helps reduce app size by splitting code per platform or feature?',
    options: ['Tree shaking', 'Hot reload', 'Stateful widgets', 'Using many packages'],
    correctAnswer: 'Tree shaking',
  ),
  // 74
  Question(
    questionText: 'What is the purpose of `flutter pub get`?',
    options: [
      'To build the app',
      'To fetch dependencies listed in pubspec.yaml',
      'To run tests',
      'To run the app',
    ],
    correctAnswer: 'To fetch dependencies listed in pubspec.yaml',
  ),
  // 75
  Question(
    questionText: 'Which widget provides a material-style ripple effect on tap?',
    options: ['GestureDetector', 'InkWell', 'IconButton', 'Container'],
    correctAnswer: 'InkWell',
  ),
  // 76
  Question(
    questionText: 'What is the recommended way to manage app themes in Flutter?',
    options: [
      'Use global variables',
      'Use ThemeData with MaterialApp',
      'Set colors inline for every widget',
      'Use only default colors',
    ],
    correctAnswer: 'Use ThemeData with MaterialApp',
  ),
  // 77
  Question(
    questionText: 'Which debugging tool shows network requests, logs, and widget inspector?',
    options: ['DevTools', 'Xcode', 'Android Studio logs', 'Chrome devtools only'],
    correctAnswer: 'DevTools',
  ),
  // 78
  Question(
    questionText: 'Which Dart type represents integer and double values collectively?',
    options: ['num', 'int', 'double', 'number'],
    correctAnswer: 'num',
  ),
  // 79
  Question(
    questionText: 'Which Flutter widget is optimized for large data sets and item reuse?',
    options: ['GridView', 'ListView.builder', 'Column', 'SingleChildScrollView'],
    correctAnswer: 'ListView.builder',
  ),
  // 80
  Question(
    questionText: 'What does the `async`/`await` pattern help with?',
    options: [
      'Synchronous UI updates',
      'Easier to read asynchronous code',
      'Faster animations',
      'Static typing',
    ],
    correctAnswer: 'Easier to read asynchronous code',
  ),
  // 81
  Question(
    questionText: 'What is "null safety" in Dart?',
    options: [
      'A way to avoid null values at compile time',
      'A runtime check',
      'A UI feature',
      'Deprecated feature',
    ],
    correctAnswer: 'A way to avoid null values at compile time',
  ),
  // 82
  Question(
    questionText: 'Which widget is used to constrain the aspect ratio of its child?',
    options: ['FractionallySizedBox', 'Expanded', 'AspectRatio', 'Flexible'],
    correctAnswer: 'AspectRatio',
  ),
  // 83
  Question(
    questionText: 'Which tool packages Flutter apps for distribution?',
    options: ['flutter package', 'flutter build', 'dart package', 'pub publish'],
    correctAnswer: 'flutter build',
  ),
  // 84
  Question(
    questionText: 'What is the purpose of `setState()` inside a StatefulWidget?',
    options: [
      'To create a new widget',
      'To notify Flutter to rebuild widget with new state',
      'To dispose resources',
      'To navigate routes',
    ],
    correctAnswer: 'To notify Flutter to rebuild widget with new state',
  ),
  // 85
  Question(
    questionText: 'Which widget is useful for grouping and laying out children horizontally with spacing?',
    options: ['Row', 'Wrap', 'GridView', 'Column'],
    correctAnswer: 'Wrap',
  ),
  // 86
  Question(
    questionText: 'Which testing type checks UI interactions and app behavior on device/emulator?',
    options: ['Unit tests', 'Widget tests', 'Integration/E2E tests', 'Static analysis'],
    correctAnswer: 'Integration/E2E tests',
  ),
  // 87
  Question(
    questionText: 'Which package would you use for secure local storage on Flutter?',
    options: ['shared_preferences', 'flutter_secure_storage', 'path_provider', 'sqflite'],
    correctAnswer: 'flutter_secure_storage',
  ),
  // 88
  Question(
    questionText: 'Which Flutter widget is used to animate between two values?',
    options: ['AnimatedBuilder', 'TweenAnimationBuilder', 'AnimatedContainer', 'All of the above'],
    correctAnswer: 'All of the above',
  ),
  // 89
  Question(
    questionText: 'Which build mode in Flutter is fastest for development with debugging enabled?',
    options: ['Profile', 'Release', 'Debug', 'Production'],
    correctAnswer: 'Debug',
  ),
  // 90
  Question(
    questionText: 'Which method disposes controllers and resources in a State object?',
    options: ['dispose()', 'initState()', 'deactivate()', 'setState()'],
    correctAnswer: 'dispose()',
  ),
  // 91
  Question(
    questionText: 'What is a `Stream` in Dart used for?',
    options: [
      'Single asynchronous result',
      'Multiple asynchronous events over time',
      'Synchronous loop',
      'Rendering UI',
    ],
    correctAnswer: 'Multiple asynchronous events over time',
  ),
  // 92
  Question(
    questionText: 'Which Flutter widget would you use to constrain a child\'s maximum width?',
    options: ['ConstrainedBox', 'SizedBox', 'Flexible', 'Expanded'],
    correctAnswer: 'ConstrainedBox',
  ),
  // 93
  Question(
    questionText: 'Which material widget automatically adapts to platform conventions like elevation and ripple?',
    options: ['CupertinoButton', 'Material', 'Scaffold', 'ElevatedButton'],
    correctAnswer: 'Material',
  ),
  // 94
  Question(
    questionText: 'Which Dart function is used to parse JSON into Maps or Lists?',
    options: ['json.decode', 'JsonParser.parse', 'dart:convert.parse', 'json.parse'],
    correctAnswer: 'json.decode',
  ),
  // 95
  Question(
    questionText: 'Which widget is commonly used to create an adaptive app bar with tabs?',
    options: ['AppBar', 'SliverAppBar', 'TabBarView', 'BottomAppBar'],
    correctAnswer: 'SliverAppBar',
  ),
  // 96
  Question(
    questionText: 'What is the main role of `pubspec.yaml` assets section?',
    options: [
      'Declare local fonts and images to include in the app bundle',
      'Define package entry points',
      'List compile-time constants',
      'Configure app signing',
    ],
    correctAnswer: 'Declare local fonts and images to include in the app bundle',
  ),
  // 97
  Question(
    questionText: 'Which widget should you use to display long blocks of selectable text?',
    options: ['Text', 'SelectableText', 'RichText', 'EditableText'],
    correctAnswer: 'SelectableText',
  ),
  // 98
  Question(
    questionText: 'Which command shows connected devices and emulators for Flutter?',
    options: ['flutter devices', 'flutter emulators', 'adb devices', 'flutter list'],
    correctAnswer: 'flutter devices',
  ),
  // 99
  Question(
    questionText: 'Which widget helps to avoid rebuilding child widgets when parent changes?',
    options: ['InheritedWidget', 'RepaintBoundary', 'Builder', 'ValueListenableBuilder'],
    correctAnswer: 'RepaintBoundary',
  ),
  // 100
  Question(
    questionText: 'What is the recommended way to handle platform-specific code in Flutter?',
    options: [
      'Using platform channels or FFI',
      'Writing separate apps',
      'Using only pure Dart',
      'Embedding platform code in assets',
    ],
    correctAnswer: 'Using platform channels or FFI',
  ),
  // 101
  Question(
    questionText: 'Which type of widget should be used for purely presentational UI with no mutable state?',
    options: ['StatelessWidget', 'StatefulWidget', 'InheritedWidget', 'Provider'],
    correctAnswer: 'StatelessWidget',
  ),
  // 102
  Question(
    questionText: 'Which Dart feature helps ensure types at compile time and avoid runtime type errors?',
    options: ['Dynamic typing', 'Strong mode (sound null safety)', 'Loose typing', 'None of the above'],
    correctAnswer: 'Strong mode (sound null safety)',
  ),
  // 103
  Question(
    questionText: 'What is the effect of calling `setState()` with an empty callback (no changes)?',
    options: [
      'Nothing happens',
      'Triggers a rebuild of the widget subtree',
      'Throws an exception',
      'Exits the app',
    ],
    correctAnswer: 'Triggers a rebuild of the widget subtree',
  ),
  // 104
  Question(
    questionText: 'Which widget is suitable for creating a horizontal list of chips or tags?',
    options: ['Wrap', 'Row', 'ListView', 'GridView'],
    correctAnswer: 'Wrap',
  ),
  // 105
  Question(
    questionText: 'Which package allows storing small key-value pairs synchronously in Flutter?',
    options: ['hive', 'shared_preferences', 'sqflite', 'moor'],
    correctAnswer: 'shared_preferences',
  ),
  // 106
  Question(
    questionText: 'Which Flutter widget helps to create forms and validate inputs?',
    options: ['Form', 'TextField', 'Container', 'GestureDetector'],
    correctAnswer: 'Form',
  ),
  // 107
  Question(
    questionText: 'Which tool helps profiling CPU and memory usage of a Flutter app?',
    options: ['Android Studio profiler', 'DevTools', 'Both', 'None'],
    correctAnswer: 'Both',
  ),
  // 108
  Question(
    questionText: 'Which Dart concept allows a function to return multiple asynchronous values over time?',
    options: ['Future', 'Stream', 'Isolate', 'Callback'],
    correctAnswer: 'Stream',
  ),
  // 109
  Question(
    questionText: 'Which widget should you use to put widgets at fixed positions in a stack?',
    options: ['Positioned', 'Align', 'Transform', 'DecoratedBox'],
    correctAnswer: 'Positioned',
  ),
  // 110
  Question(
    questionText: 'What does `pubspec.yaml` `environment` section specify?',
    options: [
      'Allowed Flutter versions and Dart SDK constraints',
      'App package name',
      'Assets to include',
      'CI settings',
    ],
    correctAnswer: 'Allowed Flutter versions and Dart SDK constraints',
  ),
  // 111
  Question(
    questionText: 'What is the main purpose of `Isolate` in Dart?',
    options: [
      'UI updates',
      'Parallel execution without shared memory',
      'Synchronous function calls',
      'Database access',
    ],
    correctAnswer: 'Parallel execution without shared memory',
  ),
  // 112
  Question(
    questionText: 'Which HTTP package is commonly used in Flutter for simple REST calls?',
    options: ['dio', 'http', 'graphql', 'retrofit'],
    correctAnswer: 'http',
  ),
  // 113
  Question(
    questionText: 'Which Flutter widget is used to create a rounded rectangular card?',
    options: ['Card', 'Container', 'Material', 'ClipRRect'],
    correctAnswer: 'Card',
  ),
  // 114
  Question(
    questionText: 'Which method should you use to persist small amounts of structured data in Flutter?',
    options: ['Files', 'Shared preferences', 'SQLite', 'Local server'],
    correctAnswer: 'Shared preferences',
  ),
  // 115
  Question(
    questionText: 'Which property controls the number of columns in GridView.count?',
    options: ['crossAxisCount', 'mainAxisCount', 'itemCount', 'crossAxisSpacing'],
    correctAnswer: 'crossAxisCount',
  ),
  // 116
  Question(
    questionText: 'Which operator is used in Dart for null-aware access to properties?',
    options: ['?.', '..', '??', '!?'],
    correctAnswer: '?.',
  ),
  // 117
  Question(
    questionText: 'What is the Dart equivalent of JavaScript Map for key-value pairs?',
    options: ['Map', 'Dictionary', 'HashMap', 'AssociativeArray'],
    correctAnswer: 'Map',
  ),
  // 118
  Question(
    questionText: 'Which widget is used to create responsive columns that adapt to content?',
    options: ['Flex', 'Column', 'Expanded', 'Flexible'],
    correctAnswer: 'Flexible',
  ),
  // 119
  Question(
    questionText: 'Which Flutter property should you set to make text selectable and copyable?',
    options: ['SelectableText', 'Text.selectable', 'RichText', 'TextField'],
    correctAnswer: 'SelectableText',
  ),
  // 120
  Question(
    questionText: 'Which method in State is called once when the State object is inserted in the tree?',
    options: ['build()', 'initState()', 'dispose()', 'didChangeDependencies()'],
    correctAnswer: 'initState()',
  ),
  // 121
  Question(
    questionText: 'Which Flutter widget allows staggering and chaining animations easily?',
    options: ['AnimatedList', 'AnimatedContainer', 'AnimationController with Tween', 'Hero'],
    correctAnswer: 'AnimationController with Tween',
  ),
  // 122
  Question(
    questionText: 'Which approach is recommended for platform-specific code on Windows in Flutter?',
    options: [
      'Use platform channels or FFI',
      'Embed native code in assets',
      'Use web-only APIs',
      'Rewrite app in C#',
    ],
    correctAnswer: 'Use platform channels or FFI',
  ),
  // 123
  Question(
    questionText: 'Which package provides easy JSON serialization code generation in Dart?',
    options: ['json_serializable', 'built_value', 'dart_json', 'json_mapper'],
    correctAnswer: 'json_serializable',
  ),
  // 124
  Question(
    questionText: 'Which Dart keyword creates a lazy-initialized final variable?',
    options: ['final', 'late final', 'var', 'const'],
    correctAnswer: 'late final',
  ),
  // 125
  Question(
    questionText: 'Which widget is typically used to implement pull-to-refresh?',
    options: ['RefreshIndicator', 'PullToRefresh', 'SwipeRefresh', 'ListView'],
    correctAnswer: 'RefreshIndicator',
  ),
  // 126
  Question(
    questionText: 'Which format is recommended for Flutter icon assets that scale cleanly?',
    options: ['PNG', 'SVG', 'JPG', 'BMP'],
    correctAnswer: 'SVG',
  ),
  // 127
  Question(
    questionText: 'Which Flutter plugin helps to pick images from gallery and camera?',
    options: ['image_picker', 'file_picker', 'camera', 'photo_manager'],
    correctAnswer: 'image_picker',
  ),
  // 128
  Question(
    questionText: 'Which class in Dart is used to read bytes from a file asynchronously?',
    options: ['File', 'FileReader', 'RandomAccessFile', 'Stream<List<int>>'],
    correctAnswer: 'Stream<List<int>>',
  ),
  // 129
  Question(
    questionText: 'Which widget is used to place widgets at the bottom of a Scaffold?',
    options: ['bottomNavigationBar', 'floatingActionButton', 'persistentFooterButtons', 'drawer'],
    correctAnswer: 'bottomNavigationBar',
  ),
  // 130
  Question(
    questionText: 'Which Flutter lifecycle method is called after initState and when dependencies change?',
    options: ['didUpdateWidget', 'didChangeDependencies', 'dispose', 'reassemble'],
    correctAnswer: 'didChangeDependencies',
  ),
  // 131
  Question(
    questionText: 'What does the `late` modifier in Dart allow?',
    options: [
      'Declares a nullable type',
      'Allows non-nullable variable to be initialized later',
      'Creates a constant',
      'Marks variable deprecated',
    ],
    correctAnswer: 'Allows non-nullable variable to be initialized later',
  ),
  // 132
  Question(
    questionText: 'Which widget helps create adaptive UI for iOS look and feel?',
    options: ['Cupertino widgets', 'Material widgets', 'AdaptiveContainer', 'PlatformWidget'],
    correctAnswer: 'Cupertino widgets',
  ),
  // 133
  Question(
    questionText: 'Which Dart library provides JSON encode/decode?',
    options: ['dart:convert', 'dart:io', 'dart:json', 'dart:core'],
    correctAnswer: 'dart:convert',
  ),
  // 134
  Question(
    questionText: 'Which widget is best for implementing infinite scrolling lists?',
    options: ['ListView', 'ListView.builder', 'GridView', 'Column'],
    correctAnswer: 'ListView.builder',
  ),
  // 135
  Question(
    questionText: 'Which pattern helps separate UI from business logic in Flutter?',
    options: ['MVC', 'BLoC', 'Singleton', 'Factory'],
    correctAnswer: 'BLoC',
  ),
  // 136
  Question(
    questionText: 'Which Flutter widget provides simple implicit animations for common properties?',
    options: ['AnimatedContainer', 'TweenAnimationBuilder', 'AnimatedBuilder', 'CustomPainter'],
    correctAnswer: 'AnimatedContainer',
  ),
  // 137
  Question(
    questionText: 'Which Dart type represents a fixed-size list of typed values?',
    options: ['List', 'Iterable', 'FixedList', 'TypedData'],
    correctAnswer: 'List',
  ),
  // 138
  Question(
    questionText: 'Which widget is used to create a resizable split view in Flutter web/desktop?',
    options: ['ResizableBox', 'SplitView', 'LayoutBuilder with GestureDetector', 'Row with Flexible'],
    correctAnswer: 'LayoutBuilder with GestureDetector',
  ),
  // 139
  Question(
    questionText: 'Which plugin helps to access file system paths in Flutter?',
    options: ['path_provider', 'file_picker', 'storage', 'path'],
    correctAnswer: 'path_provider',
  ),
  // 140
  Question(
    questionText: 'Which Dart construct is used for error handling?',
    options: ['try/catch', 'if/else', 'switch', 'assert'],
    correctAnswer: 'try/catch',
  ),
  // 141
  Question(
    questionText: 'Which Flutter widget would you use to hide widgets while keeping their state?',
    options: ['Offstage', 'Opacity', 'Visibility', 'SizedBox.shrink'],
    correctAnswer: 'Offstage',
  ),
  // 142
  Question(
    questionText: 'Which package helps run platform-specific code from Dart using channels?',
    options: ['platform_channels', 'flutter_channel', 'MethodChannel', 'platform_bridge'],
    correctAnswer: 'MethodChannel',
  ),
  // 143
  Question(
    questionText: 'Which command shows Flutter environment information and issues?',
    options: ['flutter info', 'flutter doctor', 'flutter env', 'flutter doctor --verbose'],
    correctAnswer: 'flutter doctor',
  ),
  // 144
  Question(
    questionText: 'Which widget is optimal for building complex scrolling effects with slivers?',
    options: ['CustomScrollView', 'ScrollView', 'ListView', 'GridView'],
    correctAnswer: 'CustomScrollView',
  ),
  // 145
  Question(
    questionText: 'What is the recommended approach for handling images for multiple screen densities?',
    options: ['Single large image', 'Provide multiple asset resolutions (1x,2x,3x)', 'Use JPG only', 'Use SVG only'],
    correctAnswer: 'Provide multiple asset resolutions (1x,2x,3x)',
  ),
  // 146
  Question(
    questionText: 'Which Flutter widget should be used to group tappable text spans?',
    options: ['Text', 'RichText with GestureRecognizers', 'SelectableText', 'Tooltip'],
    correctAnswer: 'RichText with GestureRecognizers',
  ),
  // 147
  Question(
    questionText: 'Which class is used for unit testing in Dart?',
    options: ['flutter_test', 'test', 'unittest', 'dart_test'],
    correctAnswer: 'test',
  ),
  // 148
  Question(
    questionText: 'Which Flutter API allows drawing to a canvas in paint callbacks?',
    options: ['CustomPaint', 'PaintingContext', 'Canvas', 'Paint'],
    correctAnswer: 'CustomPaint',
  ),
  // 149
  Question(
    questionText: 'Which approach makes widget rebuilds cheaper by reducing subtree rebuilds?',
    options: ['Use const widgets and split widgets into smaller ones', 'Use large monolithic widgets', 'Use global state for everything', 'Avoid stateless widgets'],
    correctAnswer: 'Use const widgets and split widgets into smaller ones',
  ),
  // 150
  Question(
    questionText: 'Which Flutter tool helps generate platform-specific app icons and splash screens?',
    options: ['flutter_launcher_icons', 'flutter_icons', 'icon_generator', 'flutter_assets'],
    correctAnswer: 'flutter_launcher_icons',
  ),
  // 151
  Question(
    questionText: 'Which Dart feature provides code reuse through mixins?',
    options: ['implements', 'mixins', 'extends', 'with'],
    correctAnswer: 'with',
  ),
  // 152
  Question(
    questionText: 'Which Flutter widget is useful to show progress while waiting for data?',
    options: ['CircularProgressIndicator', 'LinearProgressIndicator', 'Both', 'ProgressBar'],
    correctAnswer: 'Both',
  ),
  // 153
  Question(
    questionText: 'Which testing approach validates the behavior of an independent function or class?',
    options: ['Unit testing', 'Integration testing', 'UI testing', 'E2E testing'],
    correctAnswer: 'Unit testing',
  ),
  // 154
  Question(
    questionText: 'Which widget is suitable for creating a fixed aspect-ratio thumbnail box?',
    options: ['AspectRatio', 'SizedBox', 'Flexible', 'FractionallySizedBox'],
    correctAnswer: 'AspectRatio',
  ),
  // 155
  Question(
    questionText: 'Which method allows scheduling a function to run after build completes?',
    options: ['Future.microtask', 'WidgetsBinding.instance.addPostFrameCallback', 'Timer.run', 'setState'],
    correctAnswer: 'WidgetsBinding.instance.addPostFrameCallback',
  ),
  // 156
  Question(
    questionText: 'Which widget is appropriate for embedding web content in Flutter?',
    options: ['WebView', 'IFrame', 'HtmlView', 'BrowserWidget'],
    correctAnswer: 'WebView',
  ),
  // 157
  Question(
    questionText: 'Which package helps with date and time formatting and parsing in Dart?',
    options: ['intl', 'time', 'date_format', 'chrono'],
    correctAnswer: 'intl',
  ),
  // 158
  Question(
    questionText: 'Which property of ThemeData sets the primary color of the app?',
    options: ['accentColor', 'primaryColor', 'scaffoldBackgroundColor', 'canvasColor'],
    correctAnswer: 'primaryColor',
  ),
  // 159
  Question(
    questionText: 'Which Flutter widget provides an easy-to-use animation between routes?',
    options: ['Hero', 'AnimatedSwitcher', 'PageRouteBuilder', 'FadeTransition'],
    correctAnswer: 'Hero',
  ),
  // 160
  Question(
    questionText: 'Which concept helps avoid blocking the UI thread in Dart when doing heavy computations?',
    options: ['Futures only', 'Isolates', 'Async functions', 'Streams'],
    correctAnswer: 'Isolates',
  ),
  // 161
  Question(
    questionText: 'Which tool integrates with CI to run Flutter tests on push?',
    options: ['GitHub Actions', 'Bitbucket Pipelines', 'GitLab CI', 'All of the above'],
    correctAnswer: 'All of the above',
  ),
  // 162
  Question(
    questionText: 'Which Flutter widget is commonly used to implement bottom navigation?',
    options: ['BottomNavigationBar', 'TabBar', 'Drawer', 'NavigationRail'],
    correctAnswer: 'BottomNavigationBar',
  ),
  // 163
  Question(
    questionText: 'Which approach reduces re-rendering by separating UI into immutable widgets?',
    options: ['Use StatefulWidgets extensively', 'Prefer StatelessWidgets and const where possible', 'Use global variables', 'Use large build methods'],
    correctAnswer: 'Prefer StatelessWidgets and const where possible',
  ),
  // 164
  Question(
    questionText: 'Which HTTP status code indicates a successful GET request?',
    options: ['200', '404', '500', '301'],
    correctAnswer: '200',
  ),
  // 165
  Question(
    questionText: 'Which Flutter widget lets you animate a child in/out when it appears/disappears?',
    options: ['AnimatedOpacity', 'AnimatedSwitcher', 'FadeTransition', 'SlideTransition'],
    correctAnswer: 'AnimatedSwitcher',
  ),
  // 166
  Question(
    questionText: 'Which Flutter property controls text overflow ellipsis?',
    options: ['softWrap', 'overflow: TextOverflow.ellipsis', 'maxLines', 'textScaleFactor'],
    correctAnswer: 'overflow: TextOverflow.ellipsis',
  ),
  // 167
  Question(
    questionText: 'Which tool can you use to measure app size and dependency contribution?',
    options: ['flutter build apk --analyze-size', 'flutter size', 'dart size', 'pub size'],
    correctAnswer: 'flutter build apk --analyze-size',
  ),
  // 168
  Question(
    questionText: 'Which pattern helps in achieving testable business logic separate from UI?',
    options: ['Tight coupling', 'BLoC or MVVM', 'Singleton everywhere', 'Global state'],
    correctAnswer: 'BLoC or MVVM',
  ),
  // 169
  Question(
    questionText: 'Which Flutter widget is optimized for showing lists that change dynamically with animations?',
    options: ['AnimatedList', 'ListView', 'ReorderableListView', 'GridView'],
    correctAnswer: 'AnimatedList',
  ),
  // 170
  Question(
    questionText: 'Which technique improves accessibility for visually impaired users in Flutter?',
    options: ['Use descriptive semantics and labels', 'Hide UI elements', 'Increase memory usage', 'Use small fonts'],
    correctAnswer: 'Use descriptive semantics and labels',
  ),
  // 171
  Question(
    questionText: 'Which class helps schedule background work in Flutter apps (platform dependent)?',
    options: ['WorkManager', 'BackgroundService', 'Isolate', 'Timer'],
    correctAnswer: 'WorkManager',
  ),
  // 172
  Question(
    questionText: 'Which practice helps keep widget build methods fast?',
    options: ['Do heavy computation inside build', 'Cache expensive work and use const widgets', 'Use setState repeatedly', 'Use global variables for everything'],
    correctAnswer: 'Cache expensive work and use const widgets',
  ),
  // 173
  Question(
    questionText: 'Which Dart datatype holds key-value pairs and preserves insertion order?',
    options: ['Map', 'HashMap', 'LinkedHashMap (Map)', 'SplayTreeMap'],
    correctAnswer: 'LinkedHashMap (Map)',
  ),
  // 174
  Question(
    questionText: 'Which Flutter widget would you use to create a collapsible toolbar?',
    options: ['SliverAppBar', 'AppBar', 'Toolbar', 'CollapsibleToolbar'],
    correctAnswer: 'SliverAppBar',
  ),
  // 175
  Question(
    questionText: 'Which Flutter property is used to change the cursor style over web hover?',
    options: ['mouseCursor', 'hoverStyle', 'cursorStyle', 'pointerType'],
    correctAnswer: 'mouseCursor',
  ),
  // 176
  Question(
    questionText: 'Which approach is best to handle large images to avoid OOM on mobile?',
    options: ['Load full-size image into memory', 'Use resize/thumbnailing and caching', 'Use multiple copies', 'Use BMP format'],
    correctAnswer: 'Use resize/thumbnailing and caching',
  ),
  // 177
  Question(
    questionText: 'Which Flutter plugin helps detect network connectivity changes?',
    options: ['connectivity_plus', 'http', 'network_info', 'connectivity'],
    correctAnswer: 'connectivity_plus',
  ),
  // 178
  Question(
    questionText: 'Which command bundles a Flutter app for web deployment?',
    options: ['flutter build web', 'flutter build browser', 'flutter web build', 'dart build web'],
    correctAnswer: 'flutter build web',
  ),
  // 179
  Question(
    questionText: 'Which widget property controls whether a widget should repaint when its parent changes?',
    options: ['shouldRepaint (CustomPainter)', 'repaintOnParentChange', 'isRebuildAllowed', 'autoRepaint'],
    correctAnswer: 'shouldRepaint (CustomPainter)',
  ),
  // 180
  Question(
    questionText: 'Which approach helps debug platform channels communication?',
    options: ['Print logs on both sides and use platform-specific debuggers', 'Rely on hot reload only', 'Use only Dart code', 'Never test platform channels'],
    correctAnswer: 'Print logs on both sides and use platform-specific debuggers',
  ),
  // 181
  Question(
    questionText: 'Which Flutter widget can help create responsive layouts by reporting constraints?',
    options: ['LayoutBuilder', 'MediaQuery', 'ConstrainedBox', 'Flexible'],
    correctAnswer: 'LayoutBuilder',
  ),
  // 182
  Question(
    questionText: 'Which practice improves app startup time in Flutter?',
    options: ['Large synchronous initialization in main', 'Defer heavy work using async or isolates', 'Preload all assets', 'Always use debug mode'],
    correctAnswer: 'Defer heavy work using async or isolates',
  ),
  // 183
  Question(
    questionText: 'Which Flutter API allows scheduling microtasks to run after current event loop?',
    options: ['Future.microtask', 'Timer', 'compute', 'WidgetsBinding.instance.addPostFrameCallback'],
    correctAnswer: 'Future.microtask',
  ),
  // 184
  Question(
    questionText: 'Which Dart operator checks for equality and type (identical)?',
    options: ['==', '===', 'identical()', 'is'],
    correctAnswer: 'identical()',
  ),
  // 185
  Question(
    questionText: 'Which Flutter widget would you use for building a timeline or stepper UI?',
    options: ['Stepper', 'Timeline', 'ListView', 'StepperWidget'],
    correctAnswer: 'Stepper',
  ),
  // 186
  Question(
    questionText: 'Which approach helps reduce app size by excluding unused locales or assets?',
    options: ['Obfuscate code', 'Use --no-tree-shake', 'Remove unused assets and configure build flavors', 'Include everything'],
    correctAnswer: 'Remove unused assets and configure build flavors',
  ),
  // 187
  Question(
    questionText: 'Which Dart tool helps format code according to style guidelines?',
    options: ['dartfmt', 'dart format', 'flutter format', 'pub format'],
    correctAnswer: 'dart format',
  ),
  // 188
  Question(
    questionText: 'Which Flutter API is helpful to localize strings in an app?',
    options: ['Intl (package:intl)', 'localize_flutter', 'i18n_flutter', 'translate_api'],
    correctAnswer: 'Intl (package:intl)',
  ),
  // 189
  Question(
    questionText: 'Which approach is best for long-running background tasks on Android from Flutter?',
    options: ['Foreground service via platform code', 'Use UI timers', 'Run on main thread', 'Use heavy synchronous loops'],
    correctAnswer: 'Foreground service via platform code',
  ),
  // 190
  Question(
    questionText: 'Which Flutter widget is used to detect size and position of its child after layout?',
    options: ['LayoutBuilder', 'RenderObject', 'GlobalKey with context', 'MediaQuery'],
    correctAnswer: 'GlobalKey with context',
  ),
  // 191
  Question(
    questionText: 'Which animation widget animates implicit opacity changes?',
    options: ['AnimatedOpacity', 'FadeTransition', 'Opacity', 'AnimatedContainer'],
    correctAnswer: 'AnimatedOpacity',
  ),
  // 192
  Question(
    questionText: 'Which Dart collection class is unordered and guarantees unique items?',
    options: ['List', 'Map', 'Set', 'Queue'],
    correctAnswer: 'Set',
  ),
  // 193
  Question(
    questionText: 'Which debugging mode provides the fastest execution but no debugging support?',
    options: ['Debug', 'Profile', 'Release', 'Test'],
    correctAnswer: 'Release',
  ),
  // 194
  Question(
    questionText: 'Which approach allows you to write a single codebase for mobile, web, and desktop with Flutter?',
    options: ['Use conditional imports and platform-aware UI', 'Write separate apps for each', 'Use only web widgets', 'Use only mobile widgets'],
    correctAnswer: 'Use conditional imports and platform-aware UI',
  ),
  // 195
  Question(
    questionText: 'Which package provides simplified state management for simple apps using ChangeNotifier?',
    options: ['Provider', 'Riverpod', 'Bloc', 'ScopedModel'],
    correctAnswer: 'Provider',
  ),
  // 196
  Question(
    questionText: 'Which widget property makes text wrap to next line when it exceeds width?',
    options: ['softWrap', 'overflow', 'maxLines', 'textScaleFactor'],
    correctAnswer: 'softWrap',
  ),
  // 197
  Question(
    questionText: 'Which Dart feature helps you run expensive synchronous functions off the main thread?',
    options: ['Future', 'compute (isolates helper)', 'async/await', 'Streams'],
    correctAnswer: 'compute (isolates helper)',
  ),
  // 198
  Question(
    questionText: 'Which Flutter component helps you create adaptive navigation for large screens on desktop?',
    options: ['NavigationRail', 'BottomNavigationBar', 'Drawer', 'TabBar'],
    correctAnswer: 'NavigationRail',
  ),
  // 199
  Question(
    questionText: 'Which approach ensures UI is accessible for screen readers in Flutter?',
    options: ['Use Semantics and readable labels', 'Hide text', 'Use images only', 'Disable accessibility'],
    correctAnswer: 'Use Semantics and readable labels',
  ),
  // 200
  Question(
    questionText: 'Which practice helps maintain performance for lists with complex child widgets?',
    options: ['Use ListView.builder and const widgets where possible', 'Use a single large Column', 'Rebuild everything on setState', 'Use heavy nested build methods'],
    correctAnswer: 'Use ListView.builder and const widgets where possible',
  ),
];
