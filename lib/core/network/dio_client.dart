import 'package:bsmart_mobile/core/utils/secure_storage.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class DioClient {
  late final Dio _dio;
  final Logger _logger = Logger();

  final SecureStorageService _secureStorage = SecureStorageService();

  DioClient() {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.bsmartAPI.com',
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    // Add interceptors in order.. request first, then response
    _dio.interceptors.add(_loggingInterceptor());
    _dio.interceptors.add(_authInterceptor());
    _dio.interceptors.add(_errorInterceptor());
  }

  Dio get dio => _dio;

  /// Logs every request and response for debugging.
  Interceptor _loggingInterceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) {
        _logger.i('REQUEST: ${options.method} ${options.path}');
        _logger.d('Headers: ${options.headers}');
        _logger.d('Body: ${options.data}');
        handler.next(options); // Continue the request
      },
      onResponse: (response, handler) {
        _logger.i(
          'RESPONSE: ${response.statusCode} ${response.requestOptions.path}',
        );
        _logger.d('Body: ${response.data}');
        handler.next(response); // Continue the response
      },
      onError: (error, handler) {
        _logger.e(' ERROR: ${error.message}');
        _logger.e('Path: ${error.requestOptions.path}');
        handler.next(error); // Continue the error
      },
    );
  }

  // Injects the authentication token into every request.
  //reads token from Flutter Secure Storage, but For now i'm using placeholder.
  Interceptor _authInterceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) async {
        //Read token from secure storage
        final token = await _secureStorage.read(key: 'auth_token');
        if (token != null) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        handler.next(options);
      },
    );
  }

  /// Transforms Dio errors into our domain Failure types.
  Interceptor _errorInterceptor() {
    return InterceptorsWrapper(
      onError: (error, handler) {
        // will do ...Map DioExceptionType to Failure classes
        // - connectionTimeout... TimeoutFailure
        // - connectionError... NetworkFailure
        // - badResponse with 401 .. AuthFailure
        // - badResponse with 500.. ServerFailure
        handler.next(error);
      },
    );
  }
}
