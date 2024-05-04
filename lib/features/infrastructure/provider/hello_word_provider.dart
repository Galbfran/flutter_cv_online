import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'hello_word_provider.g.dart';

@riverpod
String helloWorld(HelloWorldRef ref) {
  return 'Hello world';
}
