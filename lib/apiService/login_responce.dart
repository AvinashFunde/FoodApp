
class LoginResponce {
  int? id;
  String? token;


  LoginResponce({this.token, this.id});

  LoginResponce.fromJson(Map<String, dynamic> json) {

    token = json['id'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['token'] = this.token;

    return data;
  }
}