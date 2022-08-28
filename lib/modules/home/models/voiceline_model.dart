import 'medialist_model.dart';

class VoiceLine {
  double? minDuration;
  double? maxDuration;
  List<MediaListModel>? mediaList;

  VoiceLine({this.minDuration, this.maxDuration, this.mediaList});

  VoiceLine.fromJson(Map<String, dynamic> json) {
    minDuration = json['minDuration'];
    maxDuration = json['maxDuration'];
    if (json['mediaList'] != null) {
      mediaList = <MediaListModel>[];
      json['mediaList'].forEach((v) {
        mediaList!.add(MediaListModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['minDuration'] = minDuration;
    data['maxDuration'] = maxDuration;
    if (mediaList != null) {
      data['mediaList'] = mediaList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
