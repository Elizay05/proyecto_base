class PhotosModel{
  final String id_galeries;
  final String photo_path;

  PhotosModel({
    required this.id_galeries,
    required this.photo_path,
  });

  factory PhotosModel.fromJson(Map<String, dynamic> json){
    return PhotosModel(
      id_galeries: json['id_galeries'],
      photo_path: json['photo_path'],
    );
  }

  Map<String, dynamic> toJson() =>{
    'id_galeries': id_galeries,
    'photo_path' : photo_path,
  };
}