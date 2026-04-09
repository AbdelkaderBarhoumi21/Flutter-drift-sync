class AppApiEndpoints {
  AppApiEndpoints._();
  static const String baseUrl =
      'http://10.0.2.2:3000'; // local host for android emulator

  static const String getTasks = '$baseUrl/tasks';
  static const String createTask = '$baseUrl/tasks';
  static String getTasksById(String id) => '$baseUrl/tasks/$id';
  static String deleteTask(String id) => '$baseUrl/tasks/$id';
  static String updateTask(String id) => '$baseUrl/tasks/$id';
}
