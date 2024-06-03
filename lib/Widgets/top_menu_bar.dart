import 'package:counter_color_seed/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TopMenuBar extends StatelessWidget {
  const TopMenuBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MenuBar(
      children: [
        SubmenuButton(
          menuChildren: [
            MenuItemButton(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  applicationName: 'AR Software',
                  applicationVersion: '0.0.1',
                );
              },
              child: const MenuAcceleratorLabel('&About'),
            ),
            MenuItemButton(
              child: const MenuAcceleratorLabel(
                '&Save',
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      "SAVED!",
                    ),
                  ),
                );
              },
            ),
            MenuItemButton(
              child: const MenuAcceleratorLabel(
                '&Quit',
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Quit!'),
                  ),
                );
              },
            ),
          ],
          child: const MenuAcceleratorLabel(
            '&File',
          ),
        ),
        SubmenuButton(
          menuChildren: [
             SubmenuButton(menuChildren: [MenuItemButton(child: const MenuAcceleratorLabel("Green",),onPressed: () => context.read<ThemeProvider>().usedColorScheme =
                  Colors.green), MenuItemButton(child: const MenuAcceleratorLabel("Light Blue",),onPressed: () => context.read<ThemeProvider>().usedColorScheme =
                  Colors.lightBlue),MenuItemButton(child: const MenuAcceleratorLabel("Amber",),onPressed: () => context.read<ThemeProvider>().usedColorScheme =
                  Colors.amber),MenuItemButton(child: const MenuAcceleratorLabel("Blue Accent",),onPressed: () => context.read<ThemeProvider>().usedColorScheme =
                  Colors.blueAccent),MenuItemButton(child: const MenuAcceleratorLabel("Blue Grey",),onPressed: () => context.read<ThemeProvider>().usedColorScheme =
                  Colors.blueGrey),MenuItemButton(child: const MenuAcceleratorLabel("Big Stone",),onPressed: () => context.read<ThemeProvider>().usedColorScheme =
                  Colors.brown,),MenuItemButton(child: const MenuAcceleratorLabel("Blue",),onPressed: () => context.read<ThemeProvider>().usedColorScheme =
                  Colors.blue,),MenuItemButton(child: const MenuAcceleratorLabel("Yellow",),onPressed: () => context.read<ThemeProvider>().usedColorScheme =
                  Colors.yellow,),MenuItemButton(child: const MenuAcceleratorLabel("Purple",),onPressed: () => context.read<ThemeProvider>().usedColorScheme =
                  Colors.purple,),MenuItemButton(child: const MenuAcceleratorLabel("Cyan",),onPressed: () => context.read<ThemeProvider>().usedColorScheme =
                  Colors.cyan,),MenuItemButton(child: const MenuAcceleratorLabel("Pink"),onPressed: () => context.read<ThemeProvider>().usedColorScheme =
                  Colors.pink,),MenuItemButton(child: const MenuAcceleratorLabel("Pink Accent"),onPressed: () => context.read<ThemeProvider>().usedColorScheme =
                  Colors.pinkAccent,),MenuItemButton(child: const MenuAcceleratorLabel("Orange"),onPressed: () => context.read<ThemeProvider>().usedColorScheme =
                  Colors.orange,),MenuItemButton(child: const MenuAcceleratorLabel("Deep Purple"),onPressed: () => context.read<ThemeProvider>().usedColorScheme =
                  Colors.deepPurple,),MenuItemButton(child: const MenuAcceleratorLabel("Lime"),onPressed: () => context.read<ThemeProvider>().usedColorScheme =
                  Colors.lime,),MenuItemButton(child: const MenuAcceleratorLabel("Grey"),onPressed: () => context.read<ThemeProvider>().usedColorScheme =
                  Colors.grey,),MenuItemButton(child: const MenuAcceleratorLabel("Indigo"),onPressed: () => context.read<ThemeProvider>().usedColorScheme =
                  Colors.indigo,),MenuItemButton(child: const MenuAcceleratorLabel("Indigo Accent"),onPressed: () => context.read<ThemeProvider>().usedColorScheme =
                  Colors.indigoAccent,),MenuItemButton(child: const MenuAcceleratorLabel("Yellow Accent"),onPressed: () => context.read<ThemeProvider>().usedColorScheme =
                  Colors.yellowAccent,),MenuItemButton(child: const MenuAcceleratorLabel("Light Green"),onPressed: () => context.read<ThemeProvider>().usedColorScheme =
                  Colors.lightGreen,),MenuItemButton(child: const MenuAcceleratorLabel("Light Green Accent"),onPressed: () => context.read<ThemeProvider>().usedColorScheme =
                  Colors.lightGreenAccent,),], child: const MenuAcceleratorLabel("&Themes"),),
            MenuItemButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Magnify"),
                  ),
                );
              },
              child: const MenuAcceleratorLabel(
                '&Magnify',
              ),
            ),
            MenuItemButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      "Minify",
                    ),
                  ),
                );
              },
              child: const MenuAcceleratorLabel(
                'Mi&nify',
              ),
            ),
          ],
          child: const MenuAcceleratorLabel(
            '&View',
          ),
        ),
      ],
    );
  }
}
