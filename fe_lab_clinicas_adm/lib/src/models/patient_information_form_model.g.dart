// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_information_form_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatientInformationFormModel _$PatientInformationFormModelFromJson(
        Map<String, dynamic> json) =>
    PatientInformationFormModel(
      id: json['id'] as String,
      patientModel:
          PatientModel.fromJson(json['patientModel'] as Map<String, dynamic>),
      healthInsuranceCard: json['health_insurance_card'] as String,
      medicalOrders: (json['medical_order'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      password: json['password'] as String,
      dataCreated: DateTime.parse(json['data_created'] as String),
      status:
          $enumDecode(_$PatientInformationFormStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$PatientInformationFormModelToJson(
        PatientInformationFormModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'patientModel': instance.patientModel,
      'health_insurance_card': instance.healthInsuranceCard,
      'medical_order': instance.medicalOrders,
      'password': instance.password,
      'data_created': instance.dataCreated.toIso8601String(),
      'status': _$PatientInformationFormStatusEnumMap[instance.status]!,
    };

const _$PatientInformationFormStatusEnumMap = {
  PatientInformationFormStatus.waiting: 'Waiting',
  PatientInformationFormStatus.checkIn: 'Checked In',
  PatientInformationFormStatus.beingAttended: 'Being Attended',
};
