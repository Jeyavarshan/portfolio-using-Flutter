import 'package:flutter_riverpod/flutter_riverpod.dart';

class EncryptedTextNotifier extends StateNotifier<bool> {
  EncryptedTextNotifier() : super(false);

  void triggerEncryption() {
    state = !state; // Toggle encryption effect
  }
}

final encryptedTextNotifierProvider =
    StateNotifierProvider<EncryptedTextNotifier, bool>(
  (ref) => EncryptedTextNotifier(),
);
