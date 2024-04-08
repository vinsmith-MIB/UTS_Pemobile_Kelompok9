class QuizModel {
  int id; // ID dari kuis
  String text; // Teks dari kuis
  String pathAsset; // Path menuju asset terkait kuis
  List<OptionsModel> options; // Daftar opsi untuk kuis
  bool isLocked; // Menandakan apakah kuis terkunci atau tidak
  OptionsModel? selectedWiidgetOption; // Opsi yang dipilih oleh pengguna

  QuizModel({
    required this.id,
    required this.text,
    required this.pathAsset,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption
  });
}

class OptionsModel {
  final String text; // Teks dari opsi
  final bool isCorrect; // Menandakan apakah opsi tersebut benar atau salah

  const OptionsModel({
    required this.text,
    required this.isCorrect,
  });
}
