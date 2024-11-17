import 'package:flutter/material.dart';

class LawyerCard extends StatelessWidget {
  const LawyerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                const Image(
                  image: AssetImage('assets/images/ediana.webp'),
                  height: 300,
                  fit: BoxFit.cover,
                ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Ediane Lopes Santos Oliveira',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Sócia Fundadora',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 18.0, left: 8.0),
                            child: Text(
                              'Advogada Graduada pela PUC Minas, Pós Graduada em Gestão Estratégica de Escritórios de Advocacia pela Uniamerica, Pós Graduada em Direito Digital e Gestão da Inovação pela Uniamerica, Consultora Jurídica em Direito Digital. Possui conhecimento em tecnologia aplicada ao direito no desenvolvimento e aprimoramento de produtos digitais voltado ao mercado jurídico com diversos projetos implementados em Softwares e Sistemas Atuou como Sócia Coordenadora no Escritório Fragata e Antunes com ampla experiência Contencioso Estratégico, Gestão de Equipes, Legal Ops, Jurimetria, Análise de Indicadores e Alta Performance. Sócia fundadora do escritório Lopes e Santos Advocacia e Consultoria.',
                              softWrap: true,
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ],
    );
  }
}
