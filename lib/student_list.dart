import 'package:flutter/material.dart';
import 'package:latihan_11pplg2_2024/model_data/siswa.dart';
import 'package:latihan_11pplg2_2024/page_component/adapter_siswa.dart';

class StudentList extends StatefulWidget {
  const StudentList({super.key});

  @override
  State<StudentList> createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
  // data dari database / API
  List<ModelSiswa> dataSiswa = [
    ModelSiswa("Nafi", "Depok"),
    ModelSiswa("Aldi", "Kudus"),
    //...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student List")),
      body: Center(
        child: Container(
          child: ListView.builder(
              itemCount: dataSiswa.length,
              itemBuilder: ((context, index) {
                return AdapterSiswa(modelSiswa: dataSiswa[index]);
              })),
        ),
      ),
    );
  }
}
