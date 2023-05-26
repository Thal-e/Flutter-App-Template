class SignupRequest {
  SignupRequest({
    required this.name,
    required this.gender,
    required this.mobileNumber,
    required this.jerseyNumber,
    required this.dateOfBirth,
  });

  final String name;
  final String gender;
  final int mobileNumber;
  final int jerseyNumber;
  final int dateOfBirth;

  factory SignupRequest.fromJson(Map<String, dynamic> json) => SignupRequest(
        name: json["name"],
        gender: json["gender"],
        mobileNumber: json["mobileNumber"],
        jerseyNumber: json["jerseyNumber"],
        dateOfBirth: json["dateOfBirth"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "gender": gender,
        "mobileNumber": mobileNumber,
        "jerseyNumber": jerseyNumber,
        "dateOfBirth": dateOfBirth,
      };
}
