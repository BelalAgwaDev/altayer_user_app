
import 'package:json_annotation/json_annotation.dart';
part 'sign_up_response.g.dart';

@JsonSerializable()
class RegisterResponse {
  bool? status;
  String? message;
  String? token;
  DataRegisterResponse? data;

  RegisterResponse({this.status, this.message, this.token, this.data});


  
    //from json
    factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);


  //to json
  Map<String, dynamic> toJson() => _$RegisterResponseToJson(this);

 
}


@JsonSerializable()
class DataRegisterResponse {
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

  DataRegisterResponse(
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
    factory DataRegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$DataRegisterResponseFromJson(json);


  //to json
  Map<String, dynamic> toJson() => _$DataRegisterResponseToJson(this);


  
}