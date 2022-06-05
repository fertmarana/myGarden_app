class myPlants {
  final List<plantsInfo> plants_list;

  myPlants({required this.plants_list});


  factory  myPlants.fromJson(Map<String, dynamic> parsedJson) {

    var list = parsedJson['myplants'] as List;
    List<plantsInfo> plantsList = list.map((i) =>  plantsInfo.fromJson(i)).toList();

    return new myPlants(plants_list: plantsList);
  }

  Map<String, dynamic> toJson() {
    List<Map<String,dynamic>> plants_list_update = plants_list.map((e) => e.toJson()).toList();
    return {'myplants': plants_list_update };
  }


}

class plantsInfo{
  String id;
  String name;
  String description;
  String image;

  plantsInfo({required this.id,required this.name,required this.description,required this.image});

  factory plantsInfo.fromJson(Map<String, dynamic> json){
    return plantsInfo(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      image: json['image-link'] as String,
    );
  }

  Map<String, dynamic> toJson() =>
      {
        'id': id,
        'name': name,
        'description': description,
        'image-link': image,
      };

}