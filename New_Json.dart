class NewJson {
  String? title;
  String? path;
  String? body;
  String? good;
  String? type;
  String? choise;
  String? used;
  String? product;
  String? recolt;

  NewJson(
      {this.title,
      this.path,
      this.body,
      this.good,
      this.type,
      this.choise,
      this.used,
      this.product,
      this.recolt});

  NewJson.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    path = json['path'];
    body = json['body'];
    good = json['good'];
    type = json['type'];
    choise = json['choise'];
    used = json['used'];
    product = json['product'];
    recolt = json['recolt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['path'] = this.path;
    data['body'] = this.body;
    data['good'] = this.good;
    data['type'] = this.type;
    data['choise'] = this.choise;
    data['used'] = this.used;
    data['product'] = this.product;
    data['recolt'] = this.recolt;
    return data;
  }
}
