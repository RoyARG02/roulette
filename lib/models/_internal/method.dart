/// An weapon or a method that can be used to eliminate a target
/// in the level.
///
/// The [name] stores the name or method of the elimination.
class Method {
  /// The name or description of the method of the weapon/method.
  final String name;

  /// An weapon or a method to eliminate the target.
  Method({this.name});

  @override
  String toString() => "Method: ${this.name}";
}
