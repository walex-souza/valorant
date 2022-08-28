import 'abilities_model.dart';
import 'role_model.dart';
import 'voiceline_model.dart';

class AgentModel {
  String? uuid;
  String? displayName;
  String? description;
  String? developerName;
  List? characterTags;
  String? displayIcon;
  String? displayIconSmall;
  String? fullPortrait;
  String? killfeedPortrait;
  String? background;
  List? backgroundGradientColors;
  String? assetPath;
  bool? isFullPortraitRightFacing;
  bool? isPlayableCharacter;
  bool? isAvailableForTest;
  bool? isBaseContent;
  Role? role;
  List<Abilities>? abilities;
  VoiceLine? voiceLine;

  AgentModel(
      {this.uuid,
      this.displayName,
      this.description,
      this.developerName,
      this.characterTags,
      this.displayIcon,
      this.displayIconSmall,
      this.fullPortrait,
      this.killfeedPortrait,
      this.background,
      this.backgroundGradientColors,
      this.assetPath,
      this.isFullPortraitRightFacing,
      this.isPlayableCharacter,
      this.isAvailableForTest,
      this.isBaseContent,
      this.role,
      this.abilities,
      this.voiceLine});

  AgentModel.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    displayName = json['displayName'];
    description = json['description'];
    developerName = json['developerName'];
    characterTags = json['characterTags'];
    displayIcon = json['displayIcon'];
    displayIconSmall = json['displayIconSmall'];
    fullPortrait = json['fullPortrait'];
    killfeedPortrait = json['killfeedPortrait'];
    background = json['background'];
    backgroundGradientColors = json['backgroundGradientColors'];
    assetPath = json['assetPath'];
    isFullPortraitRightFacing = json['isFullPortraitRightFacing'];
    isPlayableCharacter = json['isPlayableCharacter'];
    isAvailableForTest = json['isAvailableForTest'];
    isBaseContent = json['isBaseContent'];
    role = json['role'] != null ? Role.fromJson(json['role']) : null;
    if (json['abilities'] != null) {
      abilities = <Abilities>[];
      json['abilities'].forEach((v) {
        abilities!.add(Abilities.fromJson(v));
      });
    }
    voiceLine = json['voiceLine'] != null
        ? VoiceLine.fromJson(json['voiceLine'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uuid'] = uuid;
    data['displayName'] = displayName;
    data['description'] = description;
    data['developerName'] = developerName;
    data['characterTags'] = characterTags;
    data['displayIcon'] = displayIcon;
    data['displayIconSmall'] = displayIconSmall;
    data['fullPortrait'] = fullPortrait;
    data['killfeedPortrait'] = killfeedPortrait;
    data['background'] = background;
    data['backgroundGradientColors'] = backgroundGradientColors;
    data['assetPath'] = assetPath;
    data['isFullPortraitRightFacing'] = isFullPortraitRightFacing;
    data['isPlayableCharacter'] = isPlayableCharacter;
    data['isAvailableForTest'] = isAvailableForTest;
    data['isBaseContent'] = isBaseContent;
    if (role != null) {
      data['role'] = role!.toJson();
    }
    if (abilities != null) {
      data['abilities'] = abilities!.map((v) => v.toJson()).toList();
    }
    if (voiceLine != null) {
      data['voiceLine'] = voiceLine!.toJson();
    }
    return data;
  }
}
