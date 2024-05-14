
import 'package:json_annotation/json_annotation.dart';
part 'new_password_response.g.dart';

@JsonSerializable()
class NewPasswordResponse  {
  bool? status;
  String? message;
  String? token;
  DataNewPasswordResponse ? data;

  NewPasswordResponse ({this.status, this.message, this.token, this.data});


  
    //from json
    factory NewPasswordResponse .fromJson(Map<String, dynamic> json) =>
      _$NewPasswordResponseFromJson(json);


  //to json
  Map<String, dynamic> toJson() => _$NewPasswordResponseToJson(this);

 
}


@JsonSerializable()
class DataNewPasswordResponse  {
  String? name;
  String? email;
  String? password;
  String? phone;
  String? role;
  bool? active;
  String? sId;
  String? createdAt;
  String? updatedAt;
  int? iV;

  DataNewPasswordResponse (
      {this.name,
      this.email,
      this.password,
      this.phone,
      this.role,
      this.active,
      this.sId,
      this.createdAt,
      this.updatedAt,
      this.iV});



      
    //from json
    factory DataNewPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$DataNewPasswordResponseFromJson(json);


  //to json
  Map<String, dynamic> toJson() => _$DataNewPasswordResponseToJson(this);


  
}