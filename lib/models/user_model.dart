///This is an example of a User model class
class UserVO {
  int? id;
  String? name;
  String? email;
  String? address;

  UserVO({this.id, this.name, this.email, this.address});

  UserVO.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    address = json['address'];
  }
}
