
// import 'package:artracker_seed/screens/ar_agent.dart';
import 'package:counter_color_seed/Widgets/top_menu_bar.dart';
import 'package:flutter/material.dart';
import 'package:counter_color_seed/providers/theme_provider.dart';
// import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:provider/provider.dart';



class AppBarCommon extends StatelessWidget implements PreferredSizeWidget{
  const AppBarCommon({
    super.key,
  });

  @override
  // TODO: implement preferredSize
 Size get preferredSize => const Size.fromHeight(kToolbarHeight); 
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: () {
        Navigator.pushReplacementNamed(context, "/");
      },),
        title: Row(
          mainAxisSize: MainAxisSize.max,
          children: const [
            Expanded(
              child: TopMenuBar(),
            ),
          ],
        ),
        actions: [
        IconButton(
          tooltip: "Dark/Light Mode",
          hoverColor: Colors.blueAccent,
          onPressed: () {
            final themeNotifier = context.read<ThemeProvider>();
            final currentMode = themeNotifier.themeMode;
            themeNotifier.themeMode = currentMode == ThemeMode.dark
                ? ThemeMode.light
                : ThemeMode.dark;
          },
          icon: Icon(
            context.watch<ThemeProvider>().themeMode == ThemeMode.dark 
                ? Icons.light_mode_rounded // Use a sun icon when in dark mode
                : Icons
                    .dark_mode_rounded, // Use a moon icon when in light mode
          ),
        ),
      ],
      );
  }
}