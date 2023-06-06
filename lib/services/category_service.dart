import '../models/category_model.dart';

class CategoryService {

  List getCategories(){
    return [
          Category(name: 'Imposto', color: 0xFFFF0000),
          Category(name: 'Entrada', color: 0xFF5cc6ba),
          Category(name: 'Pagamento', color: 0xFF6680EC),
        ];
  }
}