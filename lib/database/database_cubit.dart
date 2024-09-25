import 'package:apps/database/local_db.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DatabaseCubit extends Cubit<LocalDB> {
  DatabaseCubit() : super(LocalDB());
}
