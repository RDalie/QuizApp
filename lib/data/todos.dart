import 'package:quiz_app/models/todo.dart';

final todos = List<Todo>.generate(
    20, (i) => Todo('todo $i', 'This is the description for todo $i'));
