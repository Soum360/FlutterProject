class SecJson {
  String? title;
  String? path;
  String? body;

  SecJson({this.title, this.path, this.body});

  SecJson.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    path = json['path'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['path'] = this.path;
    data['body'] = this.body;
    return data;
  }
}
