<p>refrence:https://pub.dev/packages/provider</p>
<p>A wrapper around InheritedWidget to make them easier to use and more reusable.

By using provider instead of manually writing InheritedWidget, you get:

simplified allocation/disposal of resources
lazy-loading
a vastly reduced boilerplate over making a new class every time
devtool friendly – using Provider, the state of your application will be visible in the Flutter devtool
a common way to consume these InheritedWidgets (See Provider.of/Consumer/Selector)
increased scalability for classes with a listening mechanism that grows exponentially in complexity (such as ChangeNotifier, which is O(N) for dispatching notifications).</p>
<p>
    This will add a line like this to your package's pubspec.yaml (and run an implicit flutter pub get):

    dependencies:
    provider: ^6.1.2
    Alternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.

    Import it
    Now in your Dart code, you can use:

    import 'package:provider/provider.dart';
</p>