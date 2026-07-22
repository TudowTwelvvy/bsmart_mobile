//Base class for all use cases in the application.
//Type Parameters:
/// - Type: The return type
/// - Params: The input parameters
abstract class UseCase<Type, Params> {
  //Call makes a use case callable like a function:
  //final result = await loginUseCase(LoginParams(...));
  Future<Type> call(Params params);
}

//Use this when a use case takes no parameters.

class NoParams {
  const NoParams();
}
