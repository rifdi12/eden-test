import 'package:eden_farm/view/home/home_create/home_create_form.dart';
import 'package:flutter/material.dart';

class HomeCreateView extends StatelessWidget {
  const HomeCreateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tambah data"),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: const [
            HomeCreateForm(),
          ],
        ),
      )),
    );
  }
}
