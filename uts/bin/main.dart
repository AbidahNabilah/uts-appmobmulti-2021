import 'dart:io';

import 'package:uts/KetuaHima.dart';
import 'package:uts/mahasiswa.dart';


void main(List<String> arguments) {
  KetuaHima ketuaHima;
  var list_ketuahima = [];
  String jawab;
  var ulang = true;

  print("Input Biodata Ketua Hima");
  ketuaHima = KetuaHima();

  while (ulang) {
    stdout.write('Nama: ');
    ketuaHima.nama = stdin.readLineSync();
    stdout.write('Nrp: ');
    ketuaHima.nrp = int.tryParse(stdin.readLineSync());
    stdout.write('Jurusan: ');
    ketuaHima.jurusan = stdin.readLineSync();

    list_ketuahima.add(ketuaHima.toMap());

    stdout.write('Berhenti input data? Y|T : ');
    jawab = stdin.readLineSync();
    (jawab == 'Y') ? ulang = false : ulang = true;
  }

  print('===================================================================');
  print('Nama\t\t Nrp\t\t Jurusan\t\t');
  print('===================================================================');
  for (var mhs in list_ketuahima) {
    print('${mhs['nama']}\t\t ${mhs['nrp']}\t\t ${mhs['jurusan']}');
  }
  print('===================================================================');
}