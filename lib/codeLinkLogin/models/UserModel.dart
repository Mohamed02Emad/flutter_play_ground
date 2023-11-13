class AuthResponse extends BaseResponse {
  final bool success;
  final UserData data;

  AuthResponse({
    required this.success,
    required this.data,
  }) : super();

  factory AuthResponse.fromJson(Map<String, dynamic> json) {
    return AuthResponse(
      success: json['result'] as bool,
      data: UserData.fromJson(json['data']),
    );
  }
}

class UserData {
  final User user;

  UserData({
    required this.user,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      user: User.fromJson(json['user']),
    );
  }
}

class User {
  final int id;
  final String name;
  final String email;
  final String? imageUrl;
  final String? track;
  final Pivot? pivot;
  final String? bio;
  final String? token;

  User({
    required this.id,
    required this.name,
    required this.email,
    this.imageUrl,
    this.track,
    this.pivot,
    this.bio,
    this.token,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      imageUrl: json['imageUrl'] as String?,
      track: json['track'] as String?,
      pivot: json['pivot'] != null ? Pivot.fromJson(json['pivot']) : null,
      bio: json['bio'] as String?,
      token: json['token'] as String?,
    );
  }
}

class Pivot {
  // Add properties for Pivot if needed
  Pivot();

  factory Pivot.fromJson(Map<String, dynamic> json) {
    return Pivot();
  }
}

class BaseResponse {
  final Errors? errors;
  final String? message;
  final int? status;
  final String? result;
  final String? lastStep;

  BaseResponse({
    this.errors,
    this.message,
    this.status,
    this.result,
    this.lastStep,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) {
    return BaseResponse(
      errors: json['errors'] != null ? Errors.fromJson(json['errors']) : null,
      message: json['message'] as String?,
      status: json['status'] as int?,
      result: json['result'] as String?,
      lastStep: json['last_step'] as String?,
    );
  }
}

class Errors {
  // Add properties for Errors if needed
  Errors();

  factory Errors.fromJson(Map<String, dynamic> json) {
    return Errors();
  }
}
