class HabitabilityModel {
  String? slot;
  String? displayName;
  String? description;
  String? displayIcon;

  HabitabilityModel(
      {this.slot, this.displayName, this.description, this.displayIcon});

  HabitabilityModel.fromJson(Map<String, dynamic> json) {
    slot = json['slot'];
    displayName = json['displayName'];
    description = json['description'];
    displayIcon = json['displayIcon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['slot'] = slot;
    data['displayName'] = displayName;
    data['description'] = description;
    data['displayIcon'] = displayIcon;
    return data;
  }
}
