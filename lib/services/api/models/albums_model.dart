class comments {

  int? id;
  String? name;
  String? email;

  comments({this.id, this.name, this.email});

  comments.fromJson(Map<String, dynamic> json) {

    id = json['id'];
    name = json['name'];
    email = json['email'];

  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;

    return data;
  }
}