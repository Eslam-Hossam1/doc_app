
import 'package:doc_app/core/api/api_error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_result.freezed.dart';
@Freezed()
sealed class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T data) = ApiSuccess<T>;

  const factory ApiResult.failure(ErrorHandler errorHandler) = ApiFailure<T>;

}
