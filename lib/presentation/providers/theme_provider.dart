import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Listado de colores  inmutable
final colorListProvider = Provider((ref) => colorList);

// Estado => isDarkModeProvider = boolean
final isDarkModeProvider = StateProvider((ref) => false);

// Estado => selectedColorProvider = int
final selectedColorProvider = StateProvider((ref) => 0);

// Un objeto de tipo AppThemepersonalizado
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

// Controler o Notifier
class ThemeNotifier extends StateNotifier<AppTheme>{

  //STATE = Estado = new AppTheme();
  // ThemeNotifier(super.state);
  ThemeNotifier(): super ( AppTheme() );
  
  void toggleDarkMode(){
    state = state.copyWith( isDarkmode: !state.isDarkmode );
  }

  void changeColorIndex( int coloIndex ){}

}