import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon
  });
}

const appMenuItem = <MenuItem>[

  MenuItem(
    title: 'Riverpod Counter',
    subTitle: 'Introduccion a riverpod',
    link: '/counter-river',
    icon: Icons.list_alt_rounded,
  ),

  MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined
  ),

  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card
  ),

  MenuItem(
    title: 'ProgressIndicators',
    subTitle: 'Generales y Controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),

  MenuItem(
    title: 'Snackbars y Dialogos',
    subTitle: 'Indicadores en pantalla',
    link: '/snackbars',
    icon: Icons.info_outline,
  ),

  MenuItem(
    title: 'Animated Container',
    subTitle: 'Statefull Widget animado',
    link: '/animated',
    icon: Icons.check_box_outline_blank_rounded,
  ),

  MenuItem(
    title: 'UI Controls + Tiles',
    subTitle: 'Una serie de controles de Flutter',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined,
  ),

  MenuItem(
    title: 'Introduccion a la aplicacion',
    subTitle: 'Pequeño tutorial introductorio',
    link: '/tutorial',
    icon: Icons.accessible_rounded,
  ),

  MenuItem(
    title: 'InfiniteScroll & Pull',
    subTitle: 'Listas infinitas y pull to refresh',
    link: '/infinite',
    icon: Icons.list_alt_rounded,
  ),

  MenuItem(
    title: 'Cambiar Tema',
    subTitle: 'Cambiar Tema de la app',
    link: '/theme-changer',
    icon: Icons.color_lens_outlined,
  ),

];