abstract class TaskService {
  /// Classe responsavel por interagir com a fonte dos dados
  getTasks(){
    List.generate(1000, ((index) => 'Texto $index'));
  }
}