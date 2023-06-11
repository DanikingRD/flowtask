/// Represents an interface for Authentication.
abstract class IAuthRepository {
  const IAuthRepository();

  Future<void> register();

  Future<void> signIn();

  Future<void> signOut();
}
