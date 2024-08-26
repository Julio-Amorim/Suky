import 'package:flutter/material.dart';

class MensagensCardModel {
  final Image? imagem;
  final String? nome;
  final String? assunto;
  final String? data;

  MensagensCardModel({
    this.imagem,
    this.nome,
    this.assunto,
    this.data,
  });

  List<MensagensCardModel> gerarMensagens() {
    return [
      MensagensCardModel(
        imagem: Image.asset("assets/images/foto_perfil_m.png",
            width: 70.0, height: 70.0),
        nome: 'Ana Maria',
        assunto: "Olá, tudo bem?",
        data: "1h",
      ),
      MensagensCardModel(
        imagem: Image.asset("assets/images/foto_perfil_m_3.png",
            width: 70.0, height: 70.0),
        nome: 'Fatima',
        assunto: "Bom dia!",
        data: "3h",
      ),
      MensagensCardModel(
        nome: 'Clara',
        assunto: "Olá",
        data: "Agora",
      ),
    ];
  }
}
