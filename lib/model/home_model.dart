class HomeModel {
  String? title;
  String? urlImage;
  String? urlWebview;

  HomeModel({this.title, this.urlImage, this.urlWebview});

  HomeModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    urlImage = json['url_image'];
    urlWebview = json['url_webview'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['url_image'] = urlImage;
    data['url_webview'] = urlWebview;
    return data;
  }
}
