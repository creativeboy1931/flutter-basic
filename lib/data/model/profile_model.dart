class ProfileModel {
  final String firstName;
  final String profilePicture;
  final int age;
  final String city;
  final String country;
  final String uuid;
  bool isLiked;

  // Constructor
  ProfileModel({
    required this.firstName,
    required this.profilePicture,
    required this.age,
    required this.city,
    required this.country,

    required this.uuid,
    this.isLiked = false,
  });


  // convert json to model
  factory ProfileModel.fromJson(Map<String, dynamic> json) {

    return ProfileModel(
      firstName: json['name']['first'],
      profilePicture: json['picture']['large'],
      age: json['dob']['age'],
      city: json['location']['city'],
      country: json['location']['country'],
      uuid: json['login']['uuid'],
    );
  }
  // convert model to json
  Map<String, dynamic>? toJson() {
    return null;
  }
}