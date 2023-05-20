import 'package:student_marksheet_generator_exam/view/modals/global_varibal.dart';

class marcks {
  late int? Mathsmo;
  late int? Englishmo;
  late int? Biologymo;
  late int? Physicsmo;
  late int? Chemistrymo;

  sum() {
    return allGlobalvar.totalmarcks =
        Mathsmo! + Englishmo! + Biologymo! + Physicsmo! + Chemistrymo!;
  }

  marcks({
    required this.Mathsmo,
    required this.Englishmo,
    required this.Biologymo,
    required this.Physicsmo,
    required this.Chemistrymo,
  });
}

class detail {
  late String? name;
  late String? id;
  late String? standard;
  late String? classof;

  detail({
    this.name,
    this.id,
    this.standard,
    this.classof,
  });
}
