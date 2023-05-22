import 'package:student_marksheet_generator_exam/view/modals/global_varibal.dart';

class marcks {
  late String? Mathsmo;
  late String? Englishmo;
  late String? Biologymo;
  late String? Physicsmo;
  late String? Chemistrymo;

  sum(
      {required Chemistrymo,
      required Physicsmo,
      required Biologymo,
      required Englishmo,
      required Mathsmo}) {
    // return allGlobalvar.totalmarcks =
    //     Mathsmo! + Englishmo! + Biologymo! + Physicsmo! + Chemistrymo!;
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
