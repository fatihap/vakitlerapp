import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:namazvakitleri/styles/DateColumWidgetStyles.dart';

import '../../../classes/format_number.dart';
import '../../../services/calendar_service.dart';
import '../dateSectionWidgets/dateSelection.dart';

class ReusableCardWidget extends StatefulWidget {
  final VoidCallback goToToday;
  final VoidCallback selectDate;
  final DateTime selectedDate;
  final Function(DateTime) onDateChanged;

  const ReusableCardWidget({
    super.key,
    required this.goToToday,
    required this.selectDate,
    required this.selectedDate,
    required this.onDateChanged,
  });

  @override
  _ReusableCardWidgetState createState() => _ReusableCardWidgetState();
}

class _ReusableCardWidgetState extends State<ReusableCardWidget> {
  late Future<Map<String, String>> _fetchTakvimFuture;
  late Map<String, String> takvimData;

  @override
  void initState() {
    super.initState();
    _fetchTakvimFuture = fetchTakvimData();
  }

  @override
  void didUpdateWidget(covariant ReusableCardWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedDate != widget.selectedDate) {
      _fetchTakvimFuture = fetchTakvimData();
    }
  }

  Future<Map<String, String>> fetchTakvimData() async {
    try {
      return await CalendarService.fetchTakvim(widget.selectedDate);
    } catch (e) {
      return {};
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, String>>(
      future: _fetchTakvimFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No data available'));
        } else {
          takvimData = snapshot.data!;
          final locale = Get.locale?.toString() ?? 'tr_TR';
          return Card(
            color: const Color.fromARGB(255, 230, 240, 243),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildText('HicriKameri', takvimData['hicriTarih'] ?? '', locale),
                  buildText('HicriSemsi', takvimData['hicriSemsi'] ?? '', locale),
                  buildText('Rumi', takvimData['rumi'] ?? '', locale),
                  buildText('', takvimData['hizirKasim'] ?? '', locale),
                  const SizedBox(height: 12),
                  DateSelectionWidget(
                    selectedDate: widget.selectedDate,
                    onDateChanged: widget.onDateChanged,
                    goToToday: widget.goToToday,
                    selectDate: widget.selectDate,
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }

  Widget buildText(String key, String value, String locale) {
    const double titleWidth = 120.0;
    final title = key.tr;

    // Format the number in value based on the locale
    final formattedValue = value.split(' ').map((part) {
      final intValue = int.tryParse(part);
      return intValue != null ? formatNumber(intValue, locale) : part;
    }).join(' ');

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: titleWidth,
          child: Text(
            title,
            style: DateColumnWidgetStyles.subtitleStyle.copyWith(
              fontSize: 20,
              color: const Color(0xFFB293153),
            ),
          ),
        ),
        if (title.isNotEmpty)
          SizedBox(
            width: 20.0,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                ':',
                style: DateColumnWidgetStyles.subtitleStyle.copyWith(
                  fontSize: 20,
                  color: const Color(0xffb293153),
                ),
              ),
            ),
          ),
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              formattedValue,
              textAlign: TextAlign.left,
              style: DateColumnWidgetStyles.subtitleStyle.copyWith(
                fontSize: 18,
                color: const Color.fromARGB(248, 6, 27, 129),
              ),
            ),
          ),
        ),
      ],
    );
  }


}
