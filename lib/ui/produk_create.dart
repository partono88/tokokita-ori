import 'package:flutter/material.dart';

class ProdukCreate extends StatefulWidget {
  @override
  _ProdukCreateState createState() => _ProdukCreateState();
}

class _ProdukCreateState extends State<ProdukCreate> {
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  final _kodeProdukTextboxController = TextEditingController();
  final _namaProdukTextboxController = TextEditingController();
  final _hargaProdukTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tambah Produk')),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  _kodeProdukTextField(),
                  _namaProdukTextField(),
                  _hargaProdukTextField(),
                  _buttonSimpan()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  //Membuat Textbox Kode Produk
  Widget _kodeProdukTextField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Kode Produk"),
      keyboardType: TextInputType.text,
      controller: _kodeProdukTextboxController,
      validator: (value) {
        if (value.isEmpty) {
          return "Kode Produk harus diisi";
        }
        return null;
      },
    );
  }

  //Membuat Textbox Nama Produk
  Widget _namaProdukTextField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Nama Produk"),
      keyboardType: TextInputType.text,
      controller: _namaProdukTextboxController,
      validator: (value) {
        if (value.isEmpty) {
          return "Nama Produk harus diisi";
        }
        return null;
      },
    );
  }

  //Membuat Textbox Harga Produk
  Widget _hargaProdukTextField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Harga"),
      keyboardType: TextInputType.number,
      controller: _hargaProdukTextboxController,
      validator: (value) {
        if (value.isEmpty) {
          return "Harga harus diisi";
        }
        return null;
      },
    );
  }

  //Membuat Tombol Simpan
  Widget _buttonSimpan() {
    return ElevatedButton(
        child: Text("Simpan"),
        onPressed: () {
          var validate = _formKey.currentState.validate();
        });
  }
}
