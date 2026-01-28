class Disney {
  int? id;
  String? name;
  String? imageUrl;

  Disney({this.id,this.imageUrl,this.name});



  factory Disney.fromJson(Map<String,dynamic> json){
    return Disney(
      id: json["_id"] ?? 0,
      imageUrl: json["imageUrl"] ?? "",
      name: json["name"] ?? "",
    );
  }
}