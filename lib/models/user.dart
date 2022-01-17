class Users {
  late String? email;
  late String uid;
  late String firstName;
  late String lastName;
  Map<String, dynamic> toMap(Users user) {
    var data = Map<String, dynamic>();

    data["uid"] = user.uid;
    data["firstname"] = user.firstName;
    data['lastName'] = user.lastName;
    data["email"] = user.email;

    return data;
  }
}
