import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class EstatisticasCardModel {
  final IconData? icon;
  final String? titulo;

  EstatisticasCardModel({
    this.icon,
    this.titulo,
  });

  List<EstatisticasCardModel> gerarEstatisticas() {
    return [
      EstatisticasCardModel(
        icon: IconsaxPlusLinear.box,
        titulo: '920\nProdutos',
      ),
      EstatisticasCardModel(
        icon: IconsaxPlusLinear.chart_1,
        titulo: '52\nVendidos',
      ),
      EstatisticasCardModel(
        icon: IconsaxPlusLinear.backward_10_seconds,
        titulo: 'R\$ 9Mil\nLucro',
      ),
    ];
  }
}
