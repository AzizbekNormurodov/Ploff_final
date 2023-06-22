
class ProductResponse {
  ProductResponse({
    this.category,
    this.count,
  });

  ProductResponse.fromJson(Map<String, dynamic> json) {
    if (json['categories'] != null) {
      category = [];
      json['categories'].forEach((v) {
        category?.add(Categories.fromJson(v));
      });
    }
    count = json['count'];
  }

  List<Categories>? category;
  String? count;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (category != null) {
      map['categories'] = category?.map((v) => v.toJson()).toList();
    }
    map['count'] = count;
    return map;
  }

}

class Categories {
  Categories({
    this.id,
    this.slug,
    this.parentId,
    this.image,
    this.categoryDescription,
    this.categoryTitle,
    this.orderNo,
    this.active,
    this.products,
  });

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    parentId = json['parent_id'];
    image = json['image'];
    categoryDescription = json['description'] != null
        ? CategoryDescription.fromJson(json['description'])
        : null;
    categoryTitle =
    json['title'] != null ? CategoryTitle.fromJson(json['title']) : null;
    orderNo = json['order_no'];
    active = json['active'];
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(Products.fromJson(v));
      });
    }
  }

  String? id;
  String? slug;
  String? parentId;
  String? image;
  CategoryDescription? categoryDescription;
  CategoryTitle? categoryTitle;
  String? orderNo;
  bool? active;
  List<Products>? products;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['slug'] = slug;
    map['parent_id'] = parentId;
    map['image'] = image;
    if (categoryDescription != null) {
      map['description'] = categoryDescription?.toJson();
    }
    if (categoryTitle != null) {
      map['title'] = categoryTitle?.toJson();
    }
    map['order_no'] = orderNo;
    map['active'] = active;
    if (products != null) {
      map['products'] = products?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Products {
  Products({
    this.id,
    this.outPrice,
    this.currency,
    this.string,
    this.type,
    this.categories,
    this.brandId,
    this.rateId,
    this.productImage,
    this.activeInMenu,
    this.hasModifier,
    this.fromTime,
    this.toTime,
    this.offAlways,
    this.gallery,
    this.productTitle,
    this.productDescription,
    this.active,
    this.iikoId,
    this.jowiId,
    this.discounts,
  });


  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    outPrice = json['out_price'];
    currency = json['currency'];
    string = json['string'];
    type = json['type'];
    categories =
    json['categories'] != null ? json['categories'].cast<String>() : [];
    brandId = json['brand_id'];
    rateId = json['rate_id'];
    productImage = json['image'];
    activeInMenu = json['active_in_menu'];
    hasModifier = json['has_modifier'];
    fromTime = json['from_time'];
    toTime = json['to_time'];
    offAlways = json['off_always'];
    gallery = json['gallery'];
    productTitle =
    json['title'] != null ? ProductTitle.fromJson(json['title']) : null;
    productDescription = json['description'] != null
        ? ProductDescription.fromJson(json['description'])
        : null;
    active = json['active'];
    iikoId = json['iiko_id'];
    jowiId = json['jowi_id'];
    discounts = json['discounts'];
  }

  String? id;
  num? outPrice;
  String? currency;
  String? string;
  String? type;
  List<String>? categories;
  String? brandId;
  String? rateId;
  String? productImage;
  bool? activeInMenu;
  bool? hasModifier;
  String? fromTime;
  String? toTime;
  bool? offAlways;
  dynamic gallery;
  ProductTitle? productTitle;
  ProductDescription? productDescription;
  bool? active;
  String? iikoId;
  String? jowiId;
  dynamic discounts;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['out_price'] = outPrice;
    map['currency'] = currency;
    map['string'] = string;
    map['type'] = type;
    map['categories'] = categories;
    map['brand_id'] = brandId;
    map['rate_id'] = rateId;
    map['image'] = productImage;
    map['active_in_menu'] = activeInMenu;
    map['has_modifier'] = hasModifier;
    map['from_time'] = fromTime;
    map['to_time'] = toTime;
    map['off_always'] = offAlways;
    map['gallery'] = gallery;
    if (productTitle != null) {
      map['title'] = productTitle?.toJson();
    }
    if (productDescription != null) {
      map['description'] = productDescription?.toJson();
    }
    map['active'] = active;
    map['iiko_id'] = iikoId;
    map['jowi_id'] = jowiId;
    map['discounts'] = discounts;
    return map;
  }
}

class CategoryDescription {
  CategoryDescription({
    this.uz,
    this.ru,
    this.en,
  });

  CategoryDescription.fromJson(Map<String, dynamic> json) {
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

class CategoryTitle {
  CategoryTitle({
    this.uz,
    this.ru,
    this.en,
  });

  CategoryTitle.fromJson(Map<String, dynamic> json) {
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

class ProductTitle {
  ProductTitle({
    this.uz,
    this.ru,
    this.en,
  });

  ProductTitle.fromJson(dynamic json) {
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

class ProductDescription {
  ProductDescription({
    this.uz,
    this.ru,
    this.en,
  });

  ProductDescription.fromJson(dynamic json) {
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
