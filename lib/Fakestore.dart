class DataModel {
  int? id;
  String? title;
  dynamic price;
  String? description;
  String? category;
  String? image;
  Rating? rating;
  DataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price'];
    description = json['description'];
    category = json['category'];
    title = json['title'];
    image = json['image'];
    rating =  Rating.fromJson(json['rating']);
  }

}

class Rating {
  dynamic rate;
  int? count;

  Rating.fromJson(Map<String, dynamic> json) {
    rate = json['rate'];
    count = json['count'];
  }
  }

