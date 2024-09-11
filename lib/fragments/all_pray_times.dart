import 'package:flutter/material.dart';

import '../classes/vakit.dart';
import '../services/PrayerService.dart';
import '../styles/textStyle.dart';
import '../widgets/allprayerTimeWidgets/allPrayerTimesTable_widget.dart';
import '../widgets/calendarWidgets/dateNavigation_widget.dart';
import '../widgets/prayerTimesWidget/dateSectionWidgets/dateSelection.dart'; // Import the DateSelectionWidget

class AllPrayTimes extends StatefulWidget {
  final String selectedCityId;
  final String selectedCityName;
final DateTime selectedDate;
  const AllPrayTimes({
    super.key,
    required this.selectedCityId,
    required this.selectedCityName,
    required this.selectedDate,
  });

  @override
  AllPrayTimesState createState() => AllPrayTimesState();
}

class AllPrayTimesState extends State<AllPrayTimes>
    with AutomaticKeepAliveClientMixin {

  @override
  bool get wantKeepAlive => true;

  final List<PrayerTime> _prayerTimes = [];
  late DateTime selectedDate;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
    initializePrayerTimes();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DateNavigationRow(
                selectedDate: selectedDate,
                onDecrease: () => changeDate(-1),
                onIncrease: () => changeDate(1),
              ),
              const SizedBox(height: 12), 
              DateSelectionWidget(
                goToToday: () {
                  setState(() {
                    selectedDate = DateTime.now();
                    initializePrayerTimes(); 
                  });
                },
                selectDate: () async {
                  await selectDate(context);
                },
                selectedDate: selectedDate,
                onDateChanged: (DateTime newDate) {
                  setState(() {
                    selectedDate = newDate;
                    initializePrayerTimes(); // Updated to initialize prayer times
                  });
                },
              ),
              const SizedBox(height: 16.0),
              _prayerTimes.isNotEmpty
                  ? Column(
                      children: [
                        PrayerTimeTableWidget(prayerTimes: _prayerTimes,selectedDate: selectedDate,),
                      ],
                    )
                  : isLoading
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : const Center(
                          child: Text(
                            'Namaz vakitleri bulunamadı.',
                            style: TextStyles.labelStyle,
                          ),
                        ),
            ],
          ),
        ),
      ),
    );
  }

  void initializePrayerTimes() async {
    setState(() {
      isLoading = true;
    });

    try {
      await PrayerService.readPrayerTimesFromFile(
        context,
        widget.selectedCityId,
        selectedDate,
        _prayerTimes,
        isLoading,
      );
    } catch (e) {
      // Handle error if needed
    }

    setState(() {
      isLoading = false;
    });
  }

  void changeDate(int days) {
    setState(() {
      selectedDate = selectedDate.add(Duration(days: days));
    });
    initializePrayerTimes();
  }

  void goToToday() {
    setState(() {
      selectedDate = DateTime.now();
    });
    initializePrayerTimes();
  }

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        initializePrayerTimes();
      });
    }
  }
}
