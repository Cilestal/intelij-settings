import 'package:json_annotation/json_annotation.dart';
import 'package:kids_mobile_app/data/data_source/remote/dto/json_serializable.dart';

part '${NAME}.g.dart';
#set($CLASS_NAME = ${StringUtils.removeAndHump($NAME, "_")})
#set($CLASS_NAME_S = "$$CLASS_NAME")
@JsonSerializable()
class ${CLASS_NAME} implements AbstractJsonSerializable {
  ${CLASS_NAME} ();

  factory ${CLASS_NAME}.fromJson(Map<String, dynamic> json) => _${CLASS_NAME_S}FromJson(json);

  @override
  Map<String, dynamic> toJson() => _${CLASS_NAME_S}ToJson(this);
}