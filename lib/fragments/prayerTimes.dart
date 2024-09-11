import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

import '../classes/countDown_function.dart';
import '../classes/custom_footer_widget.dart';
import '../classes/vakit.dart';
import '../services/PrayerService.dart';
import '../services/calendar_service.dart';
import '../services/google_assistan.dart';
import '../widgets/prayerTimesWidget/PrayerTimesTableSection/reusablePrayerTimeSection_widget.dart';
import '../widgets/prayerTimesWidget/dailySectionWidgets/dailyEventWidget.dart';
import '../widgets/prayerTimesWidget/dailySectionWidgets/dailyQuouteWidget.dart';
import '../widgets/prayerTimesWidget/dailySectionWidgets/day_info_widget.dart';
import '../widgets/prayerTimesWidget/dailySectionWidgets/gunDurumuWidget.dart';
import '../widgets/prayerTimesWidget/dateSectionWidgets/date_column_widget.dart';
import 'all_pray_times.dart';
import 'calendar_page.dart';

class PrayTimes extends StatefulWidget {
  String selectedCityId;
  String selectedCityName;
  bool isFirstTouch;

  PrayTimes({
    super.key,
    required this.selectedCityId,
    required this.selectedCityName,
    required this.isFirstTouch,
  });

  @override
  PrayTimesState createState() => PrayTimesState();
}

