import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suky/src/components/caroussel/carroussel.dart';
import 'package:suky/src/components/custom_appbar.dart';
import 'package:suky/src/components/custom_bottom_navigation_bar.dart';
import 'package:suky/src/components/custom_icon_button.dart';
import 'package:suky/src/components/custom_text_field.dart';
import 'package:suky/src/models/estatisticas_card_model.dart';
import 'package:suky/src/models/mensagens_card_model.dart';
import 'package:suky/src/pages/em_desenvolvimento.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final RxList<EstatisticasCardModel> _estatisticasCards =
      <EstatisticasCardModel>[].obs;

  List<EstatisticasCardModel> get estatisticasCards => _estatisticasCards;

  final RxList<MensagensCardModel> _mensagensCards = <MensagensCardModel>[].obs;

  List<MensagensCardModel> get mensagensCards => _mensagensCards;

  final RxInt _selectedIndex = 0.obs;

  void _onItemTapped(int index) {
    _selectedIndex.value = index;
  }

  @override
  void initState() {
    super.initState();
    _estatisticasCards.addAll(EstatisticasCardModel().gerarEstatisticas());
    _mensagensCards.addAll(MensagensCardModel().gerarMensagens());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(249, 255, 255, 255),
      appBar: AppAppBar(
        title: 'Juliana Silva',
        subtitle: 'Administradora',
        iconNotification: Icons.notifications_outlined,
        iconColor: const Color.fromARGB(255, 138, 25, 214),
        sizeIcon: 30,
        imagePerfil: Image.asset('assets/images/foto_perfil.png'),
        onMenuPressed: () {
          // Ação ao clicar no ícone de menu
        },
        onNotificationPressed: () {},
      ),
      body: ListView(
        children: [
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  child: CustomTextField(
                    hintText: 'Buscar...',
                    icon: Icons.search_outlined,
                    keyboardType: TextInputType.text,
                  ),
                ),
                const SizedBox(
                    width: 15.0), // Espaçamento entre os campos de texto
                IconIconButton(
                  onPressed: () {
                    // Ação ao clicar no ícone
                  },
                  buttonSize: 60.0,
                  iconColor: Colors.white,
                  icon: Icons.filter_list_outlined,
                  backgroundColor: const Color.fromARGB(255, 138, 25, 214),
                  iconSize: 30.0,
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const EmDesenvolvimento()),
              );
            },
            child: const SizedBox(
              height: 160.0, // Espaçamento entre o campo de texto e o carrossel
              width: double.infinity,
              child: Carroussel(),
            ),
          ),
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
                child: Row(
                  children: [
                    Text(
                      'Estatísticas',
                      style: GoogleFonts.sourceSans3(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 0, 31, 57),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(left: 13.0, right: 16.0),
                child: SizedBox(
                  height: 115.0,
                  width: double.infinity,
                  child: Obx(
                    () => ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: estatisticasCards.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 13.0),
                          child: SizedBox(
                            width: 120.0,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const EmDesenvolvimento()),
                                );
                              },
                              child: Card(
                                color: const Color.fromARGB(255, 138, 25, 214),
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        estatisticasCards[index].icon,
                                        size: 25,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        estatisticasCards[index].titulo ?? '',
                                        style: GoogleFonts.sourceSans3(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, top: 13.0, right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Mensagens recentes',
                      style: GoogleFonts.sourceSans3(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 0, 31, 57),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Ver mais",
                          style: GoogleFonts.sourceSans3(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromARGB(255, 0, 31, 57),
                          ),
                        ),
                        IconIconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const EmDesenvolvimento()),
                            );
                          },
                          buttonSize: 30.0,
                          iconColor: Colors.white,
                          icon: Icons.arrow_forward_ios,
                          backgroundColor:
                              const Color.fromARGB(255, 138, 25, 214),
                          iconSize: 15.0,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50.0)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13.0, right: 16.0),
                child: SizedBox(
                  height: 250.0,
                  child: Obx(
                    () => ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: mensagensCards.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 85.0,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const EmDesenvolvimento()),
                              );
                            },
                            child: Card(
                              color: Colors.white,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: mensagensCards[index].imagem ??
                                        Image.asset(
                                          'assets/images/perfil_padrao.jpg',
                                          width: 70.0,
                                          height: 70.0,
                                        ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            mensagensCards[index].nome ?? '',
                                            style: GoogleFonts.sourceSans3(
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.w600,
                                              color: const Color.fromARGB(
                                                  255, 0, 31, 57),
                                            ),
                                          ),
                                          Text(
                                            mensagensCards[index].assunto ?? '',
                                            style: GoogleFonts.sourceSans3(
                                              fontSize: 15.0,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10.0, right: 8.0),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Text(
                                        mensagensCards[index].data ?? '',
                                        style: GoogleFonts.sourceSans3(
                                          fontSize: 15.0,
                                          color: const Color.fromARGB(
                                              255, 0, 31, 57),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => CustomBottomNavigationBar(
          currentIndex: _selectedIndex.value,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
