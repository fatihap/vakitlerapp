import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.selectedLocationName,
    required this.onLocationPressed,
    required this.onItemTapped,
  });

  final String selectedLocationName;
  final VoidCallback onLocationPressed;
  final void Function(int) onItemTapped;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      
      title: Row(
        children: [
          GestureDetector(
            onTap: () {
              onItemTapped(0);
            },
            child: Image.asset(
              'assets/images/ttlogo_renkli.png',
              width: 34,
              height: 34,
            ),
          ),
          const SizedBox(width: 8),
          const Text(
            'Türkiye Takvimi',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ],
      ),
      backgroundColor:  Colors.black,
      iconTheme: const IconThemeData(
        color: Colors.white, // Menü ikonunun rengi
      ),
    );
  }
}
