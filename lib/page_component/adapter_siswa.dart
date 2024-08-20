import 'package:flutter/material.dart';
import 'package:latihan_11pplg2_2024/model_data/siswa.dart';

class AdapterSiswa extends StatelessWidget {
  final ModelSiswa modelSiswa;
  const AdapterSiswa({super.key, required this.modelSiswa});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ini harus pakai re use component, tidak boleh langsung widget
          Text(modelSiswa.nama),
          Text(modelSiswa.alamat)
        ],
      ),
    );
  }
}
