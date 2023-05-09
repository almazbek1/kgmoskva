import 'package:mobi_kg/bloc/adminBloc/admin_event.dart';
import 'package:mobi_kg/bloc/adminBloc/admin_state.dart';
import 'package:mobi_kg/data/models/user_model.dart';
import 'package:mobi_kg/data/repository/auth_repo.dart';
import 'package:mobi_kg/data/repository/status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminBloc extends Bloc<AdminEvent, AdminState> {
  final AuthRepo repo;
  List<UserModel>? users;
  List<UserModel>? usersSearch;

  AdminBloc(this.repo) : super(AdminInitialState()) {
    on<AdminGetUsers>(getUsers);
    on<AdminAddBalanceState>(addBalance);
    on<AdminSearchEvent>(searchByUser);
  }

  getUsers(event, emit) async {
    emit(AdminLoadingState());
    users = await repo.getUsers();
    if (users != null) {
      if (users!.isNotEmpty) {
        emit(AdminLoadedState(users!));
      } else {
        emit(AdminEmptyState());
      }
    } else {
      emit(AdminErrorState());
    }
  }

  addBalance(event, emit) async {
    emit(AdminLoadingState());
    final pushResult =
    await repo.pushAds(uid: event.uid, addBalance: event.balance);
    if (pushResult == Status.successful) {
      users = await repo.getUsers();
      if (users != null) {
        if (users!.isNotEmpty) {
          emit(AdminLoadedState(users!));
        } else {
          emit(AdminEmptyState());
        }
      } else {
        emit(AdminErrorState());
      }
    } else {
      emit(AdminErrorState());
    }
  }

  searchByUser(event, emit)async{
    emit(AdminLoadingState());
    usersSearch = [];
    for(var user in users??[]){
      if(user.name.toLowerCase().contains(event.searchText.toString().trim())||
          user.email.toLowerCase().contains(event.searchText.toString().trim())){
        usersSearch!.add(user);
      }
    }
    if (usersSearch != null) {
      if (usersSearch!.isNotEmpty) {
        emit(AdminLoadedState(usersSearch!));
      } else {
        if(event.searchText.isEmpty){
          emit(AdminLoadedState(users??[]));
        }else{
          emit(AdminLoadedState(usersSearch??[]));

        }
      }
    } else {
      emit(AdminErrorState());
    }
  }
}
