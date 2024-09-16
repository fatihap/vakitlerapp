import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/calendar_service.dart';
import '../widgets/calendarWidgets/articleCard_widget.dart';
import '../widgets/calendarWidgets/dateNavigation_widget.dart';
import '../widgets/calendarWidgets/mealSection_widget.dart';
import '../widgets/calendarWidgets/share_options_widget.dart';
import '../widgets/prayerTimesWidget/dateSectionWidgets/dateSelection.dart';

class TakvimPage extends StatefulWidget {
  const TakvimPage({
    super.key,
  });

  @override
  TakvimPageState createState() => TakvimPageState();
}

class TakvimPageState extends State<TakvimPage> {
  String isimYemek = '';
  String yazilarBaslik = '';
  String yazilarMetin = '';
  DateTime selectedDate = DateTime.now();
  final currentYear = DateTime.now().year;
  double fontSize = 16.0;
  double minFontSize = 8.0;
  double maxFontSize = 30.0;

  @override
  void initState() {
    super.initState();
    fetchTakvim(selectedDate);
    loadFontSize();
  }

  Future<void> fetchTakvim(DateTime date) async {
    try {
      final takvimData = await CalendarService.fetchTakvim(date);

      setState(() {
        isimYemek = takvimData['isimYemek'] ?? '';
        yazilarBaslik = takvimData['yazilarBaslik'] ?? '';
        yazilarMetin = takvimData['yazilarMetin'] ?? '';
      });
    } catch (e) {}
  }

  void loadFontSize() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      fontSize = prefs.getDouble('fontSize') ?? 16.0;
    });
  }

  Future<void> saveFontSize(double size) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('fontSize', size);
  }

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        fetchTakvim(selectedDate);
      });
    }
  }

  void showShareOptions(BuildContext context, String content) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return ShareOptionsBottomSheet(
          content: content,
          onShare: (content) {
            shareContent(content);
            Navigator.of(context).pop();
          },
        );
      },
    );
  }

  void shareContent(String content) {
    Share.share(content);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 169, 185, 198),
      body: Stack(
        children: [
          Positioned.fill(
            child:
                Image.asset('assets/images/loop_world.gif', fit: BoxFit.cover),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                DateNavigationRow(
                  selectedDate: selectedDate,
                  onDecrease: decreaseDate,
                  onIncrease: increaseDate,
                ),
                const SizedBox(height: 12),
                DateSelectionWidget(
                  goToToday: () {
                    setState(() {
                      selectedDate = DateTime.now();
                      fetchTakvim(selectedDate);
                    });
                  },
                  selectDate: () async {
                    await selectDate(context);
                  },
                  selectedDate: selectedDate,
                  onDateChanged: (DateTime newDate) {
                    setState(() {
                      selectedDate = newDate;
                      fetchTakvim(selectedDate);
                    });
                  },
                ),
                const SizedBox(height: 12),
                ResizableArticleCard(
                  fontSize: fontSize,
                  minFontSize: minFontSize,
                  maxFontSize: maxFontSize,
                  yazilarBaslik: yazilarBaslik,
                  yazilarMetin: yazilarMetin,
                ),
                const SizedBox(height: 12),
                if (isimYemek != "")
                  ShareableCard(
                    title: 'İsim Yemek',
                    value: isimYemek,
                    onLongPress: () => shareContent('İsim Yemek: $isimYemek'),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void decreaseDate() {
    setState(() {
      selectedDate = selectedDate.subtract(const Duration(days: 1));
      fetchTakvim(selectedDate);
      saveFontSize(fontSize);
    });
  }

  void increaseDate() {
    setState(() {
      selectedDate = selectedDate.add(const Duration(days: 1));
      fetchTakvim(selectedDate);
      saveFontSize(fontSize);
    });
  }
}
