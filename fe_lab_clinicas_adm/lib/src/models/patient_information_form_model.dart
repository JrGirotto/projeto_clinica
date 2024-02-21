import 'package:fe_lab_clinicas_adm/src/models/patient_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patient_information_form_model.g.dart';

@JsonEnum(valueField: 'id')
enum PatientInformationFormStatus {
  waiting('Waiting'),
  checkIn('Checked In'),
  beingAttended('Being Attended');

  final String id;
  const PatientInformationFormStatus(this.id);
}

@JsonSerializable()
class PatientInformationFormModel {
  PatientInformationFormModel({
    required this.id,
    required this.patientModel,
    required this.healthInsuranceCard,
    required this.medicalOrders,
    required this.password,
    required this.dataCreated,
    required this.status,
  });

  final String id;
  final PatientModel patientModel;
  @JsonKey(name: 'health_insurance_card')
  final String healthInsuranceCard;
  @JsonKey(name: 'medical_order')
  final List<String> medicalOrders;
  final String password;
  @JsonKey(name: 'data_created')
  final DateTime dataCreated;
  final PatientInformationFormStatus status;

  factory PatientInformationFormModel.fromJson(Map<String, dynamic> json) =>
      _$PatientInformationFormModelFromJson(json);

  Map<String, dynamic> toJson() => _$PatientInformationFormModelToJson(this);
}
