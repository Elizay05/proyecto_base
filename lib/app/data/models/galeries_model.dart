class GaleriesModel {
  final DateTime galery_date;
  final String photo_path;

  GaleriesModel({
    required this.galery_date,
    required this.photo_path,
  });

  factory GaleriesModel.fromJson(Map<String, dynamic> json){
    return GaleriesModel(
      galery_date: json['galery_date'],
      photo_path: json['photo_path'],
    );
  }

  Map<String, dynamic> toJson()=>{
    'galery_date': galery_date,
    'photo_path': photo_path,
  };
}