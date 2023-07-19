part of 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitialState()) {
    getUser();
  }

  //Logikalar shu yerda yoziladi
  Future<void> getUser() async {
    emit( const UserLoadingState());
    dynamic response = await UserService.getUser();
    if (response is List<UserModel>) {
       emit(UserCompleteState(response));
    } else {
       emit(UserErrorState(response));
    }
  }
}