class PrayTimesState extends State<PrayTimes>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  List<PrayerTime> prayerTimes = [];
  late DateTime selectedDate;
  late Timer timer;
  String countdown = '';
  String nextPrayerText = '';
  String localTime = '';
  int selectedIndex = -1;
  bool isLoading = false;
  String gununSozu = '';
  String gununOlayi = '';
  String gunDurumu = '';
  String ezaniDurum = '';
  String hicriTarih = '';
  String hizirKasim = '';
  Map<String, String> takvimData = {};

  bool hasSpokenCountdown = false;
  bool isInitialized = false;

  late PageController pageController;
  late ScrollController scrollController;
  int pageIndex = 0;

  @override
  void initState() {
    super.initState();
    if (!isInitialized) {
      isInitialized = true;
      selectedDate = DateTime.now();
      pageController = PageController();
      scrollController = ScrollController();
      fetchTakvim(selectedDate);
      initializeMethodChannel();
      initUrlLauncher();
      if (widget.selectedCityId.isNotEmpty &&
          widget.selectedCityName.isNotEmpty) {
        initializePrayerTimes();
      }
    }
  }

  @override
  void dispose() {
    timer.cancel();
    pageController.dispose();
    scrollController.dispose();
    super.dispose();
  }

  void initUrlLauncher() async {
    if (await canLaunch('prayertimes://nextPrayerTime')) {}
  }

  Future<void> handleDeepLink(Uri url) async {
    if (url.scheme == 'googleassistant' && url.host == 'nextPrayerTime') {
      final nextPrayerName = nextPrayerText;
      final remainingTime = calculateRemainingTime(nextPrayerName);

      final assistantResponse = GoogleAssistantResponse(
        spokenResponse:
            'Bir sonraki vakit $nextPrayerName dir ve vakte $remainingTime kaldı.',
      );
      await sendAssistantResponse(assistantResponse);
    }
  }

  Future<void> sendAssistantResponse(GoogleAssistantResponse response) async {
    const platform = MethodChannel('com.protek.prayertimes/assistant');
    try {
      await platform.invokeMethod('sendAssistantResponse', response.toJson());
    } on PlatformException catch (e) {
      print("Failed to send response: '${e.message}'.");
    }
  }

  void initializeMethodChannel() {
    const MethodChannel('com.protek.prayertimes/intent')
        .setMethodCallHandler((call) async {
      if (call.method == "getPrayerTime") {
        String cityId = call.arguments['cityId'];
        String cityName = call.arguments['cityName'];
        setState(() {
          widget.selectedCityId = cityId;
          widget.selectedCityName = cityName;
        });
        initializePrayerTimes();
      } else if (call.method == "handleGoogleAssistantRequest") {
        Uri url = Uri.parse(call.arguments['url']);
        await handleDeepLink(url);
      }
    });
  }

  Future<void> fetchTakvim(DateTime date) async {
    try {
      final takvimData = await CalendarService.fetchTakvim(date);
      setState(() {
        gunDurumu = takvimData['gunDurumu'] ?? '';
        ezaniDurum = takvimData['ezaniDurum'] ?? '';
        gununSozu = takvimData['gununSozu'] ?? '';
        gununOlayi = takvimData['gununOlayi'] ?? '';
        hizirKasim = takvimData['hizirKasim'] ?? '';
        hicriTarih = takvimData['hicriTarih'] ?? '';
      });
    } catch (e) {
      setState(() {
        gunDurumu = '';
        ezaniDurum = '';
        gununSozu = '';
        gununOlayi = '';
        hizirKasim = '';
        hicriTarih = '';
      });
    }
  }

  void initializePrayerTimes() async {
    setState(() {
      isLoading = true;
    });

    try {
      await PrayerService.readPrayerTimesFromFile(
          context, widget.selectedCityId, selectedDate, prayerTimes, isLoading);
      await fetchTakvim(selectedDate);

      timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (mounted) {
          setState(() {
            localTime = DateFormat('HH:mm:ss').format(DateTime.now());
            updateCountdown();
          });
        }
      });
    } catch (e) {}

    if (mounted) {
      setState(() {
        isLoading = false;
      });
    }
  }

  List<DateTime> getPrayerTimesAsDateTimes() {
    return prayerTimes
        .map((prayerTime) {
          return [
            DateFormat("HH:mm").parse(prayerTime.imsak, true).add(DateTime.now()
                .difference(DateTime.now().subtract(const Duration(days: 1)))),
            DateFormat("HH:mm").parse(prayerTime.sabah, true).add(DateTime.now()
                .difference(DateTime.now().subtract(const Duration(days: 1)))),
            DateFormat("HH:mm").parse(prayerTime.ogle, true).add(DateTime.now()
                .difference(DateTime.now().subtract(const Duration(days: 1)))),
            DateFormat("HH:mm").parse(prayerTime.ikindi, true).add(
                DateTime.now().difference(
                    DateTime.now().subtract(const Duration(days: 1)))),
            DateFormat("HH:mm").parse(prayerTime.aksam, true).add(DateTime.now()
                .difference(DateTime.now().subtract(const Duration(days: 1)))),
            DateFormat("HH:mm").parse(prayerTime.yatsi, true).add(DateTime.now()
                .difference(DateTime.now().subtract(const Duration(days: 1)))),
          ];
        })
        .expand((i) => i)
        .toList();
  }

  String calculateRemainingTime(String prayerTime) {
    DateTime now = DateTime.now();
    DateTime time;

    try {
      List<String> parts = prayerTime.split(':');
      int hour = int.parse(parts[0]);
      int minute = int.parse(parts[1]);
      time = DateTime(now.year, now.month, now.day, hour, minute);
    } catch (e) {
      return 'Geçersiz zaman formatı';
    }

    Duration difference = now.difference(time);
    int totalMinutes = difference.inMinutes;
    int hours = totalMinutes ~/ 60;
    int minutes = totalMinutes % 60;

    return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}';
  }

  void updateCountdown() {
    Map<String, dynamic> countdownInfo =
        CountdownUtil.updateCountdown(prayerTimes, selectedDate);
    setState(() {
      countdown = countdownInfo['countdown'];
      selectedIndex = countdownInfo['selectedIndex'];
    });
  }

  Widget buildCombinedCalendarAndCitySelectionCard() {
    String hicriDate = hicriTarih.isNotEmpty ? hicriTarih : '-';
    List<String> hicriTarihParts = hicriDate.split(' ');

    String hicriGun = hicriTarihParts.isNotEmpty ? hicriTarihParts[0] : '-';
    String hicriAy = hicriTarihParts.length > 2
        ? hicriTarihParts.sublist(1, hicriTarihParts.length - 1).join(' ')
        : '-';
    String hicriYil = hicriTarihParts.isNotEmpty ? hicriTarihParts.last : '-';

    return Card(
      elevation: 5,
      color: const Color.fromARGB(0, 4, 23, 40),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DateColumnWidget(
                  selectedDate: selectedDate,
                  hicriYil: hicriYil,
                  hicriGun: hicriGun,
                  hicriAy: hicriAy,
                ),
                const SizedBox(height: 18),
                GunDurumuWidget(
                  gunDurumu: gunDurumu,
                  ezaniDurum: ezaniDurum,
                ),
                // SelectedCityAndIconWidget(selectedCityName: widget.selectedCityName, context: context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> handleRefresh() async {
    goToToday(); 
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/loop_world.gif',
              fit: BoxFit.cover,
            ),
          ),
          PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                pageIndex = index;
              });
            },
            children: [
              RefreshIndicator(
                onRefresh: handleRefresh,
                child: NotificationListener<ScrollNotification>(
                  onNotification: (scrollInfo) {
                    if (scrollInfo.metrics.pixels == 0 &&
                        scrollInfo is OverscrollNotification &&
                        scrollInfo.overscroll < 0) {
                      return false;
                    }
                    return true;
                  },
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        buildCombinedCalendarAndCitySelectionCard(),
                        const SizedBox(height: 8),
                        if (gununSozu.isNotEmpty)
                          Text('daily_quoute'.tr,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 214, 215, 221),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold)),
                        DailyQuouteWidget(
                            context: context, gununSozu: gununSozu),
                        if (prayerTimes.isNotEmpty)
                          ReusablePrayerTimesSection(
                            prayerTimes: prayerTimes,
                            selectedCityId: widget.selectedCityId,
                            selectedCityName: widget.selectedCityName,
                            selectedDate: selectedDate,
                          ),
                          
                        ReusableCardWidget(
                          goToToday: goToToday,
                          selectDate: () => selectDate(context),
                          selectedDate: selectedDate,
                          onDateChanged: (newDate) {
                            setState(() {
                              selectedDate = newDate;
                            });
                            initializePrayerTimes();
                          },
                        ),
                        const SizedBox(height: 12),
                        if (gununOlayi.isNotEmpty)
                          Text('daily_event'.tr,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 214, 215, 221),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold)),
                        if (gununOlayi.isNotEmpty)
                          DailyEventWidget(
                              context: context, gununOlayi: gununOlayi),
                        const SizedBox(height: 12),
                        const CustomFooter(
                          text: 'www.turktakvim.com',
                          backgroundColor: Colors.transparent,
                          textColor: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              AllPrayTimes(
                selectedCityId: widget.selectedCityId,
                selectedCityName: widget.selectedCityName,
                selectedDate: selectedDate,
              ),
              const TakvimPage(),
            ],
          ),
        ],
      ),
    );
  }

  void launchGoogleAssistant() async {
    const url = 'googleassistant://';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch Google Assistant';
    }
  }

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });

      PrayerService.readPrayerTimesFromFile(
          context, widget.selectedCityId, selectedDate, prayerTimes, isLoading);
      initializePrayerTimes();
      countdown = '';
    }
  }

  void goToToday() {
    setState(() {
      selectedDate = DateTime.now();
    });
    PrayerService.readPrayerTimesFromFile(
        context, widget.selectedCityId, selectedDate, prayerTimes, isLoading);
    initializePrayerTimes();
    countdown = '';
  }
}
