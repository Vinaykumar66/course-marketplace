import 'dart:async';
import 'package:flutter/material.dart';

// GoRouterRefreshStream: bridges a Stream to Flutter's Listenable interface
// GoRouter expects a Listenable for refreshListenable, not a raw Stream
class GoRouterRefreshStream extends ChangeNotifier {
  late final StreamSubscription<dynamic> _subscription;

  GoRouterRefreshStream(Stream<dynamic> stream) {
    _subscription = stream.listen(
      (_) => notifyListeners(),
    ); // Every stream event triggers GoRouter to re-run redirect
  }

  @override
  void dispose() {
    _subscription.cancel(); // Cancel subscription to prevent memory leaks
    super.dispose();
  }
}
