library;

/// Created by Saeed Fekri on 1/5/2025.
///
/// @email: en.saeedfekri@gmail.com

class Singleton {
  ///Create nullable Object of current class
  static Singleton? instance;

  ///Private Constructor for limiting access
  Singleton._();

  ///Return [Singleton] object
  static Singleton getInstance() => instance ??= Singleton._();
}
