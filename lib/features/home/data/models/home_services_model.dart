import 'package:json_annotation/json_annotation.dart';
part 'home_services_model.g.dart';
@JsonSerializable()
class SpicalizationDataResponseModel {
  @JsonKey(name: 'data')
  List<SpicalizationData?>? spicalizationDataList;
  SpicalizationDataResponseModel({this.spicalizationDataList});

  factory SpicalizationDataResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpicalizationDataResponseModelFromJson(json);

  // Map<String, dynamic> toJson() => _$SpicalizationDataResponseModelToJson(this);
}

@JsonSerializable()
class SpicalizationData {
  int? id;
  String? name;
  @JsonKey(name: 'doctors')
  List<Doctor?>? doctorsList;
  SpicalizationData({this.id, this.name, this.doctorsList});
  factory SpicalizationData.fromJson(Map<String, dynamic> json) =>
      _$SpicalizationDataFromJson(json);
}

@JsonSerializable()
class Doctor {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  String? address;
  String? description;
  String? degree;
  @JsonKey(name: 'specialization')
  SpicalizationDoctorData? spicalizationDoctorData;
  @JsonKey(name: 'city')
  DoctorCity? cityData;
  int? appoint_price;
  @JsonKey(name: 'start_time')
  String? startTime;
  @JsonKey(name: 'end_time')
  String? endTime;
  Doctor({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.photo,
    this.gender,
    this.address,
    this.description,
    this.degree,
    this.spicalizationDoctorData,
    this.cityData,
    this.appoint_price,
    this.startTime,
    this.endTime,
  });
  factory Doctor.fromJson(Map<String, dynamic> json) => _$DoctorFromJson(json);
}

@JsonSerializable()
class SpicalizationDoctorData {
  int? id;
  String? name;
  SpicalizationDoctorData({this.id, this.name});
  factory SpicalizationDoctorData.fromJson(Map<String, dynamic> json) =>
      _$SpicalizationDoctorDataFromJson(json);
}
@JsonSerializable()
class DoctorCity{
  int? id;
  String? name;
  DoctorCity({this.id, this.name});
  factory DoctorCity.fromJson(Map<String, dynamic> json) =>
      _$DoctorCityFromJson(json);
}
