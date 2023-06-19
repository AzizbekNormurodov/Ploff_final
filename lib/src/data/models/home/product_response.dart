class ProductResponse {
  ProductResponse({
      this.products, 
      this.count,});

  ProductResponse.fromJson(dynamic json) {
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(Products.fromJson(v));
      });
    }
    count = json['count'];
  }
  List<Products>? products;
  String? count;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (products != null) {
      map['products'] = products?.map((v) => v.toJson()).toList();
    }
    map['count'] = count;
    return map;
  }

}

class Products {
  Products({
      this.id, 
      this.name, 
      this.slug, 
      this.categoryId, 
      this.description, 
      this.price, 
      this.orderNo, 
      this.image, 
      this.title, 
      this.descriptionV2, 
      this.hasModifier,});

  Products.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    categoryId = json['category_id'];
    description = json['description'];
    price = json['price'];
    orderNo = json['order_no'];
    image = json['image'];
    title = json['title'] != null ? Title.fromJson(json['title']) : null;
    descriptionV2 = json['description_v2'] != null ? DescriptionV2.fromJson(json['description_v2']) : null;
    hasModifier = json['has_modifier'];
  }
  String? id;
  String? name;
  String? slug;
  String? categoryId;
  String? description;
  String? price;
  String? orderNo;
  String? image;
  Title? title;
  DescriptionV2? descriptionV2;
  bool? hasModifier;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['category_id'] = categoryId;
    map['description'] = description;
    map['price'] = price;
    map['order_no'] = orderNo;
    map['image'] = image;
    if (title != null) {
      map['title'] = title?.toJson();
    }
    if (descriptionV2 != null) {
      map['description_v2'] = descriptionV2?.toJson();
    }
    map['has_modifier'] = hasModifier;
    return map;
  }

}

class DescriptionV2 {
  DescriptionV2({
      this.uz, 
      this.ru, 
      this.en,});

  DescriptionV2.fromJson(dynamic json) {
    uz = json['uz'];
    ru = json['ru'];
    en = json['en'];
  }
  String? uz;
  String? ru;
  String? en;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uz'] = uz;
    map['ru'] = ru;
    map['en'] = en;
    return map;
  }

}

class Title {
  Title({
      this.uz, 
      this.ru, 
      this.en,});

  Title.fromJson(dynamic json) {
    uz = json['uz'];
    ru = json['ru'];
    en = json['en'];
  }
  String? uz;
  String? ru;
  String? en;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uz'] = uz;
    map['ru'] = ru;
    map['en'] = en;
    return map;
  }

}