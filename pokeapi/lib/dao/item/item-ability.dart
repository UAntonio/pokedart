import 'package:pokeapi/dao/common.dart';

class ItemAbility {
  int id;
  String name;
  List<Descriptions> descriptions;
  List<CommonResult> items;
  List<Names> names;

  ItemAbility({this.id, this.name, this.descriptions, this.items, this.names});

  ItemAbility.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if (json['descriptions'] != null) {
      descriptions = new List<Descriptions>();
      json['descriptions'].forEach((v) {
        descriptions.add(new Descriptions.fromJson(v));
      });
    }
    if (json['items'] != null) {
      items = new List<CommonResult>();
      json['items'].forEach((v) {
        items.add(new CommonResult.fromJson(v));
      });
    }
    if (json['names'] != null) {
      names = new List<Names>();
      json['names'].forEach((v) {
        names.add(new Names.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    if (this.descriptions != null) {
      data['descriptions'] = this.descriptions.map((v) => v.toJson()).toList();
    }
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    if (this.names != null) {
      data['names'] = this.names.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Descriptions {
  String description;
  CommonResult language;

  Descriptions({this.description, this.language});

  Descriptions.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    language = json['language'] != null
        ? new CommonResult.fromJson(json['language'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['description'] = this.description;
    if (this.language != null) {
      data['language'] = this.language.toJson();
    }
    return data;
  }
}

class Names {
  String name;
  CommonResult language;

  Names({this.name, this.language});

  Names.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    language = json['language'] != null
        ? new CommonResult.fromJson(json['language'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    if (this.language != null) {
      data['language'] = this.language.toJson();
    }
    return data;
  }
}