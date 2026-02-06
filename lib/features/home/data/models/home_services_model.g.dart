// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_services_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpicalizationDataResponseModel _$SpicalizationDataResponseModelFromJson(
  Map<String, dynamic> json,
) => SpicalizationDataResponseModel(
  spicalizationDataList: (json['data'] as List<dynamic>?)
      ?.map(
        (e) => e == null
            ? null
            : SpicalizationData.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$SpicalizationDataResponseModelToJson(
  SpicalizationDataResponseModel instance,
) => <String, dynamic>{'data': instance.spicalizationDataList};

SpicalizationData _$SpicalizationDataFromJson(Map<String, dynamic> json) =>
    SpicalizationData(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      doctorsList: (json['doctors'] as List<dynamic>?)
          ?.map(
            (e) =>
                e == null ? null : Doctor.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );

Map<String, dynamic> _$SpicalizationDataToJson(SpicalizationData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'doctors': instance.doctorsList,
    };

Doctor _$DoctorFromJson(Map<String, dynamic> json) => Doctor(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  email: json['email'] as String?,
  phone: json['phone'] as String?,
  photo: json['photo'] as String?,
  gender: json['gender'] as String?,
  address: json['address'] as String?,
  description: json['description'] as String?,
  degree: json['degree'] as String?,
  spicalizationDoctorData: json['specialization'] == null
      ? null
      : SpicalizationDoctorData.fromJson(
          json['specialization'] as Map<String, dynamic>,
        ),
  cityData: json['city'] == null
      ? null
      : DoctorCity.fromJson(json['city'] as Map<String, dynamic>),
  appoint_price: (json['appoint_price'] as num?)?.toInt(),
  startTime: json['start_time'] as String?,
  endTime: json['end_time'] as String?,
);

Map<String, dynamic> _$DoctorToJson(Doctor instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'phone': instance.phone,
  'photo': instance.photo,
  'gender': instance.gender,
  'address': instance.address,
  'description': instance.description,
  'degree': instance.degree,
  'specialization': instance.spicalizationDoctorData,
  'city': instance.cityData,
  'appoint_price': instance.appoint_price,
  'start_time': instance.startTime,
  'end_time': instance.endTime,
};

SpicalizationDoctorData _$SpicalizationDoctorDataFromJson(
  Map<String, dynamic> json,
) => SpicalizationDoctorData(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
);

Map<String, dynamic> _$SpicalizationDoctorDataToJson(
  SpicalizationDoctorData instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};

DoctorCity _$DoctorCityFromJson(Map<String, dynamic> json) => DoctorCity(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
);

Map<String, dynamic> _$DoctorCityToJson(DoctorCity instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
