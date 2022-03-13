import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:monster_hunter/home/model/monster_hunter_model.dart';
import 'package:monster_hunter/home/service/monster_hunter_service.dart';

class MonsterHunterCubit extends Cubit<MonsterHunterState> {
  MonsterHunterCubit(
    this.service,
  ) : super(MonsterHunterInitial()) {
    fetchData();
  }

  IMonsterService service;
  List<MonsterHunterModel>? model;

  bool isLoading = false;

  Future<void> fetchData() async {
    emit(IsLoading());
    final model = await service.getAllData();
    emit(HomeComplited(
      model: model,
    ));
  }
}

abstract class MonsterHunterState {}

class MonsterHunterInitial extends MonsterHunterState {}

class HomeComplited extends MonsterHunterState {
  List<MonsterHunterModel>? model;
  HomeComplited({
    this.model,
  });
}

class IsLoading extends MonsterHunterState {}

class ErrorData extends MonsterHunterState {}
