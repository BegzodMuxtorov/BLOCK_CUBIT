import 'package:about_cubit/model/user_model.dart';
import 'package:about_cubit/service/user_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'user_cubit.dart';
abstract class UserState extends Equatable {
  const UserState();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class UserInitialState extends UserState {
  const UserInitialState();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class UserLoadingState extends UserState {
  const UserLoadingState();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class UserErrorState extends UserState {
  String errorMessage;
  UserErrorState(this.errorMessage);
  @override
  // TODO: implement props
  List<Object?> get props => [errorMessage];
}

class UserCompleteState extends UserState {
  List <UserModel> user;
  UserCompleteState(this.user);
  @override
  // TODO: implement props
  List<Object?> get props => [user];
}
