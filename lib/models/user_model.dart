class UserModel {
  int? id;
  String? username;
  String? email;
  String? cin;
  String? cne;
  String? nom;
  String? prenom;
  String? dateDeNaissance;
  String? telephone;
  String? nbApogee;
  String? address;
  String? password;

  UserModel(
      {this.id,
      this.username,
      this.email,
      this.cin,
      this.cne,
      this.nom,
      this.prenom,
      this.dateDeNaissance,
      this.telephone,
      this.nbApogee,
      this.address,
      this.password});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
    cin = json['cin'];
    cne = json['cne'];
    nom = json['nom'];
    prenom = json['prenom'];
    dateDeNaissance = json['dateDeNaissance'];
    telephone = json['telephone'];
    nbApogee = json['nbApogee'];
    address = json['address'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['username'] = username;
    data['email'] = email;
    data['cin'] = cin;
    data['cne'] = cne;
    data['nom'] = nom;
    data['prenom'] = prenom;
    data['dateDeNaissance'] = dateDeNaissance;
    data['telephone'] = telephone;
    data['nbApogee'] = nbApogee;
    data['address'] = address;
    data['password'] = password;
    return data;
  }
}
