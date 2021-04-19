

import 'package:uts/mahasiswa.dart';

class KetuaHima extends Mahasiswa  {
  String _jurusan, nama;
  int nrp;
  

  getJurusan(String jurusan) {
    _jurusan = jurusan;
  }

  void set jurusan(String jurusan) {
    _jurusan = jurusan;

  }

  Map<String, dynamic> toMap() {
    return {
      'nama': nama,
      'nrp': nrp,
      'jurusan': _jurusan
    };
  }

  
}