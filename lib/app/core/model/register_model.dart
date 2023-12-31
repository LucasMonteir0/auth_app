class RegisterModel {
  final String firstName;
  final String lastName;
  final String username;
  final String email;
  final String password;

  RegisterModel({
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'username': username,
      'email': email,
      'password': password,
    };
  }
}