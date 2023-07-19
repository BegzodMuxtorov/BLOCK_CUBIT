import 'package:about_cubit/cubit/user/user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: Text("BLOC/CUBIT"),
        ),
        body: Builder(
          builder: (context) {
            if (state is UserLoadingState) {
              return Center(
                child: CircularProgressIndicator.adaptive(),
              );
            } else if (state is UserErrorState) {
              return Center(
                child: Text(state.errorMessage.toString()),
              );
            } else if (state is UserCompleteState) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(state.user[index].name.toString()),
                  );
                },
                itemCount: state.user.length,
              );
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}
