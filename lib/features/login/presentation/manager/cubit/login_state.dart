part of 'login_cubit.dart';
@freezed
sealed class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;

  const factory LoginState.loading() = Loading;
  const factory LoginState.success(T data) = Success<T>;
  const factory LoginState.failure({required String error}) = Failure;
}

