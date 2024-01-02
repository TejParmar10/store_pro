// ignore_for_file: unnecessary_new

class IceCreamData {
  List<Icecreams>? icecreams;

  IceCreamData({this.icecreams});

  IceCreamData.fromJson(Map<String, dynamic> json) {
    if (json['icecreams'] != null) {
      icecreams = <Icecreams>[];
      json['icecreams'].forEach((v) {
        icecreams!.add(new Icecreams.fromJson(v as Map<String, dynamic>));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.icecreams != null) {
      data['icecreams'] = this.icecreams!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Icecreams {
  int? id;
  String? flavor;
  String? description;
  List<String>? toppings;
  num? price;
  String? image;
  List<Ingredients>? ingredients;

  Icecreams(
      {this.id,
      this.flavor,
      this.description,
      this.toppings,
      this.price,
      this.image,
      this.ingredients});

  Icecreams.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    flavor = json['flavor'] as String?;
    description = json['description'] as String?;
    toppings = json['toppings'].cast<String>() as List<String>;
    price = json['price'] as num?;
    image = json['image'] as String?;
    if (json['ingredients'] != null) {
      ingredients = <Ingredients>[];
      json['ingredients'].forEach((v) {
        ingredients!.add(new Ingredients.fromJson(v as Map<String, dynamic>));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['flavor'] = this.flavor;
    data['description'] = this.description;
    data['toppings'] = this.toppings;
    data['price'] = this.price;
    data['image'] = this.image;
    if (this.ingredients != null) {
      data['ingredients'] = this.ingredients!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'Name=$flavor,Price -$price';
  }
}

class Ingredients {
  String? name;
  String? quantity;

  Ingredients({this.name, this.quantity});

  Ingredients.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String?;
    quantity = json['quantity'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['quantity'] = this.quantity;
    return data;
  }
}
