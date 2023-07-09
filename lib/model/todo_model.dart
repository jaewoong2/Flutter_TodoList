class TodoModel {
  //player 중인지를 확인할 값
  late bool isCompleted = false;
  late String todo = '';
  late int id = 0;

  TodoModel({
    required this.isCompleted,
    required this.todo,
    required this.id,
  });
}
