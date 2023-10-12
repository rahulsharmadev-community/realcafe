part of 'userprofile_cubit.dart';

@immutable
abstract class UserProfileState {}

class UserProfileLoading extends UserProfileState {
  UserProfileLoading();
}

class ErrorState extends UserProfileState {
  ErrorState();
}

class UserProfileLoaded extends UserProfileState with EquatableMixin {
  final User user;
  UserProfileLoaded(this.user);

  @override
  // TODO: implement props
  List<User> get props => [user];
}
