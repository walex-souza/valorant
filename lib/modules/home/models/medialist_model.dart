class MediaListModel {
  int? id;
  String? wwise;
  String? wave;

  MediaListModel({this.id, this.wwise, this.wave});

  MediaListModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    wwise = json['wwise'];
    wave = json['wave'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['wwise'] = wwise;
    data['wave'] = wave;
    return data;
  }
}
