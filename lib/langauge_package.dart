import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Dil extends Translations {
  static const tr = Locale("tr", "TR");
  static const en = Locale("en", "US");

  static const fa = Locale("fa", "IR");
  static const bs = Locale("bs", "BA");
  static const varsayilan = tr;
  static final diller = [tr];

  @override
  Map<String, Map<String, String>> get keys => {
        'tr_TR': {
          'share': 'Paylaş',
          'daily_event': 'Günün Olayı',
          'daily_quoute': 'Günün Sözü',
          'prayer_times': 'NAMAZ VAKİTLERİ',
          'HicriKameri': 'Hicri Kameri',
          'language_selection': 'Dil Seçimi',
          'location_selection': 'Konum Seçimi',
          'vakit': 'Vakit',
          'saat': 'Saat',
          'bugun': 'Bugün',
          'tarih_sec': 'Tarih Seç',
          'search_city': 'Sehir Ara',
          'kayitli_sehirler': 'Kayıtlı Şehirler',
          'konum_onay': 'Konumu Onayla',
          'location_searching': 'Konum Aranıyor...',
          'auto_location': 'Otomaik Konum Seçimi',
          'select_country': 'Ülke Seçimi',
          'search_country': 'Ülke Arama',
          'select_region': 'Bölge Seçimi',
          'search_region': 'Bölge Arama',
          'countrylist': 'Ülkeler listesi için tıklayınız',
          'page_onyuz': 'Ön Yüz',
          'page_arka': 'Arka Yaprak',
          'page_sonraki': 'Sonraki Gün',
          'page_onceki': 'Önceki Gün',
          'page_bugun': 'Bugün',
          'TumDevletlerdeAra': 'Tüm Devletlerde Ara',
          'DevletSeciniz': 'Lütfen Bir Devlet Seçiniz',
          'EyaletSeciniz': 'Lütfen Bir Eyalet Seçiniz',
          'SehirSeciniz': 'Lütfen Bir Şehir Seçiniz',
          'NamazVakitleriYazi': 'Namaz Vakitleri',
          'Harita': 'Harita',
          'imsak': 'İmsâk',
          'sabah': 'Sabâh',
          'gunes': 'Güneş',
          'israk': 'İşrak',
          'dahve': 'Dahve-î Kübra',
          'kerahet': 'Kerahet',
          'ogle': 'Öğle',
          'ikindi': 'İkindi',
          'asrisani': 'Asr-ı Sânî',
          'isfirar': 'İsfirar',
          'aksam': 'Akşam',
          'istibak': 'İştibâk',
          'yatsi': 'Yatsı',
          'isaisani': 'İşâ-i sânî',
          'geceyarisi': 'Gece Yarısı Vakti',
          'teheccud': 'Teheccüd',
          'seher': 'Seher',
          'kible': 'Kıble',
          'RumiAylar[1]': 'Kânûn-i Sânî',
          'RumiAylar[2]': 'Şubat',
          'RumiAylar[3]': 'Mart',
          'RumiAylar[4]': 'Nisan',
          'RumiAylar[5]': 'Mayıs',
          'RumiAylar[6]': 'Haziran',
          'RumiAylar[7]': 'Temmuz',
          'RumiAylar[8]': 'Ağustos',
          'RumiAylar[9]': 'Eylül',
          'RumiAylar[10]': 'Teşrîn-i Evvel',
          'RumiAylar[11]': 'Teşrîn-i Sânî',
          'RumiAylar[12]': 'Kânûn-i Evvel',
          'HaftaninGunleri[7]': 'Pazar',
          'HaftaninGunleri[1]': 'Pazartesi',
          'HaftaninGunleri[2]': 'Salı',
          'HaftaninGunleri[3]': 'Çarşamba',
          'HaftaninGunleri[4]': 'Perşembe',
          'HaftaninGunleri[5]': 'Cuma',
          'HaftaninGunleri[6]': 'Cumartesi',
          'SeneninAylari[1]': 'OCAK',
          'SeneninAylari[2]': 'ŞUBAT',
          'SeneninAylari[3]': 'MART',
          'SeneninAylari[4]': 'NİSAN',
          'SeneninAylari[5]': 'MAYIS',
          'SeneninAylari[6]': 'HAZİRAN',
          'SeneninAylari[7]': 'TEMMUZ',
          'SeneninAylari[8]': 'AĞUSTOS',
          'SeneninAylari[9]': 'EYLÜL',
          'SeneninAylari[10]': 'EKİM',
          'SeneninAylari[11]': 'KASIM',
          'SeneninAylari[12]': 'ARALIK',
          'HicriAylar[0]': "MUHARREM",
          'HicriAylar[1]': "SAFER",
          'HicriAylar[2]': "REBÎ'UL-EVVEL",
          'HicriAylar[3]': "REBÎ'UL-ÂHIR",
          'HicriAylar[4]': "CEMÂZİL-EVVEL",
          'HicriAylar[5]': "CEMÂZİL-ÂHIR",
          'HicriAylar[6]': "RECEB",
          'HicriAylar[7]': "ŞA'BÂN",
          'HicriAylar[8]': "RAMEZÂN",
          'HicriAylar[9]': "ŞEVVÂL",
          'HicriAylar[10]': "ZİL-KA'DE",
          'HicriAylar[11]': "ZİL-HİCCE",
          'Yonler[0]': 'Kuzey',
          'Yonler[1]': 'G&#252;ney',
          'Yonler[2]': 'Do&#287;u',
          'Yonler[3]': 'Bat&#305;',
          'Alfabetik_Sehir_Listesi': 'Alfabetik &#350;ehir Listesi',
          'AlfabetikSehirListesi': 'Alfabetik_%C5%9Eehir_Listesi',
          'YazSaati': 'Yaz Saati uygulaması vardır.',
          'AddBookmark': 'S&#305;k Kullan&#305;lanlara Ekleyin',
          'AnaSayfaYap': 'Ana Sayfan&#305;z Yap&#305;n',
          'AramaSonuclari': 'Arama Sonuçları',
          'Eyalet_Listesi': '%s_Eyalet_İl_Bolge_Listesi',
          'Sehir_Listesi': '%d_%s_Sehir_Listesi',
          'Sanal_Yol_UlkelerListesi': 'Ulkeler_Listesi',
          'SehirListesiYazisi': 'ŞEHİR LİSTESİ',
          'Icin_Namaz_Vakitleri': '%s_Icin_Namaz_Vakitleri',
          'sehrin_ismini_giriniz': 'Lütfen şehrin ismini giriniz...',
          'SehirArama': 'Şehir Arama',
          'GeriDon': 'Geri Dön',
          'Imsakiye': 'İMSÂKİYE',
          'LisanImsakiye': '44 LİSÂNDA İMSÂKİYE',
          'Irtibat': 'İRTİBAT',
          'Kitaplar': 'KİTÂBLAR',
          'Bayan': 'Kız',
          'Bay': 'Erkek',
          'GunlerYazi': 'G&#252;nler',
          'AylarYazi': 'Aylar',
          'YillarYazi': 'Yıllar',
          'UlkelerListesi':
              '&#220;lkeler Listesi &#304;&#231;in T&#305;klay&#305;n&#305;z',
          'UlkeListesi': 'ÜLKE LİSTESİ',
          'EyaletListesi': 'Eyalet, İl, Bölge Listesi',
          'EyaletIlBolge': 'Eyalet, İl, Bölge',
          'EyaletListesiTr': 'İl, Bölge Listesi',
          'SqlTT': 'dmy',
          'VakitYok':
              'Seçtiğiniz şehrin namaz vakitleri için lütfen bizimle e-posta ya da fax yoluyla temas kurun.',
          'EPosta_adres':
              '<a href=\'mailto:info@turktakvim.com\'> info@turktakvim.com</a>',
          'fax_no': '+90 (212) 454 23 87',
          'fax': 'Fax',
          'EPosta': 'E-Posta',
          'website': 'Web Site Adresleri',
          'HicriSemsi': 'Hicrî Şemsî',
          'Aylik': 'Ayl&#305;k Vakitler',
          'Yillik': 'Y&#305;ll&#305;k Vakitler',
          'Yazdir': 'Yazd&#305;r',
          'Yaziyi_Gonder': 'Arkadaşına G&#246;nder',
          'Yaziyi_Add_Favourites':
              'Bu Yaz&#305;y&#305; S&#305;k Kullan&#305;lanlara Ekleyin',
          'Okunma_Sayisi': 'Okunma Say&#305;s&#305;',
          'Word_Indir': 'Word olarak indir',
          'Pdf_Indir': 'Pdf olarak indir',
          'Bu_Yaziyi': 'Bu Yaz&#305;y&#305;',
          'Diger_aylardaki_namaz_vakitleri':
              'Di&#287;er Aylardaki Namaz Vakitleri',
          'RamazanBayrami':
              '%s Ramazan Bayram Namazı Vakti : <strong>%s</strong>',
          'KurbanBayrami':
              '%s Kurban Bayram Namazı Vakti : <strong>%s</strong>',
          'KitapIndir': 'İndir',
          'IcindeGecen': 'İsimleri içerisinde %s geçen şehirler',
          'IsimleriBasliyan': 'İsimleri %s ile başlayan şehirler',
          'dak': 'dakika',
          'GunKisa': 'Gündüzün kısalması ',
          'GunUzun': 'Gündüzün uzaması ',
          'Ezani': 'Ezânî (Mahallî)',
          'EzaniYok': 'Bugün ezânî sâat ayarlanmaz.',
          'EzaniSaatYazi': 'Ezânî sâat ',
          'EzaniIleri': ' dakika ileri alınır.',
          'EzaniGeri': ' dakika geri alınır.',
          'AylikNamazVakitleriYazisi':
              '<strong>%s</strong> &#304;&#231;in <strong> 2013 %d </strong> Ay&#305; Namaz Vakitleri',
          'AylikNamazVakitleriYazisi_Title':
              '%s &#304;&#231;in 2013 %d Ay&#305; Namaz Vakitleri',
          'YillikNamazVakitleriYazisi':
              '<strong>%s</strong> &#304;&#231;in <strong> 2013 </strong> Y&#305;l&#305; Namaz Vakitleri',
          'YillikNamazVakitleriYazisi_Title':
              '%s &#304;&#231;in 2013  Y&#305;l&#305; Namaz Vakitleri',
          'Arz': 'Arz',
          'Tul': 'Tûl',
          'Rumi': 'Rûmî',
          'Hizir': 'Hızır',
          'Kasim': 'Kasım',
          'YesilHat':
              '&#350;ehirden &#199;&#305;kan <span style="color:green; font-weight:bold;">ye&#351;il</span> hat , k&#305;ble istik&#226;metidir.',
          'UlkeYazisi': 'Ülke',
          'EyaletYazisi': 'Eyalet',
          'SehirYazisi': 'Şehir',
          'TarihYazisi': 'Tarih',
          'KirmiziVakitler':
              '<strong>* Kırmızı İmsâk ve yatsı vakitleri, imsâkin olduğu en son günün vakitleridir.</strong>',
          'YazSaatineGecis':
              '<strong>%s</strong> tarihinden itibaren, vakitler yaz saati uygulamasındaki geçiş göz önüne alınarak hazırlanmıştır.',
          'KadirGecesiYazisi':
              '<strong>Kadir Gecesi:</strong> %s gününü, %s gününe bağlayan gecedir.',
          'ImsakVaktiNotu':
              'İmsâk vakti, oruca başlama zamanıdır ve sabâh nemâzının da ilk vaktidir.',
          'Note': '<strong>Not: </strong>',
          'ImsakiyedekiSabah':
              'İmsâkiyedeki <strong>\'Sabah\'</strong> vakti, sabâh nemâzının ihtiyatlı vaktidir.',
          'SabahNamaziNotu':
              'Sabah namazı, imsâkten 20 dakika sonra kılınabilir.',
          'Sehir_Ismi_Girin': 'Lütfen Şehri yazınız!',
          'AramaYok': 'Aradığınız Şehir Bulunamadı !',
          'TitleSehirArama': 'Lütfen Şehri yazınız',
          'VasatiVakitler': 'Vasatî Vakitler',
          'AzaniVakitler': 'Ezânî Vakitler',
          'TurkiyeTakvimi': 'Türkiye Takvimi',
          'MesveretTakvimi': 'Meşveret Takvimi',
          'ImsakiyeYazisi':
              'HİCRÎ %s, MÎLÂDÎ %s SENESİ, <strong>%s</strong> İÇİN RAMEZÂN-I ŞERÎF İMSÂKİYESİ',
          'ImsakiyeYazisi_Title':
              'Hicrî 1434, Mîlâdî 2013 Senesi, %s İçin Ramezân-ı Şerîf İmsâkiyesi',
          'KacinciAy': '%d. Ay',
          'KacinciHafta': '%d. Hafta',
          'AyKacCek': '%d Gün',
          'YilinGunu': 'Yılın %t. günü',
          'KalanGunYazi': 'Kalan Gün : %t',
          'DigerVakitler': 'Diğer Vakitler',
          'OnemliLinkler': 'Önemli Linkler',
          'Menu': 'Menü',
          'Diller': 'Diller',
          'local': 'Mahallî Sâat',
          'remain_imsak': "İmsâk'e kalan zaman",
          'remain_sabah': "Sabâh'a kalan zaman",
          'remain_gunes': "Güneş'e kalan zaman",
          'remain_israk': "İşrak'e kalan zaman",
          'remain_ogle': "Öğle'ye kalan zaman",
          'remain_ikindi': "İkindi'ye kalan zaman",
          'remain_aksam': "Akşam'a kalan zaman",
          'remain_yatsi': "Yatsı'ya kalan zaman",
          'kibleSaatiYazisi':
              "Kıble Sâati Vakti'nde Güneşe dönen, kıbleye dönmüş olur.",
          'YanlisImsak': "Yanlış imsâk vakti açıklaması",
          'Rasad': "Rasad hakkında açıklama",
          'DogruImsak': "Doğru imsâk vakti açıklaması",
          'imsak_def': 'Dört mezhebde de, (şer’î gece)nin sonudur. Ya'
              'nî, (Fecr-i sâdık) denilen beyâzlığın şarkdaki (doğudaki) ufk-ı zâhirî (görünen ufuk) hattının bir noktasında görülmesidir. Oruc bu vakitde başlar.',
          'sabah_def':
              'Sabâh nemâzının ilk vakti imsâk vaktidir. Sabâh nemâzını Türkiye takvîmindeki imsâk vaktinden, Türkiyede 15-20 dakîka sonra kılmak ihtiyâtlı olur.',
          'gunes_def':
              'Sabâh nemâzının son vakti olup, güneşin ön [üst] kenârının, o mahaldeki, ufk-ı zâhirî (görünen ufuk) hattından doğduğu vakittir.',
          'israk_def':
              'Güneş doğduktan sonra, güneşin arka (alt) kenârının zâhirî (görünen) ufuktan bir mızrak boyu yükseldiği veya güneşin merkezinin ufk-ı hakîkîden (Hakîkî ufukdan), 5 derece yükseklikde olduğu vakittir. Güneş doğarken olan kerâhet vaktinin sonudur.',
          'dahve_def': 'Dahve-i kübrâ vakti Dahve-i kübrâ vakti, oruca niyet etmenin son vaktidir. Dahve-i kübrâ vakti oruc müddetinin, ya'
              'nî şer’î gündüz müddetinin yarısıdır ki, zevâl vaktinden öncedir. Şer'
              'î gündüz, imsâk vakti ile akşam vakti arasındaki müddettir. Ya'
              'nî Dahve-i kübrâ vakti, imsâk ve akşam vakitleri toplamının yarısıdır. Bir gün evvel güneş batmasından, oruc günü (Dahve-i kübrâ)ya kadar, Ramazan orucuna kalb ile niyyet etmek de farzdır. Belli gün olan adak orucunun ve nâfile orucun niyet zemânı da böyledir. Kazâ ve keffâret orucuna ve mu’ayyen olmayan adak oruclarına fecrden (imsâk vaktinden) sonra niyet edilemez.',
          'ogle_def':
              'Gölgeler kısalıp, uzamağa başladığı zemândan i’tibâren başlar. Öğle vakti, asr-ı evvele kadar, ya’nî her şeyin gölgesi, hakîkî zevâl vaktindeki uzunluğundan, kendi boyu mikdârı veyâ asr-ı sânîye kadar, ya’nî boyunun iki misli uzayıncaya kadar devâm eder. Birincisi, iki imâma ve diğer üç mezhebe göre, ikincisi, İmâm-ı a’zama göredir.',
          'kerahet_def':
              'Güneş Nısf-ün-nehâr dâiresi üzerinde, gündüz ortasından, ya'
                  'nî zevâl vaktinden temkin zemânı evvel ve sonra olan iki vakt arasındaki zemândır. Bu zemânın başlangıcı, öğle nemâzı vaktinden iki temkin müddeti evvel olup, İstanbul için 20 dakîkadır. Nemâz kılması tahrîmen mekrûh, ya'
                  'nî harâm olan zemândır.',
          'ikindi_def':
              'kindiye asr-ı evvel de denir. İki imâma (İmâm-ı Ebû Yûsüf ve İmâm-ı Muhammed’e) göre, ikindi vaktinin başlama zemânıdır. Diğer üç mezhebde de böyledir. Bir şeyin gölgesi, zevâl vaktindeki boyundan, bu şeyin boyu mikdârı uzayınca başlayan vakittir.',
          'asrisani_def':
              'İmâm-ı a’zam’a göre, ikindi vaktinin başlama zemânı demektir. Bir şeyin gölgesi, zevâl vaktindeki boyundan, bu şeyin iki misli uzayınca başlayan vakittir.',
          'aksam_def':
              'Güneş kayboldukdan sonra başlayıp, şafak kararıncaya kadar, ya’nî kırmızılık kayboluncaya kadar devâm eder.',
          'yatsı_def':
              'atsı, işâ demektir. İşâ-i evvel, yatsının ilk vaktidir. Batıdaki zâhirî (görünen) ufuk hattı üzerinde kırmızılığın kaybolması ile başlayan vakittir. Ya'
                  'nî güneşin üst kenârının ufk-ı zâhirî (görünen ufuk) altında 17 derece aşağıya indiği vakittir. Yatsı nemâzının vakti, İmâmeyn’e (İmâm-ı Ebû Yûsüf ve İmâm-ı Muhammed’e) göre işâ-i evvel vaktinde başlar. Diğer üç mezhebde de böyledir.',
          'isaisani_def':
              'Batıdaki zâhirî (görünen) ufuk hattı üzerinde beyazlığın kaybolması ile başlayan vakittir. Ya'
                  'nî güneşin üst kenârının ufk-ı zâhirî (görünen ufuk) altında 19 derece aşağıya indiği ve beyazlığın kaybolduğu vakittir. İmâm-ı a’zam’a göre yatsı vaktinin başladığı zemândır.',
          'gece_yarisi_def': 'Şer’î gece, gurûbdan fecre kadar olan zemândır. Ya'
              'nî güneşin batışı olan akşam vakti ile imsâk vakti arasındaki zemândır. Bu ikisi arasındaki zemân ikiye bölünüp, çıkan müddet, akşam nemâzı vaktine eklenirse veya imsâk vaktinden çıkarılırsa, gece yarısı bulunmuş olur. Şâfi’î mezhebinde yatsı nemâzının âhir (son) vakti, şer’î gecenin yarısına kadar diyenler vardır. Yatsıyı, şer’î gecenin yarısından sonra kılmak, bunlara göre câiz değildir. Hanefîde ise, mekrûhdur.',
          'teheccud_def': 'Şer’î gecenin, ya'
              'nî Güneşin batışı olan akşam vakti ile imsâk vakti arasındaki zemânın üçde ikisi geçdikden sonraki vakittir. Ya'
              'nî şer'
              'î gecenin son üçte biridir. Teheccüd nemâzı imsâk vaktinden önce kılınır. Teheccüd, uykuyu terk etmek demekdir. Gündüz kılınan bin rek’atden dahâ fazîletlidir. İki rek’at kazâ nemâzı kılmak da, teheccüd kılmakdan daha efdaldir.',
          'seher_def':
              'Güneşin batışı olan akşam vakti ile imsâk vakti arasındaki zemânın son altıda biridir. (Şir’at-ül-islâm) şerhinde diyor ki, (Hadîs-i şerîfde, (Gece seher vaktinde ve nemâzlardan sonra yapılan düâ kabûl olunur) buyuruldu. Düâya hamd ve senâ ve salevât ile başlamak ve sonunda iki avucu yüze sürmek sünnetdir). Bu vakitlerde istigfâr etmeği, ağlamağı, Allahü teâlâya yalvarmağı ganîmet bilmelidir. (Dürer) de diyor ki: (Seher vaktinde yenilen yemeğe sahûr denir.)',
          'kible_def':
              'Kıble sâati vaktinde Güneşe dönen, kibleye dönmüş olur.',
          'isfirar_def': 'Güneş batarken nemâz kılması tahrîmen mekrûh, ya'
              'nî harâm olan zemândır. Güneş sarardıkdan sonra, ön (alt) kenârı zâhirî (görünen) ufuk hattına bir mızrak boyu kalınca, ya'
              'nî merkezinin hakîkî ufukdan 5 derece yükseklikde olunca başlayan ve batıncaya kadar olan müddettir. Ya'
              'nî, berrak bir havada, ışığın geldiği yerlerin veya kendisinin bakacak kadar sararmağa başladığı vakitden, batıncaya kadar olan zemân demekdir. Bu vakte (İsfirâr-ı şems) zemânı denir. İkindi nemâzını kılamayanlar, bu kerâhet vaktinde sadece farzını mutlaka kılmalı, nemâzı kazâya bırakmamalıdır.',
          'istibak_def': 'Yıldızlar çoğaldıkdan, ya'
              'nî güneşin arka kenârının zâhirî (görünen) ufuk hattı altına on dereceye indikden sonraki vakittir. Bu vakit ile gurûb vakti arasındaki zemân, İstanbul gibi, arzı 41 derece olan mahaller için, bir senede, 53 ile 67 dakîka arasında değişmekdedir. Akşam nemâzını, vaktin evvelinde kılmak sünnetdir. (İştibâk-i nücûm) vaktinden, ya'
              'nî yıldızlar çoğaldıkdan, ya'
              'nî güneşin arka kenârının zâhirî ufuk hattı altına on derece irtifâ’a indikden sonraya bırakmak harâmdır. Hastalık, seferî olmak, hazır ta’âmı (yemeği) yimek için, bu kadar gecikdirilebilir.',
        },
        'en_US': {
          "share": "Share",
          "daily_event": "Daily Event",
          "daily_quoute": "Daily Quote",
          "prayer_times": "PRAYER TIMES",
          "HicriKameri": "Hijri Calendar",
          "language_selection": "Language Selection",
          "location_selection": "Location Selection",
          "vakit": "Time",
          "saat": "Hour",
          "bugun": "Today",
          "tarih_sec": "Select Date",
          "search_city": "Search City",
          "kayitli_sehirler": "Saved Cities",
          "konum_onay": "Confirm Location",
          "location_searching": "Searching Location...",
          "auto_location": "Automatic Location Selection",
          "select_country": "Select Country",
          "search_country": "Search Country",
          "select_region": "Select Region",
          "search_region": "Search Region",

          'page_onyuz': 'Front Page',
          'page_arka': 'Back of the Page',
          'page_sonraki': 'Next Day',
          'page_onceki': 'Previous Day',
          'page_bugun': 'Today',

          'TumDevletlerdeAra': 'Search in all countries',
          'DevletSeciniz': 'Please select a country',
          'EyaletSeciniz': 'Please select a state',
          'SehirSeciniz': 'Please select a city',
          'NamazVakitleriYazi': 'Prayer Times',
          'Harita': 'Map',

          'imsak': 'Fajr',
          'sabah': 'Morning',
          'gunes': 'Tulu',
          'israk': 'Ishrâq',
          'dahve': '',
          'kerahet': '',
          'ogle': 'Zuhr',
          'ikindi': 'Asr',
          'asrisani': '',
          'isfirar': '',
          'aksam': 'Maghrib',
          'istibak': '',
          'yatsi': 'Isha',
          'isaisani': '',
          'geceyarisi': '',
          'teheccud': '',
          'seher': '',
          'kible': '',

//Rumi Aylar
          'RumiAylar[1]': 'K. Sânî',
          'RumiAylar[2]': 'February',
          'RumiAylar[3]': 'March',
          'RumiAylar[4]': 'April',
          'RumiAylar[5]': 'May',
          'RumiAylar[6]': 'June',
          'RumiAylar[7]': 'July',
          'RumiAylar[8]': 'August',
          'RumiAylar[9]': 'September',
          'RumiAylar[10]': 'T. Awwal',
          'RumiAylar[11]': 'T. Sânî',
          'RumiAylar[12]': 'K. Awwal',

//Haftanin Gunleri
          'HaftaninGunleri[1]': 'Monday',
          'HaftaninGunleri[2]': 'Tuesday',
          'HaftaninGunleri[3]': 'Wednesday',
          'HaftaninGunleri[4]': 'Thursday',
          'HaftaninGunleri[5]': 'Friday',
          'HaftaninGunleri[6]': 'Saturday',
          'HaftaninGunleri[7]': 'Sunday',

//Aylar

          'SeneninAylari[1]': 'January',
          'SeneninAylari[2]': 'February',
          'SeneninAylari[3]': 'March',
          'SeneninAylari[4]': 'April',
          'SeneninAylari[5]': 'May',
          'SeneninAylari[6]': 'June',
          'SeneninAylari[7]': 'July',
          'SeneninAylari[8]': 'August',
          'SeneninAylari[9]': 'September',
          'SeneninAylari[10]': 'October',
          'SeneninAylari[11]': 'November',
          'SeneninAylari[12]': 'December',

          'HicriAylar[0]': "MUHARRAM",
          'HicriAylar[1]': "SAFAR",
          'HicriAylar[2]': "RABI'AL-AWWAL",
          'HicriAylar[3]': "RABI'AL-ÂKHIR",
          'HicriAylar[4]': "JAMÂZI'L-AWWAL",
          'HicriAylar[5]': "JAMÂZI'L-ÂKHIR",
          'HicriAylar[6]': "RAJAB",
          'HicriAylar[7]': "SHA'BAN",
          'HicriAylar[8]': "RAMADÂN",
          'HicriAylar[9]': "SHAWWAL",
          'HicriAylar[10]': "DHU'L-QA'DA",
          'HicriAylar[11]': "DHU'L-HIJJA",

          'Yonler[0]': 'North',
          'Yonler[1]': 'South',
          'Yonler[2]': 'East',
          'Yonler[3]': 'West',

          'Alfabetik_Sehir_Listesi': 'Alphabetical City Index',
          'AlfabetikSehirListesi': 'Alphabetical_City_Index',
          'YazSaati': 'Daylight Savings in effect.',

          'AddBookmark': 'Add To Favorites',
          'AnaSayfaYap': 'Set Home Page',
          'AramaSonuclari': 'Search Result',

          'Eyalet_Listesi': '%s_Region_Index',
          'Sehir_Listesi': '%d_%s_City_List',
          'Sanal_Yol_UlkelerListesi': 'Country_List',
          'SehirListesiYazisi': 'CITY LIST',

          'Icin_Namaz_Vakitleri': 'Prayer_Times_For_%s',
          'sehrin_ismini_giriniz': 'Please enter the name of city...',
          'SehirArama': 'City Search',
          'GeriDon': 'Back',

          'Imsakiye': 'IMSAKIYES',
          'LisanImsakiye': 'IMSAKIYES in 44 Language',
          'Irtibat': 'CONTACT',
          'Kitaplar': 'BOOKS',

          'Bayan': 'Girl',
          'Bay': 'Boy',

          'GunlerYazi': 'Days',
          'AylarYazi': 'Months',
          'YillarYazi': 'Years',

          'UlkelerListesi': 'Click here to see the list of countries',
          'UlkeListesi': 'COUNTRY LIST',

          'EyaletListesi': 'Region Index',
          'EyaletIlBolge': 'Eyalet, İl, Bölge',
          'EyaletListesiTr': 'İl, Bölge Listesi',

          'SqlTT': 'mdy',

          'VakitYok':
              'Please contact us via email or fax for the prayer times of this city.',
          'EPosta_adres': 'info@turktakvim.com',
          'fax_no': ' +90 (212) 454 23 87',

          'fax': 'Fax',
          'EPosta': 'E-Mail',
          'website': 'Web Sites',

          'HicriSemsi': 'Hegira Solar',

          'Aylik': 'Monthly Times',
          'Yillik': 'Yearly Times',
          'Yazdir': 'Print',
          'Yaziyi_Gonder': '',
          'Yaziyi_Add_Favourites': 'Add To Favorites',
          'Okunma_Sayisi': 'Hit',
          'Word_Indir': '',
          'Pdf_Indir': 'Download as Pdf',
          'Bu_Yaziyi': 'Print / Download',
          'Diger_aylardaki_namaz_vakitleri': 'The Monthly Prayer Times',
          'RamazanBayrami': '%s Eid-al Fitr Salat Time : <strong>%s</strong>',
          'KurbanBayrami': '%s Eid-al Adha Salat Time : <strong>%s</strong>',
          'KitapIndir': 'Download',

//IcindeGecen = '<span style=""color:##0033CC; font-size:15px;"">Cities with the Exact Name of '<span style=""color:#0033CC; font-weight:bold;"">%s</span>'</span>';
//IsimleriBasliyan = '<span style=""color:##0033CC; font-size:15px;"">Cities that Start with '<span style=""color:#0033CC; font-weight:bold;"">%s</span>'</span>';
          'IcindeGecen': 'Cities with the Exact Name of %s',
          'IsimleriBasliyan': 'Cities that Start with %s',

          'dak': ' min.',
          'GunKisa': 'Daytime shortens ',
          'GunUzun': 'Daytime increases ',
          'Ezani': 'Azânî',
          'EzaniYok': 'Azânî clock is set 0 min.',
          'EzaniSaatYazi': 'Azânî clock ',
          'EzaniIleri': ' +',
          'EzaniGeri': ' minus(-) ',

          'AylikNamazVakitleriYazisi':
              'Prayer Times for <strong>%s %d 2014</strong>',
          'AylikNamazVakitleriYazisi_Title': 'Prayer Times for %s %d 2014',
          'YillikNamazVakitleriYazisi':
              '2014 Prayer Times for <strong>%s</strong>',
          'YillikNamazVakitleriYazisi_Title': '2014 Prayer Times for %s',

          'Arz': 'Latitude',
          'Tul': 'Longitude',
          'Rumi': 'Rumî',

          'Hizir': 'Hizir',
          'Kasim': 'Qasim',
          'YesilHat':
              'The <span style=\'color:green; font-weight:bold;\'>green line</span> extending out from the city is the Qibla direction.',

          'UlkeYazisi': 'Country',
          'EyaletYazisi': 'State',
          'SehirYazisi': 'City',
          'TarihYazisi': 'Date',

//KirmiziVakitler = '<a href=""http://en.turktakvim.com/fecrvesafak.pdf""><strong style='color:#900;'>* Fajr and ‘isha times shown in red color are the times of the last day on which, Fajr time occurs.</strong></a>';
          'YazSaatineGecis':
              'After <strong>%s</strong>, times shown are according to Daylight Saving time',
          'KadirGecesiYazisi':
              '<strong>Qadr Night:</strong> The night between %s and %s.',
          'ImsakVaktiNotu':
              'Imsak time is the time to start fasting and beginning time of morning prayer.',
          'Note': '<strong>Note: </strong>',
          'ImsakiyedekiSabah':
              '<strong>\'Morning\'</strong> time on the imsakiye is the cautioned time of the morning praying.',
          'SabahNamaziNotu':
              'Morning praying can be performed 20 minutes after fajr.',
          'Sehir_Ismi_Girin': 'Please enter the name of city!',
          'AramaYok': 'Sorry! The City being searched not found!',
          'TitleSehirArama': 'City Search',

          'VasatiVakitler': 'Vasatî Times',
          'AzaniVakitler': 'Azânî Times',
          'TurkiyeTakvimi': 'Türkiye Calendar',
          'MesveretTakvimi': 'Meshweret Calendar',
          'ImsakiyeYazisi':
              'HEGIRA %s - GREGORIAN %s, RAMADAN-I SHERIF IMSAKIYE FOR <strong>%s</strong>',
          'ImsakiyeYazisi_Title':
              'Hegira %s - Gregorian %s, Ramadan-i Sherif Imsakiye For %s',

          'KacinciAy': '%d. month',
          'KacinciHafta': '%d. week',
          'AyKacCek': '%d Day of Year',

          'YilinGunu': '%t Day of Year',
          'KalanGunYazi': 'Days remaining : %t',

          'DigerVakitler': 'Other Times',
          'OnemliLinkler': 'Important Links',

          'Menu': 'Menu',
          'Diller': 'Languages',

          'local': 'Present Local Time',

          'remain_imsak': "Time until Fajr",
          'remain_sabah': "Time until Morning",
          'remain_gunes': "Time until Tulu",
          'remain_israk': "Time until Ishrâq",
          'remain_ogle': "Time until Zuhr",
          'remain_ikindi': "Time until Asr",
          'remain_aksam': "Time until Maghrib",
          'remain_yatsi': "Time until Isha",

          'kibleSaatiYazisi':
              "When we face towards the sun at Qibla Time of the day shown in the prayer time tables.",

          'popupBaslik': "Important information about Imsâk time !..",
          'YanlisImsak': "Explanation about wrong Imsâk time",
          'Rasad': "Explanation about Observation",
          'DogruImsak': "Information about correct Imsâk time",

          'imsak_def':
              'It is the end of Shar’î (canonical) night in all four madhhabs. It is the time when the whiteness called fajr sâdiq is seen at one of the points on the line of apparent horizon (ufq-i-zâhirî) in the east. This time is also the beginning of fast.',
          'sabah_def':
              'The first time of the fajr prayer is imsâk time. It will be judicious and safe to perform the fajr prayer 15-20 minutes after the imsâk time written in the Turkiye calendar.',
          'gunes_def':
              'The time of morning prayer ends at the end of solar night, which is when the preceding [upper] limb of the Sun is observed to rise from the line of apparent horizon.',
          'israk_def':
              'It is the time when the following (lower) limb of the Sun is as high as the length of a spear from the line of the apparent horizon, which corresponds to an altitude where its center is 5° above true horizon. It is the end of the karâhat time when the sun is rising.',
          'dahve_def': 'Dahve-i kübrâ vakti Dahve-i kübrâ vakti, oruca niyet etmenin son vaktidir. Dahve-i kübrâ vakti oruc müddetinin, ya'
              'nî şer’î gündüz müddetinin yarısıdır ki, zevâl vaktinden öncedir. Şer'
              'î gündüz, imsâk vakti ile akşam vakti arasındaki müddettir. Ya'
              'nî Dahve-i kübrâ vakti, imsâk ve akşam vakitleri toplamının yarısıdır. Bir gün evvel güneş batmasından, oruc günü (Dahve-i kübrâ)ya kadar, Ramazan orucuna kalb ile niyyet etmek de farzdır. Belli gün olan adak orucunun ve nâfile orucun niyet zemânı da böyledir. Kazâ ve keffâret orucuna ve mu’ayyen olmayan adak oruclarına fecrden (imsâk vaktinden) sonra niyet edilemez.',
          'ogle_def':
              'It starts when shortened shadows start to lengthen. The shar’î time of zuhr continues until the ’asr awwal, which is the time when the shadow of everything longer than its shadow at the time of true zawâl by as much as its height, or until ’asr thânî, which is the time when its shadow’s length increases by twice its height. The former is according to the Two Imâms [Imâm Abû Yûsuf and Imâm Muhammad], and also according to the other three Madhhabs,and the latter is according to al-Imâm al-a’zam.',

          'ikindi_def':
              'Asr is also called asr-i awwal. It is the time when asr-i awwal starts according to the Two Imâms [Imâm Abû Yûsuf and Imâm Muhammad]. It is the same in the other three Madhhabs, too. It is the time when the shadow of everything becomes longer than its shadow at the time of true zawâl by as much as its height.',
        },
        'fa_IR': {
          "share": "اشتراک‌گذاری",
          "daily_event": "رویداد روز",
          "daily_quoute": "سخن روز",
          "prayer_times": "اوقات نماز",
          "HicriKameri": "تقویم هجری",
          "language_selection": "انتخاب زبان",
          "location_selection": "انتخاب مکان",
          "vakit": "زمان",
          "saat": "ساعت",
          "bugun": "امروز",
          "tarih_sec": "انتخاب تاریخ",
          "search_city": "جستجوی شهر",
          "kayitli_sehirler": "شهرهای ذخیره شده",
          "konum_onay": "تایید مکان",
          "location_searching": "در حال جستجوی مکان...",
          "auto_location": "انتخاب خودکار مکان",
          "select_country": "انتخاب کشور",
          "search_country": "جستجوی کشور",
          "select_region": "انتخاب منطقه",
          "search_region": "جستجوی منطقه",

          'page_onyuz': 'روی صفحه',
          'page_arka': 'پشت صفحه',
          'page_sonraki': 'روز بعدی',
          'page_onceki': 'روز قبلی',
          'page_bugun': 'امروز',

          'TumDevletlerdeAra': 'در همه کشورها جستجو کن',
          'DevletSeciniz': 'لطفا یک کشور را انتخاب کنید',
          'EyaletSeciniz': 'لطفا یک ایالت را انتخاب کنید',
          'SehirSeciniz': 'لطفا یک شهر را انتخاب کنید',
          'NamazVakitleriYazi': 'اوقات نماز',
          'Harita': 'نقشه',

//NamazVakitleri : array[],
          'imsak': 'امساک',
          'sabah': 'صبح',
          'gunes': 'آفتاب',
          'israk': 'اشراق',
          'dahve': 'کراهت',
          'kerahet': 'پیشین (ظهر)',
          'ogle': 'دیگر (عصر)',
          'ikindi': 'عصر ثانی',
          'asrisani': 'اصفرار',
          'isfirar': 'شام (مغرب)',
          'aksam': 'اشتباک',
          'istibak': 'خفتن (عشاء)',
          'yatsi': 'عشاء ثانی',
          'isaisani': 'ساعت قبله',
          'geceyarisi': 'ضحوه کبری',
          'teheccud': 'نصف شب',
          'seher': 'تهجد',
          'kible': 'سحر',

          'RumiAylar[1]': 'کانون ثانی',
          'RumiAylar[2]': 'شوباط',
          'RumiAylar[3]': 'مارت',
          'RumiAylar[4]': 'نیسان',
          'RumiAylar[5]': 'مایس',
          'RumiAylar[6]': 'حزیران',
          'RumiAylar[7]': 'تموز',
          'RumiAylar[8]': 'آگست',
          'RumiAylar[9]': 'ایلول',
          'RumiAylar[10]': 'تشرین اول',
          'RumiAylar[11]': 'تشرین ثانی',
          'RumiAylar[12]': 'کانون اول',

          'HaftaninGunleri[7]': 'یکشنبه',
          'HaftaninGunleri[1]': 'دوشنبه',
          'HaftaninGunleri[2]': 'سه شنبه',
          'HaftaninGunleri[3]': 'چهارشنبه',
          'HaftaninGunleri[4]': 'پنج شنبه',
          'HaftaninGunleri[5]': 'جمعه',
          'HaftaninGunleri[6]': 'شنبه',

          'SeneninAylari[1]': 'جنوری (ژانویه)',
          'SeneninAylari[2]': 'فبروری (فوریه)',
          'SeneninAylari[3]': 'مارچ (مارس)',
          'SeneninAylari[4]': 'اپریل (آوریل)',
          'SeneninAylari[5]': 'می (مه)',
          'SeneninAylari[6]': 'جون (ژوئن)',
          'SeneninAylari[7]': 'جولای (ژوئیه)',
          'SeneninAylari[8]': 'اگست (اوت)',
          'SeneninAylari[9]': 'سپتمبر (سپتامبر)',
          'SeneninAylari[10]': 'اکتوبر (اکتبر)',
          'SeneninAylari[11]': 'نوامبر',
          'SeneninAylari[12]': 'دسمبر (دسامبر)',

          'HicriAylar[0]': "محرم",
          'HicriAylar[1]': "صفر",
          'HicriAylar[2]': "ربیع الاول",
          'HicriAylar[3]': "ربیع الآخر",
          'HicriAylar[4]': "جماذی الاول",
          'HicriAylar[5]': "جماذی الآخر",
          'HicriAylar[6]': "رجب",
          'HicriAylar[7]': "شعبان",
          'HicriAylar[8]': "رمضان",
          'HicriAylar[9]': "شوال",
          'HicriAylar[10]': "ذی القعده",
          'HicriAylar[11]': "ذی الحجه",

          'SemsiAylar[1]': 'حمل (فروردین)',
          'SemsiAylar[2]': 'ثور (اردیبهشت)',
          'SemsiAylar[3]': 'جوزا (خرداد)',
          'SemsiAylar[4]': 'سرطان (تیر)',
          'SemsiAylar[5]': 'اسد (مرداد)',
          'SemsiAylar[6]': 'سنبله (شهریور)',
          'SemsiAylar[7]': 'میزان (مهر)',
          'SemsiAylar[8]': 'عقرب (آبان)',
          'SemsiAylar[9]': 'قوس (آذر)',
          'SemsiAylar[10]': 'جدی (دی)',
          'SemsiAylar[11]': 'دلو (بهمن)',
          'SemsiAylar[12]': 'حوت (اسفند)',

          'Yonler[0]': 'شمال',
          'Yonler[1]': 'جنوب',
          'Yonler[2]': 'شرق',
          'Yonler[3]': 'غرب',

          'Alfabetik_Sehir_Listesi': 'لیست شهرها بصورت ردیف الفبایی',
          'AlfabetikSehirListesi': 'Alfabetik_%C5%9Eehir_Listesi',
          'YazSaati': 'ساعت تابستانی تطبیق کرده میشود.',

          'AddBookmark': 'به بیشترین استفاده شده ها اضافه کن',
          'AnaSayfaYap': 'صفحه اصلی ام کنید',
          'AramaSonuclari': 'نتیجه جستجوها',

          'Eyalet_Listesi': '%s_Eyalet_İl_Bolge_Listesi',
          'Sehir_Listesi': '%d_%s_لیست شهرها',
          'Sanal_Yol_UlkelerListesi': 'Ulkeler_Listesi',
          'SehirListesiYazisi': 'لیست شهرها',

          'Icin_Namaz_Vakitleri': '%s_Icin_Namaz_Vakitleri',
          'sehrin_ismini_giriniz': 'لطفا نام شهر را وارد شوید (بنویسید)...',
          'SehirArama': 'جستجوی شهر',
          'GeriDon': 'برگرد',

          'Imsakiye': 'امساکیه',
          'LisanImsakiye': 'امساکیه در ۴۴ زبان',
          'Irtibat': 'ارتباط',
          'Kitaplar': 'کتابها',

          'Bayan': 'دختر(زن)',
          'Bay': 'مرد',

          'GunlerYazi': 'روزها',
          'AylarYazi': 'ماه ها',
          'YillarYazi': 'سالها',

          'UlkelerListesi': 'برای لیست کشورها کلیک کنید',
          'UlkeListesi': 'لیست کشورها',

          'EyaletListesi': 'لیست ایالت, شهرستان (ولایت), منطقه',
          'EyaletIlBolge': 'ایالت, شهرستان (ولایت), منطقه',
          'EyaletListesiTr': 'لیست شهرستان (ولایت), منطقه',

          'SqlTT': 'dmy',

          'VakitYok':
              'برای اوقات نماز شهری که انتخاب کرده اید لطف کنید از طریق ای میل ویا نمابر (فاکس) ارتباط برقرار کنید.',
          'EPosta_adres':
              '<a href=\'mailto:info@turktakvim.com\'> info@turktakvim.com</a>',
          'fax_no': ' +90 (212) 454 23 87',

          'fax': 'نمابر (فاکس)',
          'EPosta': 'ای میل',
          'website': 'آدرس های وب سایت',

          'HicriSemsi': 'هجری شمسی',

          'Aylik': 'اوقات ماهانه',
          'Yillik': 'اوقات سالانه',
          'Yazdir': 'بنویسان (چاپ کن)',
          'Yaziyi_Gonder': 'به دوست خود بفرست',
          'Yaziyi_Add_Favourites':
              'این نوشته را به بیشترین استفاده شده ها اضافه کن',
          'Okunma_Sayisi': 'تعداد خوانده شدن',
          'Word_Indir': 'بصورت ورد دانلود کن',
          'Pdf_Indir': 'بصورت پی دی اف دانلود کن',
          'Bu_Yaziyi': 'این نوشته را',
          'Diger_aylardaki_namaz_vakitleri': 'اوقات نماز در ماه های دیگر',
          'RamazanBayrami': 'وقت نماز عید فطر %s: <strong>%s</strong>',
          'KurbanBayrami': 'وقت نماز عید قربان %s: <strong>%s</strong>',
          'KitapIndir': 'کتاب %s را دانلود کن',
          'IcindeGecen': 'شهرهایی که داخل اسمشان %s وجود دارد',
          'IsimleriBasliyan': 'شهرهایی که اسمشان با %s شروع می شود',

          'dak': ' دقیقه',
          'GunKisa': 'کوتاه شدن روز ',
          'GunUzun': 'طولانی شدن روز ',
          'Ezani': 'اذانی (محلی)',
          'EzaniYok': 'امروز, ساعت اذانی عیار کرده نمی شود.',
          'EzaniSaatYazi': 'ساعت اذانی ',
          'EzaniIleri': ' دقیقه به جلو برده میشود.',
          'EzaniGeri': ' دقیقه به عقب برده میشود.',

          'Arz': 'عرض',
          'Tul': 'طول',
          'Rumi': 'رومی',

          'Hizir': 'خضر',
          'Kasim': 'قاسم',
          'YesilHat':
              'خط <span style="color:green; font-weight:bold;">سبز</span> یکه از شهر بیرون میآید استقامت قبله است.',

          'UlkeYazisi': 'کشور',
          'EyaletYazisi': 'ایالت',
          'SehirYazisi': 'شهر',
          'TarihYazisi': 'تاریخ',

          'KirmiziVakitler':
              '<strong>* اوقات امساک و خفتن (عشاء) که به رنگ سرخ است, اوقات آخرین روزی می باشد که در آن روز, امساک بوقوع پیوسته است.</strong>',
          'YazSaatineGecis':
              'اوقات از تاریخ <strong>%s</strong> به بعد, با در نظر گرفتن عبور به تطبیق ساعت تابستانی آماده گردیده است.',
          'KadirGecesiYazisi':
              ' <strong>شب قدر: شبی است که </strong> روز %s را به روز %s وصل می کند.',
          'ImsakVaktiNotu': 'وقت امساک, زمان شروع کردن به روزه است.',
          'Note': '<strong>دقت: </strong>',
          'ImsakiyedekiSabah':
              'وقت "صبح" که در امساکيه ذکر شده است، وقت اول نماز صبح ميباشد.',
          'SabahNamaziNotu':
              'نماز صبح، ۲۰ دقیقه بعد از امساک میتواند ادا کرده شود.',
          'Sehir_Ismi_Girin': 'لطفا اسم شهر را وارد شوید (بنویسید)!',
          'AramaYok': 'شهر جستجو شده یافته نشد!',
          'TitleSehirArama': 'جستجوی شهر',

          'VasatiVakitler': 'اوقات وسطی',
          'AzaniVakitler': 'اوقات اذانی',
          'TurkiyeTakvimi': 'تقویم ترکیه',
          'MesveretTakvimi': 'تقویم مشورت',
//'ImsakiyeYazisi' : 'امساکیه رمضان شریف برای <strong>%3$s</strong>, سال %1$s هجری قمری, %2$s میلادی, ۱۳۹۴ شمسی',
          'ImsakiyeYazisi_Title':
              'امساکیه رمضان شریف برای %s, سال 1434 هجری قمری, 2013 میلادی',

          'KacinciAy': '%d.ماه',
          'KacinciHafta': '%d. هفته',
          'AyKacCek': '%d. روز',

          'YilinGunu': '%t امین روز سال',
          'KalanGunYazi': 'روز باقی مانده: %t',

          'DigerVakitler': 'اوقات دیگر',
          'OnemliLinkler': 'لینک های مهم',

          'Menu': 'منو',
          'Diller': 'زبان ها',

          'local': 'ساعت محلی',

          'remain_imsak': "مدت مانده به امساک",
          'remain_sabah': "مدت مانده به صبح",
          'remain_gunes': "مدت مانده به طلوع آفتاب",
          'remain_israk': "مدت مانده به زمان اشراق",
          'remain_ogle': "مدت مانده به زمان پیشین",
          'remain_ikindi': "مدت مانده به زمان دیگر",
          'remain_aksam': "مدت مانده به زمان شام",
          'remain_yatsi': "مدت مانده به زمان خفتن",

          'kibleSaatiYazisi':
              ".در وقت ساعت قبله، کسیکه به آفتاب متوجه شود (به طرف آفتاب رو بیاورد)، به طرف قبله متوجه شده است",

          'popupBaslik': "Important information about Imsâk time !..",
          'YanlisImsak': "Explanation about wrong Imsâk time",
          'Rasad': "Explanation about Observation",
          'DogruImsak': "Information about correct Imsâk time",
        },
        'bs_BA': {
          "share": "Podijeli",
          "daily_event": "Dnevni Događaj",
          "daily_quoute": "Dnevni Citat",
          "prayer_times": "VREMENA NAMAZA",
          "HicriKameri": "Hidžretski Kalendar",
          "language_selection": "Izbor Jezika",
          "location_selection": "Izbor Lokacije",
          "vakit": "Vrijeme",
          "saat": "Sat",
          "bugun": "Danas",
          "tarih_sec": "Izaberite Datum",
          "search_city": "Pretraži Grad",
          "kayitli_sehirler": "Sačuvani Gradovi",
          "konum_onay": "Potvrdi Lokaciju",
          "location_searching": "Tražim Lokaciju...",
          "auto_location": "Automatski Izbor Lokacije",
          "select_country": "Izaberite Državu",
          "search_country": "Pretraži Državu",
          "select_region": "Izaberite Regiju",
          "search_region": "Pretraži Regiju",
          "daily_quote": "Citati dana",
        

          'page_onyuz': 'Prednja strana',
          'page_arka': 'Zadnji strana',
          'page_sonraki': 'Sljedeći dan',
          'page_onceki': 'Prethodni dan',
          'page_bugun': 'Danas',

//Namaz Vakitleri Yazilari
          'TumDevletlerdeAra': 'Pretraga u svim državama',
          'DevletSeciniz': 'Molimo odaberite država',
          'EyaletSeciniz': 'Molimo odaberite država',
          'SehirSeciniz': 'Molimo odaberite grada',
          'NamazVakitleriYazi': 'Namaz vrijeme',
          'Harita': 'Karta',

//NamazVakitleri' : array[],
          'imsak': 'Imsak',
          'sabah': 'Jutro',
          'gunes': 'Sunce',
          'israk': 'Išrak',
          'dahve': 'Kerahat',
          'kerahet': 'Podne',
          'ogle': 'Ikindija',
          'ikindi': 'Asr-i Sani',
          'asrisani': 'Isfirar',
          'isfirar': 'Akšam',
          'aksam': 'İştibak',
          'istibak': 'Jacija',
          'yatsi': 'İşa-ı Sani',
          'isaisani': 'Qibla sati',
          'geceyarisi': 'Dahve-i Kübrâ',
          'teheccud': 'Polonoći',
          'seher': 'teheccüd',
          'kible': 'Kıble',

//Rumi Aylar
          'RumiAylar[1]': 'Kânûn-i Sânî',
          'RumiAylar[2]': 'Februar',
          'RumiAylar[3]': 'Mart',
          'RumiAylar[4]': 'April ',
          'RumiAylar[5]': 'MAJ',
          'RumiAylar[6]': 'Juni',
          'RumiAylar[7]': 'Juli',
          'RumiAylar[8]': 'Avgust',
          'RumiAylar[9]': 'Septembar',
          'RumiAylar[10]': 'Teşrîn-i Evvel',
          'RumiAylar[11]': 'Teşrîn-i Sânî',
          'RumiAylar[12]': 'Kânûn-i Evvel',

//Haftanin Gunleri
          'HaftaninGunleri[7]': 'Nedjelja',
          'HaftaninGunleri[1]': 'Ponedjeljak',
          'HaftaninGunleri[2]': 'Utorak',
          'HaftaninGunleri[3]': 'Srijeda',
          'HaftaninGunleri[4]': 'Četvrtak',
          'HaftaninGunleri[5]': 'Petak',
          'HaftaninGunleri[6]': 'Subota',

//Aylar

          'SeneninAylari[1]': 'januar',
          'SeneninAylari[2]': 'Februar',
          'SeneninAylari[3]': 'Mart',
          'SeneninAylari[4]': 'April',
          'SeneninAylari[5]': 'Maj',
          'SeneninAylari[6]': 'Juni',
          'SeneninAylari[7]': 'Juli',
          'SeneninAylari[8]': 'Avgust',
          'SeneninAylari[9]': 'Septembar',
          'SeneninAylari[10]': 'Oktobar',
          'SeneninAylari[11]': 'Novembar',
          'SeneninAylari[12]': 'Decembar',

          'HicriAylar[0]': "MUHARREM",
          'HicriAylar[1]': "SAFER",
          'HicriAylar[2]': "REBÎ'UL-evvel",
          'HicriAylar[3]': "REBÎ'UL-Ahr",
          'HicriAylar[4]': "CEMÂZIL-EVVEL",
          'HicriAylar[5]': "CEMÂZIL-ÂHIR",
          'HicriAylar[6]': "REDŽEB",
          'HicriAylar[7]': "ŠA'BÂN",
          'HicriAylar[8]': "RAMEZÂN",
          'HicriAylar[9]': "ŠEVVÂL",
          'HicriAylar[10]': "ZIL-KA'DE",
          'HicriAylar[11]': "ZIL-HİCCE",

          'Yonler[0]': 'Sjever',
          'Yonler[1]': 'Jug',
          'Yonler[2]': 'Istok',
          'Yonler[3]': 'Zapad',

          'Alfabetik_Sehir_Listesi': 'Alfabetski list gradova',
          'AlfabetikSehirListesi': 'Ima ljetno računanje vremena',
          'YazSaati': 'Ima ljetno računanje vremena',

          'AddBookmark': 'Dodaj u favorite',
          'AnaSayfaYap': 'Dobiti svoju početnu stranicu',
          'AramaSonuclari': 'Rezultati pretrage',

          'Eyalet_Listesi': '%s_Eyalet_İl_Bolge_Listesi',
          'Sehir_Listesi': '%d_%s_Sehir_Listesi',
          'Sanal_Yol_UlkelerListesi': 'Ulkeler_Listesi',
          'SehirListesiYazisi': 'List gradova',

          'Icin_Namaz_Vakitleri': '%s_Icin_Namaz_Vakitleri',
          'sehrin_ismini_giriniz': 'Unesite naziv grada ...',
          'SehirArama': 'Pretraga grada',
          'GeriDon': 'Natrag',

          'Imsakiye': 'Imsakije',
          'LisanImsakiye': '44 jezika Imsakije',
          'Irtibat': 'KONTAKT',
          'Kitaplar': 'KNJIGE',

          'Bayan': 'Devojka',
          'Bay': 'Muško',

          'GunlerYazi': 'Dani',
          'AylarYazi': 'Mjeseci',
          'YillarYazi': 'Godine',

          'UlkelerListesi': 'Kliknite za list gradova',
          'UlkeListesi': 'LIST GRADOVA',

          'EyaletListesi': 'Država, Grad, Zona List',
          'EyaletIlBolge': 'Država, Grad, Zona',
          'EyaletListesiTr': 'Grad, Zona List',

          'SqlTT': 'dmy',

          'VakitYok':
              'molimo vas  za  grad vrijeme namaz po vašem izboru, pošaljite nas e-mail  ili  kontaktirajte nas putem faksa.',
          'EPosta_adres':
              '<a href=\'mailto:info@turktakvim.com\'> info@turktakvim.com</a>',
          'fax_no': ' +90 (212) 454 23 87',

          'fax': 'Fax',
          'EPosta': 'E-Mail',
          'website': 'Web adrese',

          'HicriSemsi': 'Hicrî Şemsî',

          'Aylik': 'Mjesečne vrijeme',
          'Yillik': 'Godišnje vrijeme',
          'Yazdir': 'Ispis',
          'Yaziyi_Gonder': 'Pošalji prijatelju',
          'Yaziyi_Add_Favourites': 'Ovaj član Dodaj u favorite',
          'Okunma_Sayisi': 'Čitanje Broj',
          'Word_Indir': 'Download kao u Word',
          'Pdf_Indir': 'Download kao u Pdf',
          'Bu_Yaziyi': 'Ovaj član',
          'Diger_aylardaki_namaz_vakitleri': 'Vrijeme namaza u druge mjesecima',
          'RamazanBayrami':
              '%s  Verijeme Ramazan Bajram Namaza : <strong>%s</strong>',
          'KurbanBayrami':
              '%s Vrijeme Kurban Bajram Namaza : <strong>%s</strong>',
          'KitapIndir': 'Download knjige %s',

          'IcindeGecen': 'U nazivima gradova %s prolaznika',
          'IsimleriBasliyan': 'u nazivima  gradove %s koji počinju sa ',

          'dak': ' minuta',
          'GunKisa': 'Dan skraćuje ',
          'GunUzun': 'Dan proširenje ',
          'Ezani': 'Ezânî (zona)',
          'EzaniYok': 'Danas ezânî vremena nije postavljen.',
          'EzaniSaatYazi': 'Ezânî sâat ',
          'EzaniIleri': ' Minuta se uzimaju naprijed.',
          'EzaniGeri': ' Minuta se uzimaju nazad.',

          'AylikNamazVakitleriYazisi':
              'Vrijeme namaza za <strong>%s</strong> u <strong>%d 2014</strong>',
          'AylikNamazVakitleriYazisi_Title': 'Vrijeme namaza za %s u %d 2014',
          'YillikNamazVakitleriYazisi':
              'Vrijeme namaza za <strong>%s</strong> u <strong>2014</strong> Godina',
          'YillikNamazVakitleriYazisi_Title':
              'Vrijeme namaza za %s u 2014 Godina',

          'Arz': 'Visina',
          'Tul': 'Dužina',
          'Rumi': 'Rûmî',

          'Hizir': 'Hızır',
          'Kasim': 'Kasım',
          'YesilHat':
              '<span style="color:green; font-weight:bold;">Zelena</span> linija od grada, je pravac kible. ',

          'UlkeYazisi': 'Država',
          'EyaletYazisi': 'State',
          'SehirYazisi': 'Grad',
          'TarihYazisi': 'Datum',

          'KirmiziVakitler':
              '<strong>* Crven obojen Vrijeme je za imsak i jacije, su na zadnji dan imsak vremena.</strong>',
          'YazSaatineGecis':
              'Od <strong>%s</strong>, je pripremljen uzimajući u obzir ljetnog vremena.',
          'KadirGecesiYazisi':
              '<strong>Veče Kadr :</strong> U %s je u noći između %s.',
          'ImsakVaktiNotu':
              'Imsak vrejeme, vrijeme je da počnete post i  po prvi vrijeme na sabah namaz.',
          'Note': '<strong>Nota: </strong>',
          'ImsakiyedekiSabah':
              'U imsakiju \'sabah\' vrijeme je sabahski oprezni(rezervni) vrijeme.',
          'SabahNamaziNotu':
              'Sabahski namaz,  može klanja nakon 20 minuta imsaka. ',
          'Sehir_Ismi_Girin': 'Unesite ime svog grada!',
          'AramaYok': 'Tražim grad pronađeno!',
          'TitleSehirArama': 'Pretraga grada',

          'VasatiVakitler': 'Vasatî Vrijeme',
          'AzaniVakitler': 'Ezânî Vrijeme',
          'TurkiyeTakvimi': 'Turska Kalendar',
          'MesveretTakvimi': 'Konsultacije Kalendar',
          'ImsakiyeYazisi':
              'GODINA HIDŽRI %s, MILADI %s ,  RAMAZAN-I ŠERIF IMSAKIJE ZA <strong>%s</strong>',
          'ImsakiyeYazisi_Title':
              'GODINA HIDŽRI 1435, MILADI 2014 ,  RAMAZAN-I ŠERIF IMSAKIJE ZA %s',

          'KacinciAy': '%d. Mjesec',
          'KacinciHafta': '%d. Tjedan',
          'AyKacCek': '%d Dana',

          'YilinGunu': '%t. dan u godini ',
          'KalanGunYazi': 'Preostalo dana : %t',

          'DigerVakitler': 'Drugi Vrijeme',
          'OnemliLinkler': 'Važni linkovi',

          'Menu': 'Meni',
          'Diller': 'Jezici',

          'local': 'Lokalno vrijeme',

          'remain_imsak': "Vrijeme do imsaka",
          'remain_sabah': "Vrijeme do jutro",
          'remain_gunes': "Vrijeme do sunca",
          'remain_israk': "Vrijeme do išrak",
          'remain_ogle': "Vrijeme do podne",
          'remain_ikindi': "Vrijeme do ikindije",
          'remain_aksam': "Vrijeme do akšama",
          'remain_yatsi': "Vrijeme do jacije",

          'kibleSaatiYazisi':
              "Po satu kible ako se neko bude okretao prema suncu ,to znaci da se on okrece prema kibli",

          'popupBaslik': "Important information about Imsâk time !..",
          'YanlisImsak': "Explanation about wrong Imsâk time",
          'Rasad': "Explanation about Observation",
          'DogruImsak': "Information about correct Imsâk time",
        },
        'az_AZ': {
          "share": "Paylaş",
          "daily_event": "Günün Hadisəsi",
          "daily_quoute": "Günün Sözləri",
          "prayer_times": "NAMAZ VAXTLARI",
          "HicriKameri": "Hicri Təqvim",
          "language_selection": "Dil Seçimi",
          "location_selection": "Yer Seçimi",
          "vakit": "Vaxt",
          "saat": "Saat",
          "bugun": "Bugün",
          "tarih_sec": "Tarixi Seç",
          "search_city": "Şəhər Axtar",
          "kayitli_sehirler": "Qeyd Olunmuş Şəhərlər",
          "konum_onay": "Yeri Təsdiq Et",
          "location_searching": "Yer Axtarılır...",
          "auto_location": "Avtomatik Yer Seçimi",
          "select_country": "Ölkəni Seç",
          "search_country": "Ölkəni Axtar",
          "select_region": "Rayonu Seç",
          "search_region": "Rayonu Axtar",

          'page_onyuz': 'Ön Teref',
          'page_arka': 'Arxa Terefdeki',
          'page_sonraki': 'Sonrakı Gün',
          'page_onceki': 'Evvelki Gün',
          'page_bugun': 'Bugün',

//Namaz Vakitleri Yazilari (Bakılacak !)
          'TumDevletlerdeAra': 'Bütün dövlətlərdə Axtar',
          'DevletSeciniz': 'Lütfen Bir Dövlət Seçiminizi edin',
          'EyaletSeciniz': 'Lütfen Bir Əyalət Seçiminizi edin',
          'SehirSeciniz': 'Lütfen Bir şəhər seçin',
          'NamazVakitleriYazi': 'Namaz Vaxtları',
          'Harita': 'Xəritə',

//NamazVakitleri : array[],
          'imsak': 'Fәcr',
          'sabah': 'Səhər',
          'gunes': 'Günәş',
          'israk': 'İşrak',
          'dahve': '',
          'kerahet': 'Zöhr',
          'ogle': 'İkindi',
          'ikindi': '',
          'asrisani': '',
          'isfirar': 'Axşam',
          'aksam': '',
          'istibak': 'İşa',
          'yatsi': '',
          'isaisani': 'Kıble Sâati',

//Rumi Aylar
          'RumiAylar[1]': 'Kânûn-i Sânî',
          'RumiAylar[2]': 'Fevral',
          'RumiAylar[3]': 'Mart',
          'RumiAylar[4]': 'Aprel',
          'RumiAylar[5]': 'May',
          'RumiAylar[6]': 'İyun',
          'RumiAylar[7]': 'İyul',
          'RumiAylar[8]': 'Avqust',
          'RumiAylar[9]': 'Sentyabr',
          'RumiAylar[10]': 'Teşrîn-i Evvel',
          'RumiAylar[11]': 'Teşrîn-i Sânî',
          'RumiAylar[12]': 'Kânûn-i Evvel',

//Haftanin Gunleri
          'HaftaninGunleri[7]': 'Bazar',
          'HaftaninGunleri[1]': 'Bazar Ertәsi',
          'HaftaninGunleri[2]': 'Çәrşәnbә axşamı',
          'HaftaninGunleri[3]': 'Çәrşәnbә',
          'HaftaninGunleri[4]': 'Cümә axşamı',
          'HaftaninGunleri[5]': 'Cümә',
          'HaftaninGunleri[6]': 'Şәnbә',

//Aylar

          'SeneninAylari[1]': 'Yanvar',
          'SeneninAylari[2]': 'Fevral',
          'SeneninAylari[3]': 'Mart',
          'SeneninAylari[4]': 'Aprel',
          'SeneninAylari[5]': 'May',
          'SeneninAylari[6]': 'İyun',
          'SeneninAylari[7]': 'İyul',
          'SeneninAylari[8]': 'Avqust',
          'SeneninAylari[9]': 'Sentyabr',
          'SeneninAylari[10]': 'Oktyabr',
          'SeneninAylari[11]': 'Noyabr',
          'SeneninAylari[12]': 'Dekabr',

          'HicriAylar[0]': "Mәhәrrәm",
          'HicriAylar[1]': "Sәfәr",
          'HicriAylar[2]': "Rәbi'ül-әvvәl",
          'HicriAylar[3]': "Rәbi'ül-Axir",
          'HicriAylar[4]': "Cәmazil-әvvәl",
          'HicriAylar[5]': "Cәmazil-Axir",
          'HicriAylar[6]': "Rәcәb",
          'HicriAylar[7]': "Şaban",
          'HicriAylar[8]': "Ramazan",
          'HicriAylar[9]': "Şәvval",
          'HicriAylar[10]': "Zil-kadә",
          'HicriAylar[11]': "Zil-Hiccә",

          'Yonler[0]': 'Şimal',
          'Yonler[1]': 'Cәnub',
          'Yonler[2]': 'Şәrq',
          'Yonler[3]': 'Qәrb',

          'Alfabetik_Sehir_Listesi': 'Əlifbadıq Şəhər Siyahısı',
          'AlfabetikSehirListesi': 'Əlifbadıq Şəhər Siyahısı',
          'YazSaati': 'Yay saatı istifade olunur.',

          'AddBookmark': 'әn çox istifadә olunanlara әlavә elә',
          'AnaSayfaYap': 'ana sehifem olaraq qalsın',
          'AramaSonuclari': 'Axtarış nəticələri',

          'Eyalet_Listesi': '%s_Eyalet_İl_Bolge_Listesi',
          'Sehir_Listesi': '%d_%s_Sehir_Listesi',
          'Sanal_Yol_UlkelerListesi': 'Ulkeler_Listesi',
          'SehirListesiYazisi': 'Əlifbadıq Şəhər Siyahısı',

          'Icin_Namaz_Vakitleri': '%s_Icin_Namaz_Vaxtleri',
          'sehrin_ismini_giriniz': 'Zəhmət olmasa şəhəri yazın...',
          'SehirArama': 'Şәhәr axtarma',
          'GeriDon': '',

          'Imsakiye': 'İmsakiyə',
          'LisanImsakiye': '44 DILDE İMSAKİYA',
          'Irtibat': 'Elaga Vasitesi',
          'Kitaplar': '',

          'Bayan': 'Xanım',
          'Bay': 'Cənab',

          'GunlerYazi': 'g&#252;nler',
          'AylarYazi': 'aylar',
          'YillarYazi': 'iller',

          'UlkelerListesi':
              '&#214;lk&#1241;l&#1241;r list&#1241;sini g&#246;rm&#1241;k &#252;&#231;&#252;n',
          'UlkeListesi': 'ÖLKӘ LISTӘSI',

          'EyaletListesi': 'Əyalət, Şəhər, Bölgə Siyahısı',
          'EyaletIlBolge': 'Əyalət, Şəhər, Bölgə',
          'EyaletListesiTr': '',

          'SqlTT': 'dmy',

          'VakitYok':
              'Xahiş olunur seçdiyiniz namaz vaxtları üçün bizimlə e-poçt və yaxud fax vasitəsi ilə əlaqə saxlayasınız.',
          'EPosta_adres':
              '<a href=\'mailto:info@turktakvim.com\'> info@turktakvim.com</a>',
          'fax_no': ' +90 (212) 454 23 87',

          'fax': 'Fax',
          'EPosta': 'E-Poçt',
          'website': 'Websaytlar',

          'HicriSemsi': 'Hicrî Şemsî',

          'Aylik': 'AYLIQ VAXTLAR',
          'Yillik': '&#304;LL&#304;K VAXTLAR',
          'Yazdir': 'Yazd&#305;r',
          'Yaziyi_Gonder': 'Dostuna Göndər',
          'Yaziyi_Add_Favourites': 'әn çox istifadә olunanlara әlavә elә',
          'Okunma_Sayisi': 'Okunma Say&#305;s&#305;',
          'Word_Indir': 'Word olaraq indir',
          'Pdf_Indir': 'Pdf kimi kampyuterden  köçürtrmek',
          'Bu_Yaziyi': 'Bu yazını',
          'Diger_aylardaki_namaz_vakitleri':
              'Sonrakı (başka) aylardakı namaz vaxıtları',
          'RamazanBayrami':
              '%s ramazan bayramı namaz vaxtı : <strong>%s</strong>',
          'KurbanBayrami':
              '%s günü qurban bayramı namaz vaxtı : <strong>%s</strong>',
          'KitapIndir': '%s_', //Bakılacak !

          'IcindeGecen': 'İsimleri içinde %s olan şәhәrlәr',
          'IsimleriBasliyan': 'Adlarının içәrisindә %s ile başlayan şәhәrlәr',

          'dak': ' deqiqe',
          'GunKisa': 'Günün Qısalması ',
          'GunUzun': 'Günün Uzanması ',
          'Ezani': 'Azan (vaxtları)',
          'EzaniYok': 'Bu gün azan vaxtları teyin edilmir (verilmez).',
          'EzaniSaatYazi': 'Azan Vaxtı ',
          'EzaniIleri': ' degige qabağa çekilir.',
          'EzaniGeri': ' degige arxaya çekilir.',

          'AylikNamazVakitleriYazisi':
              '<strong>%s</strong> üçün <strong> 2014 cu İlin %d </strong> ayının namaz vaxtları',
          'AylikNamazVakitleriYazisi_Title':
              '%s üçün 2014 cu İlin %d  ayının namaz vaxtları',
          'YillikNamazVakitleriYazisi':
              '<strong>%s</strong> üçün <strong>2014</strong> cu ilin namaz vaxtları',
          'YillikNamazVakitleriYazisi_Title':
              '%s üçün <strong>2014</strong> cu ilin namaz vaxtları',

          'Arz': 'Paralel',
          'Tul': 'Meridian',
          'Rumi': 'Rûmî',

          'Hizir': 'Hızır',
          'Kasim': 'Kasım',
          'YesilHat':
              'Şəhərdən çıxan  <span style=\'color:green; font-weight:bold;\'>yaşıl xətt</span> , qiblə istiqamətini göstərir.',

          'UlkeYazisi': 'Ölke',
          'EyaletYazisi': 'Əyalət',
          'SehirYazisi': 'Şәhәr',
          'TarihYazisi': 'Tarix',

//KirmiziVakitler : '<a href=''http://www.turktakvim.com/fecrvesafak.pdf'' style=''text-decoration:none;'' target=''_blank''><strong style=//color:#900;//>* Kırmızı İmsak ve yatsı vakitleri, imsakin olduğu en son günün vakitleridir.</strong></a>';
          'YazSaatineGecis':
              '<strong>%s</strong> tarixindən etibarən namaz vaxtları yay saatı istifadəsi nəzərə alınaraq hazırlanmışdır.',
          'KadirGecesiYazisi':
              '<strong>Qedir Gecesi:</strong> %s günü %s gününe bağlayan gecedir.',
          'ImsakVaktiNotu':
              'İmsak  vaxtı, oruca başlanma vaxtıdır ve sübh namazının da birinci vaxtıdır.',
          'Note': '<strong>Not: </strong>',
          'ImsakiyedekiSabah':
              'İmsakiyədə \'Səhər\' vaxtı, sübh namazının  ehtiyatlı  vaxtıdır.',
          'SabahNamaziNotu':
              'Səhər namazı İmsaktan 20 dəqiqə sonra qılına bilər.',
          'Sehir_Ismi_Girin': 'Zəhmət olmasa şəhəri yazın!',
          'AramaYok': 'Tapılmadı!',
          'TitleSehirArama': 'Şәhәr axtarma',

          'VasatiVakitler': 'Vasati Vaxtları',
          'AzaniVakitler': 'Azan Vaxtları',
          'TurkiyeTakvimi': 'Türkiye Teqvimi',
          'MesveretTakvimi': '',
          'ImsakiyeYazisi':
              'Hicri %s, Miladi %s Cu İl, <strong>%s</strong> Üçün Ramazan-i Şerif İmsaqı',
          'ImsakiyeYazisi_Title': '',

          'KacinciAy': '%d. Ay',
          'KacinciHafta': '%d. Hafta',
          'AyKacCek': '%d Gün',

          'YilinGunu': 'İlin %t. Günü',
          'KalanGunYazi': 'Qalan gün : %t',

          'DigerVakitler': 'Digər Vaxtlar',
          'OnemliLinkler': 'Əhəmiyyətli Linklər',

          'Menu': 'Menyu',
          'Diller': 'Dillər',

          'local': 'Yerli vaxt',

          'remain_imsak': "Fәcrә qalan vaxt",
          'remain_sabah': "Səhər qalan vaxt",
          'remain_gunes': "Günәşә qalan vaxt",
          'remain_israk': "İşrakә qalan vaxt",
          'remain_ogle': "Zöhrә qalan vaxt",
          'remain_ikindi': "İkindiyә qalan vaxt",
          'remain_aksam': "Axşama qalan vaxt",
          'remain_yatsi': "İşaya qalan vaxt",

          'kibleSaatiYazisi':
              "Qiblə Saatı Vaxtında Günəşə dönən,Qibləyə dönmüş sayılır.",

          'popupBaslik': "Important information about Imsâk time !..",
          'YanlisImsak': "Explanation about wrong Imsâk time",
          'Rasad': "Explanation about Observation",
          'DogruImsak': "Information about correct Imsâk time",
        },
        'ar_SA': {
          "share": "مشاركة",
          "daily_event": "حدث اليوم",
          "daily_quoute": "اقتباس اليوم",
          "prayer_times": "مواقيت الصلاة",
          "HicriKameri": "التقويم الهجري",
          "language_selection": "اختيار اللغة",
          "location_selection": "اختيار الموقع",
          "vakit": "الوقت",
          "saat": "الساعة",
          "bugun": "اليوم",
          "tarih_sec": "اختيار التاريخ",
          "search_city": "بحث عن مدينة",
          "kayitli_sehirler": "المدن المحفوظة",
          "konum_onay": "تأكيد الموقع",
          "location_searching": "جارٍ البحث عن الموقع...",
          "auto_location": "اختيار الموقع التلقائي",
          "select_country": "اختيار الدولة",
          "search_country": "البحث عن دولة",
          "select_region": "اختيار المنطقة",
          "search_region": "البحث عن منطقة",

          "daily_quote": "اقتباس اليوم",

          'page_onyuz': 'الوَجهُ الأَمَامِيُّ',
          'page_arka ': 'الوَرَقَةُ الخَلفِيَّةُ',
          'page_sonraki': 'اليومُ التَّالي',
          'page_onceki ': 'اليَومُ السَّابِقُ',
          'page_bugun  ': 'اليَومُ',

//Namaz Vakitleri Yazilari
          'TumDevletlerdeAra': 'اِبحَث في كُلِّ الدُّوَلِ',
          'DevletSeciniz': 'يُرجَى تَحدِيدُ دَولَة',
          'EyaletSeciniz': 'يُرجَى تَحدِيدُ وِلَايَة',
          'SehirSeciniz': 'يُرجَى تَحدِيدُ مَدِينَة',
          'NamazVakitleriYazi': 'أَوقاتُ الصَّلاة',
          'Harita': 'الخَرِيطَة',

//NamazVakitleri' : array[],
          'imsak': 'الإِمساك',
          'sabah': 'الصباح',
          'gunes': 'الشَّمس',
          'israk': 'الشُّرُوق',
          'dahve': 'المَكرُوه',
          'kerahet': 'الظُّهر',
          'ogle': 'العَصرُ',
          'ikindi': 'العصرُ الثَّانِي',
          'asrisani': 'الإصفِرَار',
          'isfirar': 'المَغرِب - المَسَاء',
          'aksam': 'وقتُ اشتباكِ النجوم',
          'istibak': 'العِشَاء',
          'yatsi': 'العِشَاءُ الثَّانِي',
          'isaisani': 'سَاعَةُ القِبلَة',
          'geceyarisi': 'نصف فترة الصيام',
          'teheccud': 'نِصفُ اللَّيل',
          'seher': 'تَهَجُّد',
          'kible': 'السَّحَر',

//Rumi Aylar
          'RumiAylar[1]': 'يناير - كانون الثاني',
          'RumiAylar[2]': 'فبراير - شباط',
          'RumiAylar[3]': 'مارس - آذار',
          'RumiAylar[4]': 'أبريل - نيسان',
          'RumiAylar[5]': 'مايو - آيار',
          'RumiAylar[6]': 'يونيو - حزيران',
          'RumiAylar[7]': 'يوليو - تموز',
          'RumiAylar[8]': 'أغسطس - آب',
          'RumiAylar[9]': 'سبتمبر - أيلول',
          'RumiAylar[10]': 'أكتوبر - تشرين الأول',
          'RumiAylar[11]': 'نوفمبر - تشرين الثاني',
          'RumiAylar[12]': 'ديسمبر - كانون الأول',

//Haftanin Gunleri
          'HaftaninGunleri[7]': 'الأحد',
          'HaftaninGunleri[1]': 'الإثنين',
          'HaftaninGunleri[2]': 'الثلاثاء',
          'HaftaninGunleri[3]': 'الأربعاء',
          'HaftaninGunleri[4]': 'الخميس',
          'HaftaninGunleri[5]': 'الجمعة',
          'HaftaninGunleri[6]': 'السبت',

//Aylar

          'SeneninAylari[1]': 'يناير - كانون الثاني',
          'SeneninAylari[2]': 'فبراير - شباط',
          'SeneninAylari[3]': 'مارس - آذار',
          'SeneninAylari[4]': 'أبريل - نيسان',
          'SeneninAylari[5]': 'مايو - آيار',
          'SeneninAylari[6]': 'يونيو - حزيران',
          'SeneninAylari[7]': 'يوليو - تموز',
          'SeneninAylari[8]': 'أغسطس - آب',
          'SeneninAylari[9]': 'سبتمبر - أيلول',
          'SeneninAylari[10]': 'أكتوبر - تشرين الأول',
          'SeneninAylari[11]': 'نوفمبر - تشرين الثاني',
          'SeneninAylari[12]': 'ديسمبر - كانون الأول',

          'HicriAylar[0]': "مُحَرَّم",
          'HicriAylar[1]': "صَفَر",
          'HicriAylar[2]': "رَبيعُ الأَوَّل",
          'HicriAylar[3]': "رَبيعُ الثَّانِي - ربيعُ الآخِر",
          'HicriAylar[4]': "جُمادي الأول",
          'HicriAylar[5]': "جمادي الثاني - جمادي الآخر",
          'HicriAylar[6]': "رجب",
          'HicriAylar[7]': "شعبان",
          'HicriAylar[8]': "رمضان",
          'HicriAylar[9]': "شَوَّال",
          'HicriAylar[10]': "ذو القعدة",
          'HicriAylar[11]': "ذو الحجة",

          'Yonler[0]': 'الشّمال',
          'Yonler[1]': 'الجنوب',
          'Yonler[2]': 'الشّرق',
          'Yonler[3]': 'الغَرب;',

          'Alfabetik_Sehir_Listesi': 'قائِمَةُ المُدُنِ الأَبجَدِيَّة',
          'AlfabetikSehirListesi': 'قائِمَةُ المُدُنِ الأَبجَدِيَّة',
          'YazSaati':
              'هناك تطبيقٌ للتّوقيت الصيفي - يُتِمُّ تَطبِيقُ التَّوقِيتِ الصَّيفِي.',

          'AddBookmark': 'أَضِف إِلَى المُفضَّلَة',
          'AnaSayfaYap': 'اِجعَلهَا صَفحَتَكَ الرَّسمِيَّة',
          'AramaSonuclari': 'نتائجُ البحث',

          'Eyalet_Listesi': '%sالولاية ، المقاطعة (المحافظة) ، المنطقة',
          'Sehir_Listesi': '%d_%s_قائِمَةُ المُدُنِ',
          'Sanal_Yol_UlkelerListesi': 'قائمة البلدان - قائمة الدُّوَل',
          'SehirListesiYazisi': 'قائِمَةُ المُدُنِ',

          'Icin_Namaz_Vakitleri': '%s_ لِأَوقاتِ الصَّلاة - لِمواقيتِ الصلاة',
          'sehrin_ismini_giriniz': 'الرجاء إدخال اسم المدينة …',
          'SehirArama': 'البحث عن المدن',
          'GeriDon': 'اِرجِع لِلخَلف',

          'Imsakiye': 'التوقيت (أوقات الأذان)',
          'LisanImsakiye': '٤٤ التوقيت',
          'Irtibat': 'الاتِّصال',
          'Kitaplar': 'الكُتُب',

          'Bayan': 'فتاة',
          'Bay': 'رجل',

          'GunlerYazi': 'أيام',
          'AylarYazi': 'شُهُور',
          'YillarYazi': 'سَنَوَات - أَعوَام',

          'UlkelerListesi': 'انقر للدخول إلى قائمة الدول',
          'UlkeListesi': 'قائمة البلدان - قائمة الدُّوَل',

          'EyaletListesi': 'قائمة الولايات ، المقاطعات (المحافظة) ، المناطق',
          'EyaletIlBolge': 'الولاية ، المقاطعة (المحافظة) ، المنطقة',
          'EyaletListesiTr': 'قائمة المقاطعات والمناطق',

          'SqlTT': 'dmy',

          'VakitYok':
              'Seçtiğiniz şehrin namaz vakitleri için lütfen bizimle e-posta ya da fax yoluyla temas kurun.',
          'EPosta_adres':
              '<a href=\'mailto:info@turktakvim.com\'> info@turktakvim.com</a>',
          'fax_no': ' +90 (212) 454 23 87',

          'fax': 'الفاكس',
          'EPosta': 'الإيميل',
          'website': 'عناوين مواقع الويب',

          'HicriSemsi': 'هجري شمسي',

          'Aylik': 'الأوقات الشهرية - أوقات الشهر',
          'Yillik': 'الأوقات السنوية',
          'Yazdir': 'طباعة - اِطبَع',
          'Yaziyi_Gonder': 'Arkadaşına G&#246;nder',
          'Yaziyi_Add_Favourites':
              'Bu Yaz&#305;y&#305; S&#305;k Kullan&#305;lanlara Ekleyin',
          'Okunma_Sayisi': 'Okunma Say&#305;s&#305;',
          'Word_Indir': 'تنزيل بصيغة Word',
          'Pdf_Indir': 'تنزيل بصيغة PDF',
          'Bu_Yaziyi': 'Bu Yaz&#305;y&#305;',
          'Diger_aylardaki_namaz_vakitleri':
              'Di&#287;er Aylardaki Namaz Vakitleri',
          'RamazanBayrami':
              '%s الأحد مايو وقت صلاة عيد الفطر : <strong>%s</strong>',
          'KurbanBayrami':
              '%s الجمعة يوليو وقت صلاة عيد الأضحى : <strong>%s</strong>',
          'KitapIndir': 'İndir',

          'IcindeGecen': 'İsimleri içerisinde %s geçen şehirler',
          'IsimleriBasliyan': 'İsimleri %s ile başlayan şehirler',

          'dak': ' دقيقة',
          'GunKisa': 'قِصَرُ النَّهَار - تقصير النهار ',
          'GunUzun': 'طُولُ النهار - إطالة النهار ',
          'Ezani': 'الأذان المحلي',
          'EzaniYok': 'لا يُمكِنُ ضَبط وقت الأذان اليوم ',
          'EzaniSaatYazi': 'وقت الأذان ',
          'EzaniIleri': ' يتم تقديمها دقيقةً واحدةً إلى الأمام.',
          'EzaniGeri': ' يتم إرجاعها دقيقةً واحدةً إلى الخلف.',

          'AylikNamazVakitleriYazisi':
              '<strong>%s</strong> &#304;&#231;in <strong> 2013 %d </strong> Ay&#305; Namaz Vakitleri',
          'AylikNamazVakitleriYazisi_Title':
              '%s &#304;&#231;in 2013 %d Ay&#305; Namaz Vakitleri',
          'YillikNamazVakitleriYazisi':
              '<strong>%s</strong> &#304;&#231;in <strong> 2013 </strong> Y&#305;l&#305; Namaz Vakitleri',
          'YillikNamazVakitleriYazisi_Title':
              '%s &#304;&#231;in 2013  Y&#305;l&#305; Namaz Vakitleri',

          'Arz': 'العرض',
          'Tul': 'الطول',
          'Rumi': 'جلال الدين الرومي',

          'Hizir': 'خِضر-عليه السلام',
          'Kasim': 'نوفمبر - تشرين الثاني',
          'YesilHat': 'الخط الأخضر الذي يخرج من المدينة هو اتجاه القبلة.',

          'UlkeYazisi': 'دولة ',
          'EyaletYazisi': 'ولاية',
          'SehirYazisi': 'مدينة (محافظة)',
          'TarihYazisi': 'تاريخ',

          'KirmiziVakitler':
              '<strong>* الامساك الاحمر و اوقات العشاء هو وقت الامساك في اخر يوم.</strong>',
          'YazSaatineGecis':
              '<strong>%s</strong> الأوقاتُ التي تبدأ اعتبارًا من 31 مارس، تم إعدادها بِشَكلٍ يُراعِي الانتقال للتّوقيت الصيفي.',
          'KadirGecesiYazisi':
              '<strong>ليلةُ القدر:</strong> هي الليلة التي تَربُط يوم الثلاثاء %s مايو بيوم الأربعاء %s مايو',
          'ImsakVaktiNotu': 'وقتُ الإمساك هو وقتُ بدءِ الصيام',
          'Note': '<strong>ملاحظة: </strong>',
          'ImsakiyedekiSabah':
              'وقتُ صلاةِ الفجر الذي في التوقيت هو الوقتُ الأوَّلُ لصلاةِ الفجر.',
          'SabahNamaziNotu':
              'يمكن أداء صلاة الفجر بعد 20 دقيقة من دخول وقت الإمساك.',
          'Sehir_Ismi_Girin': 'الرجاء إدخال اسم المدينة ...!',
          'AramaYok': 'لم يتم العثور على المدينة التي تبحث عنها!',
          'TitleSehirArama': 'الرجاء إدخال اسم المدينة',

          'VasatiVakitler': 'الأوقات الوسطیة',
          'AzaniVakitler': 'أوقات الأذان',
          'TurkiyeTakvimi': 'تقويمُ تركيا',
          'MesveretTakvimi': 'تقويم المَشُورَة',
          'ImsakiyeYazisi':
              'أوقاتُ الصلاةِ لشهرِ رمضانَ المباركِ لمدينة إسطنبول، لعام %s من السنة الهجرية و%s من السنة الميلادية',
          'ImsakiyeYazisi_Title':
              'Hicrî 1434, Mîlâdî 2013 Senesi, %s İçin Ramezân-ı Şerîf İmsâkiyesi',

          'KacinciAy': '%d. الشهر',
          'KacinciHafta': '%d. الأسبوع',
          'AyKacCek': '%d  ثلاثون ',

          'YilinGunu': 'اليوم %t. المائة',
          'KalanGunYazi': 'الأيام المتبقية : %t',

          'DigerVakitler': 'الأوقات الأخرى',
          'OnemliLinkler': 'روابط مهمة',

          'Menu': 'القائمة',
          'Diller': 'لُغات',

          'local': 'السَّاعةُ المحلِّية',

          'remain_imsak': "الوقت المتبقي حتى موعد الإمساك...",
          'remain_sabah': "الوقت المتبقي حتى موعد صلاة الفجر...",
          'remain_gunes': "الوقت المتبقي حتى طلوع الشمس...",
          'remain_israk': "الوقت المتبقي حتى وقت الشروق...",
          'remain_ogle': "الوقت المتبقي حتى صلاة الظهر...",
          'remain_ikindi': "الوقت المتبقي حتى صلاة العصر...",
          'remain_aksam': "الوقت المتبقي حتى صلاةِ المغرب...",
          'remain_yatsi': "الوقت المتبقي حتى صلاةِ العشاء...",

          'kibleSaatiYazisi':
              "من توجه للشمس في ساعة القبلة ،كان قد توجه للقبلة.",

          'popupBaslik': "İmsâk vakti hakkında mühim açıklama !..",
          'YanlisImsak': "Yanlış imsâk vakti açıklaması",
          'Rasad': "Rasad hakkında açıklama",
          'DogruImsak': "Doğru imsâk vakti açıklaması",
        },
        'tt_RU': {
          "share": "Бүлешергә",
          "daily_event": "Көн вакыйгасы",
          "daily_quoute": "Көннең сүзе",
          "prayer_times": "Намаз вакытлары",
          "HicriKameri": "Хиҗри календарь",
          "language_selection": "Тел сайлау",
          "location_selection": "Урын сайлау",
          "vakit": "Вакыт",
          "saat": "Сәгать",
          "bugun": "Бүген",
          "tarih_sec": "Көн сайлау",
          "search_city": "Шәһәр эзләү",
          "kayitli_sehirler": "Сакланган шәһәрләр",
          "konum_onay": "Урынны раслау",
          "location_searching": "Урын эзләү...",
          "auto_location": "Автоматик урын сайлау",
          "select_country": "Ил сайлау",
          "search_country": "Ил эзләү",
          "select_region": "Төбәк сайлау",
          "search_region": "Төбәк эзләү",

          "daily_quote": "Көн цитатасы",

// butonlar
          'page_onyuz': 'Алгы як',
          'page_arka': 'Алдагы сәхифә',
          'page_sonraki': 'Киләсе көн',
          'page_onceki': 'Алдагы көн',
          'page_bugun': 'Бүген',

//Namaz Vakitleri Yazilari
          'TumDevletlerdeAra': 'Бөтен илләр арасында эзлә',
          'DevletSeciniz': 'Зинһар, дәүләт сайлагыз',
          'EyaletSeciniz': 'Зинһар, өлкә сайлагыз',
          'SehirSeciniz': 'Зинһар, шәһәр сайлагыз',
          'NamazVakitleriYazi': 'Намаз вакытлары',
          'Harita': 'Харита-карта',

//'NamazVakitleri' : array[],
          'imsak': 'Имсакь',
          'sabah': 'Иртәнге намаз',
          'gunes': 'Кояш',
          'israk': 'Ишрак',
          'dahve': 'Кәрахәт вакыты',
          'kerahet': 'Өйлә намаз',
          'ogle': 'Икенде намаз',
          'ikindi': 'Икенде намазы',
          'asrisani': 'Исфирар',
          'isfirar': 'Ахшам намазы',
          'aksam': 'Иштибак',
          'istibak': 'Ястү намазы',
          'yatsi': 'Ястү намазы',
          'isaisani': 'Кыйбла сәгате',
          'geceyarisi': 'Дәһвә-и көбра',
          'teheccud': 'Төн уртасы',
          'seher': 'Тәһәҗҗүд',
          'kible': 'Сәхәр',

//Rumi Aylar
          'RumiAylar[1]': 'Гыйнвар (Канун-ы сәни)',
          'RumiAylar[2]': 'Февраль',
          'RumiAylar[3]': 'Март',
          'RumiAylar[4]': 'Апрель',
          'RumiAylar[5]': 'Май',
          'RumiAylar[6]': 'Июнь',
          'RumiAylar[7]': 'Июль',
          'RumiAylar[8]': 'Август',
          'RumiAylar[9]': 'Сентябрь',
          'RumiAylar[10]': 'Октябрь',
          'RumiAylar[11]': 'Ноябрь',
          'RumiAylar[12]': 'Декабрь',

//Haftanin Gunleri
          'HaftaninGunleri[7]': 'Якшәмбе',
          'HaftaninGunleri[1]': 'Дүшәмбе',
          'HaftaninGunleri[2]': 'Сишәмбе',
          'HaftaninGunleri[3]': 'Чәршәмбе',
          'HaftaninGunleri[4]': 'Пәнҗешәмбе',
          'HaftaninGunleri[5]': 'Җомга',
          'HaftaninGunleri[6]': 'Шимбә',

//Aylar
          'SeneninAylari[1]': 'Гыйнвар ',
          'SeneninAylari[2]': 'Февраль',
          'SeneninAylari[3]': 'Март',
          'SeneninAylari[4]': 'Апрель',
          'SeneninAylari[5]': 'Май',
          'SeneninAylari[6]': 'Июнь',
          'SeneninAylari[7]': 'Июль',
          'SeneninAylari[8]': 'Август',
          'SeneninAylari[9]': 'Сентябрь',
          'SeneninAylari[10]': 'Октябрь ',
          'SeneninAylari[11]': 'Ноябрь',
          'SeneninAylari[12]': 'Декабрь',

          'HicriAylar[0]': "Мохаррәм",
          'HicriAylar[1]': "Сафәр",
          'HicriAylar[2]': "Рабигыль-әүвәл",
          'HicriAylar[3]': "Рабигыль-ахир",
          'HicriAylar[4]': "Җөмәдел-әүвәл",
          'HicriAylar[5]': "Җөмәдел-ахир",
          'HicriAylar[6]': "Рәҗәп",
          'HicriAylar[7]': "Шәгъбан",
          'HicriAylar[8]': "Рамазан",
          'HicriAylar[9]': "Шәүвәл",
          'HicriAylar[10]': "Зөлкагъдә",
          'HicriAylar[11]': "Зөлкхиҗҗә",

          'Yonler[0]': 'Төньяк',
          'Yonler[1]': 'Көньяк',
          'Yonler[2]': 'Көнчыгыш',
          'Yonler[3]': 'Көнбатыш;',

          'Alfabetik_Sehir_Listesi': 'Әлифба буенча шәһәрләр исемлеге',
          'AlfabetikSehirListesi': 'Әлифба_буенча_шәһәрләр_исемлеге',
          'YazSaati': 'Җәйге вакытны үзгәртү мөмкин.',

          'AddBookmark': 'Еш кулланылганнарга өстәү',
          'AnaSayfaYap': 'Төп бит итеп куегыз',
          'AramaSonuclari': 'Эзләү нәтиҗәләре',

          'Eyalet_Listesi': '%s_Дәүләт_ил_өлкә_исемлеге',
          'Sehir_Listesi': '%d_%s_Шәһәрләр_исемлеге',
          'Sanal_Yol_UlkelerListesi': 'Дәүләтләр_исемлеге',
          'SehirListesiYazisi': 'Шәһәрләр исемлеге',

          'Icin_Namaz_Vakitleri': '%s_Өчен_намаз_вакытлары',
          'sehrin_ismini_giriniz': 'Зинһар, шәһәр исемен кертегез...',
          'SehirArama': 'Шәһәр эзләү',
          'GeriDon': 'Кире кайту',

          'Imsakiye': 'Имсакия',
          'LisanImsakiye': '44 телдә ИМСАКИЯ',
          'Irtibat': 'Элемтә',
          'Kitaplar': 'Китаплар',

          'Bayan': 'Кыз',
          'Bay': 'Ир-ат',

          'GunlerYazi': 'Көннәр',
          'AylarYazi': 'Айлар',
          'YillarYazi': 'Еллар',

          'UlkelerListesi': 'Дәүләтләр исемлеге өчен басыгыз',
          'UlkeListesi': 'Дәүләт исемлеге',

          'EyaletListesi': 'Дәүләт, ил, өлкә исемлеге',
          'EyaletIlBolge': 'Дәүләт, ил, өлкә',
          'EyaletListesiTr': 'Ил, өлкә исемлеге',

          'SqlTT': 'dmy',

          'VakitYok':
              'Сайланган шәһәрегез өчен намаз вакытларын беләсегез килсә, безнең белән электрон почта яки факс аша элемтәгә керегез.',
          'EPosta_adres':
              '<a href=\'mailto:info@turktakvim.com\'> info@turktakvim.com</a>',
          'fax_no': ' +90 (212) 454 23 87',

          'fax': 'Факс',
          'EPosta': 'Электрон почта',
          'website': 'Интернет-сайт адресы',

          'HicriSemsi': 'Һиҗри Шәмси',

          'Aylik': 'Айлык вакытлар',
          'Yillik': 'Еллык вакытлар',
          'Yazdir': 'Басма',
//'Yaziyi_Gonder' : 'Дусыңа җибәр',
          'Yaziyi_Add_Favourites': 'Бу язманы еш кулланылганнарга өстә',
          'Okunma_Sayisi': 'Караулар саны;',
          'Word_Indir': 'Word форматында йөкләү',
          'Pdf_Indir': 'PDF форматында йөкләү',
          'Bu_Yaziyi': 'Бу язманы;',
          'Diger_aylardaki_namaz_vakitleri': 'Башка айлар өчен намаз вакытлары',
          'RamazanBayrami':
              '%s сишәмбе, Ураза гаете намазы вакыты : <strong>%s</strong>',
          'KurbanBayrami':
              '%s якшәмбе, Корбан гаете намазы вакыты : <strong>%s</strong>',
          'KitapIndir': 'йөкләү',

          'IcindeGecen': 'Исемнәре эчендә %s булган шәһәрләр',
          'IsimleriBasliyan': 'Исемнәре %s белән башланган шәһәрләр',

          'dak': ' минут',
          'GunKisa': 'Көн кыскаруы ',
          'GunUzun': 'Көн озынаю ',
          'Ezani': 'Әзани (җирле вакыт)',
          'EzaniYok': 'Бүген әзани сәгать көйләнмәс.',
          'EzaniSaatYazi': 'Әзани сәгать ',
          'EzaniIleri': ' минут алга күчәр.',
          'EzaniGeri': ' минут артка күчәр.',
          'AylikNamazVakitleriYazisi':
              '<strong>%s</strong> &#304;&#231;in <strong> 2013 %d </strong> Ay&#305; Namaz Vakitleri',
          'AylikNamazVakitleriYazisi_Title':
              '%s &#304;&#231;in 2013 %d Ay&#305; Namaz Vakitleri',
          'YillikNamazVakitleriYazisi':
              '<strong>%s</strong> &#304;&#231;in <strong> 2013 </strong> Y&#305;l&#305; Namaz Vakitleri',
          'YillikNamazVakitleriYazisi_Title':
              '%s &#304;&#231;in 2013  Y&#305;l&#305; Namaz Vakitleri',

          'Arz': 'Җир',
          'Tul': 'Озынлык',
          'Rumi': 'Руми',

          'Hizir': 'Тизлек',
          'Kasim': 'Ноябрь',
          'YesilHat':
              'Шәһәрдән чыккан <span style="color:green; font-weight:bold;">яшел</span> сызык кыйбла юнәлешен күрсәтә.',

          'UlkeYazisi': 'Дәүләт',
          'EyaletYazisi': 'Өлкә ',
          'SehirYazisi': 'Шәһәр',
          'TarihYazisi': 'Тарих',

          'KirmiziVakitler':
              '<strong>* * Кызыл белән билгеләнгәннәре - имсакь, ястү вакытлары һәм имсакь булган соңгы көннең вакытлары.</strong>',
          'YazSaatineGecis':
              '<strong>%s</strong> алып, вакытлар җәй сәгатенә күчүне күз алдында тотып әзерләнгән.',
          'KadirGecesiYazisi':
              '<strong>Кадер кичәсе:</strong> %s җомга көне., %s Кадер көне шимбә көне.',
          'ImsakVaktiNotu':
              'Имсакь - ураза тота башлау вакыты һәм иртәнге намазның әүвәлге заманасыдыр.',
          'Note': '<strong>Not: </strong>',
          'ImsakiyedekiSabah':
              'Имсакь - ураза тота башлау вакыты һәм иртәнге намазның әүвәлге заманасыдыр.',
          'SabahNamaziNotu': 'Иртәнге намаз имсакьтән 20 минут үткәч кылына.',
          'Sehir_Ismi_Girin': 'Зинһар, шәһәр исемен кертегез...',
          'AramaYok': 'Эзләгән шәһәрегез табылмады!',
          'TitleSehirArama': 'Зинһар, шәһәр исемен кертегез...',

          'VasatiVakitler': 'Урта вакытлар',
          'AzaniVakitler': 'Әзани вакытлар',
          'TurkiyeTakvimi': 'Төркия тәкъвиме',
          'MesveretTakvimi': 'Мөшвәрәт тәкъвиме',
          'ImsakiyeYazisi':
              'ҺИҖРИ %s / МИЛАДИ %s ЕЛ, <strong>%s</strong> ӨЧЕН РАМАЗАН АЕ ИМСАКИЯСЕ,',
//'ImsakiyeYazisi_Title' : 'Hicrî 1434, Mîlâdî 2013 Senesi, %s İçin Ramezân-ı Şerîf İmsâkiyesi',

          'KacinciAy': '%d. Ай',
          'KacinciHafta': '%d. Атна',
          'AyKacCek': '%d көн',

          'YilinGunu': 'Елның %t.көне',
          'KalanGunYazi': 'Калган көн : %t',

          'DigerVakitler': 'Башка вакытлар',
          'OnemliLinkler': 'Мөһим сылтамалар',

          'Menu': 'Меню',
          'Diller': 'Телләр',

          'local': 'Җирле вакыт',

          'remain_imsak': "Имсакькә калган вакыт",
          'remain_sabah': "Иртәнге намазга калган вакыт",
          'remain_gunes': "Кояш чыгарга калган вакыт",
          'remain_israk': "Ишракка калган вакыт",
          'remain_ogle': "Өйлә намазына калган вакыт",
          'remain_ikindi': "Икенде намазына калган вакыт",
          'remain_aksam': "Ахшам намазына калган вакыт",
          'remain_yatsi': "Ястү намазына калган вакыт",

          'kibleSaatiYazisi':
              "Кыйбла сәгате вакытында кояшка караган кемсә кыйбла тарафына баскан булыр.",

          'popupBaslik': "Имсакь вакыты турында мөһим ачыклама!..",
          'YanlisImsak': "Ялгыш имсакь вакыты аңлатмасы",
          'Rasad': "Компас куллану турында аңлатма",
          'DogruImsak': "Дөрес имсакь вакыты турында аңлатма",
        },
        'bg_BG': {
          "share": "Споделяне",
          "daily_event": "Дневно събитие",
          "daily_quoute": "Дневен цитат",
          "prayer_times": "ЧАСОВЕ ЗА МОЛИТВА",
          "HicriKameri": "Хиджри Календар",
          "language_selection": "Избор на език",
          "location_selection": "Избор на местоположение",
          "vakit": "Време",
          "saat": "Час",
          "bugun": "Днес",
          "tarih_sec": "Избери дата",
          "search_city": "Търси град",
          "kayitli_sehirler": "Запазени градове",
          "konum_onay": "Потвърди местоположение",
          "location_searching": "Търсене на местоположение...",
          "auto_location": "Автоматичен избор на местоположение",
          "select_country": "Избери държава",
          "search_country": "Търси държава",
          "select_region": "Избери регион",
          "search_region": "Търси регион",

          "daily_quote": "Цитат на деня",

          'page_onyuz': 'Лицева страна',
          'page_arka ': 'Обратна страна',
          'page_sonraki': 'Следващ ден',
          'page_onceki ': 'Предишен ден',
          'page_bugun  ': 'Днес',

//Namaz Vakitleri Yazilari
          'TumDevletlerdeAra': 'Търсене във всички държави',
          'DevletSeciniz': 'Изберете държава',
          'EyaletSeciniz': 'Изберете област',
          'SehirSeciniz': 'Изберете град',
          'NamazVakitleriYazi': 'Времена за намаз',
          'Harita': 'Карта',

//'NamazVakitleri' : array[],
          'imsak': 'Имсак',
          'sabah': 'Сабах',
          'gunes': 'Изгрев',
          'israk': 'Ишрак',
          'dahve': 'Керахат',
          'kerahet': 'Обяд',
          'ogle': 'Икиндия',
          'ikindi': 'Аср-и сани',
          'asrisani': 'Исфирар',
          'isfirar': 'Акшам',
          'aksam': 'Иштибак',
          'istibak': 'Ятсия',
          'yatsi': 'Иша-и сани',
          'isaisani': 'Часа на Къбле',
          'geceyarisi': 'Дахве-и кюбра',
          'teheccud': 'Полунощ',
          'seher': 'Техеджуд',
          'kible': 'Сехер',

//Rumi Aylar
          'RumiAylar[1]': 'Канун-и сани',
          'RumiAylar[2]': 'Февруари',
          'RumiAylar[3]': 'Март',
          'RumiAylar[4]': 'Април',
          'RumiAylar[5]': 'Май',
          'RumiAylar[6]': 'Юни',
          'RumiAylar[7]': 'Юли',
          'RumiAylar[8]': 'Август',
          'RumiAylar[9]': 'Септември',
          'RumiAylar[10]': 'Тешрин-и еввел',
          'RumiAylar[11]': 'Тешрин-и сани',
          'RumiAylar[12]': 'Канун-и еввел',

//Haftanin Gunleri
          'HaftaninGunleri[7]': 'Неделя',
          'HaftaninGunleri[1]': 'Понеделник',
          'HaftaninGunleri[2]': 'Вторник',
          'HaftaninGunleri[3]': 'Сряда',
          'HaftaninGunleri[4]': 'Четвъртък',
          'HaftaninGunleri[5]': 'Джума Петък',
          'HaftaninGunleri[6]': 'Събота',

//Aylar

          'SeneninAylari[1]': 'ЯНУАРИ',
          'SeneninAylari[2]': 'ФЕВРУАРИ',
          'SeneninAylari[3]': 'МАРТ',
          'SeneninAylari[4]': 'АПРИЛ',
          'SeneninAylari[5]': 'МАЙ',
          'SeneninAylari[6]': 'ЮНИ',
          'SeneninAylari[7]': 'ЮЛИ',
          'SeneninAylari[8]': 'АВГУСТ',
          'SeneninAylari[9]': 'СЕПТЕМВРИ',
          'SeneninAylari[10]': 'ОКТОМВРИ',
          'SeneninAylari[11]': 'НОЕМВРИ',
          'SeneninAylari[12]': 'ДЕКЕМВРИ',

          'HicriAylar[0]': "МУХАРРЕМ",
          'HicriAylar[1]': "САФЕР",
          'HicriAylar[2]': "РЕБИ'УЛ-ЕВВЕЛ",
          'HicriAylar[3]': "РЕБИ'УЛ-АХИР",
          'HicriAylar[4]': "ДЖЕМАЗИЛ-ЕВВЕЛ",
          'HicriAylar[5]': "ДЖЕМАЗИЛ-АХИР",
          'HicriAylar[6]': "РЕДЖЕБ",
          'HicriAylar[7]': "ШАБАН",
          'HicriAylar[8]': "РАМАЗАН",
          'HicriAylar[9]': "ШЕВВАЛ",
          'HicriAylar[10]': "ЗИЛ-КА'ДЕ",
          'HicriAylar[11]': "ЗИЛ-ХИДЖЕ",

          'Yonler[0]': 'Север',
          'Yonler[1]': 'Юг',
          'Yonler[2]': 'Изток',
          'Yonler[3]': 'Запад',

          'Alfabetik_Sehir_Listesi': 'Списък на градовете по азбучен ред',
          'AlfabetikSehirListesi': 'Alfabetik_%C5%9Eehir_Listesi',
          'YazSaati': 'Преход към лятното часово време.',

          'AddBookmark': 'Добави към любими',
          'AnaSayfaYap': 'Задай като начална страница',
          'AramaSonuclari': 'Резултати от търсенето',

          'Eyalet_Listesi': '%s_Eyalet_İl_Bolge_Listesi',
          'Sehir_Listesi': '%d_%s_Sehir_Listesi',
          'Sanal_Yol_UlkelerListesi': 'Ulkeler_Listesi',
          'SehirListesiYazisi': 'СПИСЪК НА ГРАДОВЕТЕ',

          'Icin_Namaz_Vakitleri': '%s_Icin_Namaz_Vakitleri',
          'sehrin_ismini_giriniz': 'Моля въведете името на града...',
          'SehirArama': 'Търсене на град',
          'GeriDon': 'Назад',

          'Imsakiye': 'ИМСАКИЙЕ',
          'LisanImsakiye': '44 езика Имсакие(месечен календар)',
          'Irtibat': 'КОНТАКТИ',
          'Kitaplar': 'КНИГИ',

          'Bayan': 'Момиче',
          'Bay': 'Момче',

          'GunlerYazi': 'Дни',
          'AylarYazi': 'Месеци',
          'YillarYazi': 'Години',

          'UlkelerListesi': 'Кликнете тук, за списъка на страните',
          'UlkeListesi': 'СПИСЪК НА ДЪРЖАВИТЕ',

          'EyaletListesi': 'Списък на области и окръзи',
          'EyaletIlBolge': 'Области и окръзи',
          'EyaletListesiTr': 'Списък на области и градове',

          'SqlTT': 'dmy',

          'VakitYok':
              'Моля свържете се с нас  чрез  имейл и факс за времето на намаза на избрания град.',
          'EPosta_adres':
              '<a href=\'mailto:info@turktakvim.com\'> info@turktakvim.com</a>',
          'fax_no': ' +90 (212) 454 23 87',

          'fax': 'Факс',
          'EPosta': 'E-Mail',
          'website': 'Адреси на уебсайтове',

          'HicriSemsi': 'Хиджри Шемси',

          'Aylik': 'Месечни времена',
          'Yillik': 'Годишни времена',
          'Yazdir': 'Печат',
          'Yaziyi_Gonder': 'Изпрати на приятел',
          'Yaziyi_Add_Favourites': 'Добави към Любими тази статия',
          'Okunma_Sayisi': 'Брой преглеждания',
          'Word_Indir': 'Изтегли като Word',
          'Pdf_Indir': 'Изтегли като PDF',
          'Bu_Yaziyi': 'Тази статия',
          'Diger_aylardaki_namaz_vakitleri':
              'Времена за намаз в другите месеци',
          'RamazanBayrami':
              '%s Времето на  Рамазан байрамския намаз : <strong>%s</strong>',
          'KurbanBayrami':
              '%s Времето на Курбан байрамския намаз : <strong>%s</strong>',
          'KitapIndir': 'Свали',

//'IcindeGecen' : '<span style=''color:##0033CC; font-size:15px;''>İsimleri i&ccedil;inde //<span style=''color:#0033CC; font-weight:bold;''>%s</span>// ge&ccedil;en şehirler</span>';
//'IsimleriBasliyan' : '<span style=''color:##0033CC; font-size:15px;''>İsimleri //<span style=''color:#0033CC; font-weight:bold; text-align:center;''>%s</span>// ile başlayan şehirler</span';
          'IcindeGecen': 'Имена на градове , които съдържат %s',
          'IsimleriBasliyan': 'Имена на градове, които започват с %s',

          'dak': ' минута',
          'GunKisa': 'Денят намалява с ',
          'GunUzun': 'Денят нараства с ',
          'Ezani': 'Езани (Махалли)',
          'EzaniYok': 'Днес часа езани не се сверява.',
          'EzaniSaatYazi': 'Часа Езани ',
          'EzaniIleri': ' преместете с минута напред.',
          'EzaniGeri': ' преместете с минута назад.',

          'AylikNamazVakitleriYazisi':
              'Времена за намаз за <strong>%s</strong> месец <strong>%d 2014</strong>',
          'AylikNamazVakitleriYazisi_Title':
              'Времена за намаз за %s месец %d 2014',
          'YillikNamazVakitleriYazisi':
              'Годишни времена за намаз за <strong>%s 2014</strong>',
          'YillikNamazVakitleriYazisi_Title':
              'Годишни времена за намаз за Истанбул 2014',

          'Arz': 'Географска ширина',
          'Tul': 'Геогра̀фска дължина̀',
          'Rumi': 'Руми',

          'Hizir': 'Хъзър',
          'Kasim': 'Касъм',
          'YesilHat':
              '<span style="color:green; font-weight:bold;">Зелената линия</span>, простираща се от града е посоката Kъбле.',

          'UlkeYazisi': 'Държава',
          'EyaletYazisi': 'Област',
          'SehirYazisi': 'Град',
          'TarihYazisi': 'Дата',

          'KirmiziVakitler':
              '<strong>* Червеното е времето на Имсак и ятсъ намаз, най-последното време на деня, който има имсал.</strong>',
          'YazSaatineGecis':
              'От <strong>%s</strong> времената за намаз са дадени според лятното часово време.',
          'KadirGecesiYazisi':
              '<strong>Нощта на Кадр:</strong> Това е ноща, която свързва %s и %s.',
          'ImsakVaktiNotu':
              'Времето имсак е времето за започване на говеенето.',
          'Note': '<strong>Забележка: </strong>',
          'ImsakiyedekiSabah':
              'Времето "Сабах" в таблицата Имсакийе, е първото време на сабах (сутрешния) намаз.',
          'SabahNamaziNotu':
              'Сабах намаз,  може да се кланя 20 минути след имсак (феджр).',
          'Sehir_Ismi_Girin': 'Моля въведете град!',
          'AramaYok': 'Търсеният град не е намерен !',
          'TitleSehirArama': 'Търси град',

          'VasatiVakitler': 'Васати време',
          'AzaniVakitler': 'Езани време',
          'TurkiyeTakvimi': 'Таквим Тюркийе',
          'MesveretTakvimi': 'Таквим Мешверет',
          'ImsakiyeYazisi':
              'ИМСАКИЙЕ РАМАЗАН-И ШЕРИФ ЗА <strong>%s</strong> %s ПО ХИДЖРА, %s ПО МИЛЯДИ',
          'ImsakiyeYazisi_Title':
              'Имсакийе Рамазан-и Шериф за %s %s г. по Хиджра, %sг. по Миляди.',

          'KacinciAy': '%d. Месец',
          'KacinciHafta': '%d. Седмица',
          'AyKacCek': '%d Ден',

          'YilinGunu': '%t ден от началото на годината',
          'KalanGunYazi': 'Оставащи дни : %t',

          'DigerVakitler': 'Други времена',
          'OnemliLinkler': 'Важни връзки',

          'Menu': 'меню',
          'Diller': 'Езици',

          'local': 'Местно време',

          'remain_imsak': "Останало време до постеенето",
          'remain_sabah': "Останало време до Сабах",
          'remain_gunes': "Останало време до залеза на слънцето",
          'remain_israk': "Останало време до Ишрак",
          'remain_ogle': "Останало време до обяда",
          'remain_ikindi': "Останало време до Икиндията",
          'remain_aksam': "Останолото време до вечерна молитва",
          'remain_yatsi': "Останалото време до Ятсъята",

          'kibleSaatiYazisi':
              "Който по време на часа за Къбле се обърне към слънцето,ще бъде обърнат към къблето.",

          'popupBaslik': "Important information about Imsâk time !..",
          'YanlisImsak': "Explanation about wrong Imsâk time",
          'Rasad': "Explanation about Observation",
          'DogruImsak': "Information about correct Imsâk time",
        },
        'kk_KZ': {
          "share": "Бөлісу",
          "daily_event": "Күннің оқиғасы",
          "daily_quoute": "Күннің сөзі",
          "prayer_times": "НАМАЗ УАҚЫТТАРЫ",
          "HicriKameri": "Хижри күнтізбе",
          "language_selection": "Тіл таңдау",
          "location_selection": "Орналасқан жерді таңдау",
          "vakit": "Уақыт",
          "saat": "Сағат",
          "bugun": "Бүгін",
          "tarih_sec": "Күнді таңдау",
          "search_city": "Қаланы іздеу",
          "kayitli_sehirler": "Сақталған қалалар",
          "konum_onay": "Орналасқан жерді растау",
          "location_searching": "Орналасқан жер ізделуде...",
          "auto_location": "Автоматты таңдау",
          "select_country": "Елді таңдау",
          "search_country": "Елді іздеу",
          "select_region": "Аймақты таңдау",
          "search_region": "Аймақты іздеу",

          "daily_quote": "Күннің дәйексөзі",

// butonlar
          'page_onyuz': 'Алғы бет',
          'page_arka ': 'Артқы бет',
          'page_sonraki': 'Келесі күн',
          'page_onceki ': 'Әуелгі күн',
          'page_bugun  ': 'Бүгін',

//Namaz Vakitleri Yazilari
          'TumDevletlerdeAra': 'Барлық елдерден ізде',
          'DevletSeciniz': 'Елді таңдаңыз',
          'EyaletSeciniz': 'Аймақты таңдаңыз',
          'SehirSeciniz': 'Қаланы таңдаңыз',
          'NamazVakitleriYazi': 'Намаз уақыттары',
          'Harita': 'Карта',

//'NamazVakitleri' : array[],
          'imsak': 'Имсак',
          'sabah': 'Бамдат',
          'gunes': 'Күн',
          'israk': 'Ишрак',
          'dahve': 'Керахат',
          'kerahet': 'Бесін',
          'ogle': 'Екінді',
          'ikindi': 'Асри сани',
          'asrisani': 'Исфирар',
          'isfirar': 'Ақшам',
          'aksam': 'Иштибак',
          'istibak': 'Құптан',
          'yatsi': 'Ишаи сани',
          'isaisani': 'Қыбла сағаты',
          'geceyarisi': 'Дахуаи кубра',
          'teheccud': 'Түн ортасы',
          'seher': 'Тәһәжжүд',
          'kible': 'Сәре',

//Rumi Aylar
          'RumiAylar[1]': 'Қаңтар',
          'RumiAylar[2]': 'Ақпан',
          'RumiAylar[3]': 'Наурыз',
          'RumiAylar[4]': 'Сәуір',
          'RumiAylar[5]': 'Мамыр',
          'RumiAylar[6]': 'Маусым',
          'RumiAylar[7]': 'Шілде',
          'RumiAylar[8]': 'Тамыз',
          'RumiAylar[9]': 'Қыркүйек',
          'RumiAylar[10]': 'Қазан',
          'RumiAylar[11]': 'Қараша',
          'RumiAylar[12]': 'Желтоқсан',

//Haftanin Gunleri
          'HaftaninGunleri[7]': 'Жексенбі',
          'HaftaninGunleri[1]': 'Дүйсенбі',
          'HaftaninGunleri[2]': 'Сейсенбі',
          'HaftaninGunleri[3]': 'Сәрсенбі',
          'HaftaninGunleri[4]': 'Бейсенбі',
          'HaftaninGunleri[5]': 'Жұма',
          'HaftaninGunleri[6]': 'Сенбі',

//Aylar

          'SeneninAylari[1]': 'ҚАҢТАР',
          'SeneninAylari[2]': 'АҚПАН',
          'SeneninAylari[3]': 'НАУРЫЗ',
          'SeneninAylari[4]': 'СӘУІР',
          'SeneninAylari[5]': 'МАМЫР',
          'SeneninAylari[6]': 'МАУСЫМ',
          'SeneninAylari[7]': 'ШІЛДЕ',
          'SeneninAylari[8]': 'ТАМЫЗ',
          'SeneninAylari[9]': 'ҚЫРКҮЙЕК',
          'SeneninAylari[10]': 'ҚАЗАН',
          'SeneninAylari[11]': 'ҚАРАША',
          'SeneninAylari[12]': 'ЖЕЛТОҚСАН',

          'HicriAylar[0]': "МҰХАРРАМ",
          'HicriAylar[1]': "САФАР",
          'HicriAylar[2]': "РАБИУЛ-ӘУУӘЛ",
          'HicriAylar[3]': "РАБИУЛ-АХИР",
          'HicriAylar[4]': "ЖАМАЗИӘЛ-ӘУУӘЛ",
          'HicriAylar[5]': "ЖАМАЗИӘЛ-АХИР",
          'HicriAylar[6]': "РАЖАБ",
          'HicriAylar[7]': "ШАБАН",
          'HicriAylar[8]': "РАМАЗАН",
          'HicriAylar[9]': "ШӘУУАЛ",
          'HicriAylar[10]': "ЗҮЛ-ҚАДА",
          'HicriAylar[11]': "ЗҮЛ-ХИДЖА",

          'Yonler[0]': 'Солтүстік',
          'Yonler[1]': 'Оңтүстік',
          'Yonler[2]': 'Шығыс',
          'Yonler[3]': 'Батыс',

          'Alfabetik_Sehir_Listesi': 'Алфавиттік ретпен қалалар тізімі',
          'AlfabetikSehirListesi': 'Алфавиттік_ретпен_қалалар_тізімі',
          'YazSaati': 'Жаз сағаты ауысымы бар',

          'AddBookmark': 'Таңдамалыға қосу',
          'AnaSayfaYap': 'Басқы бетке қосу',
          'AramaSonuclari': 'Іздеу нәтижелері',

          'Eyalet_Listesi': '%s_Eyalet_İl_Bolge_Listesi',
          'Sehir_Listesi': '%d_%s_Sehir_Listesi',
          'Sanal_Yol_UlkelerListesi': 'Ulkeler_Listesi',
          'SehirListesiYazisi': 'Қала тізімі',

          'Icin_Namaz_Vakitleri': '%s_Icin_Namaz_Vakitleri',
          'sehrin_ismini_giriniz': 'Қала атын жазыңыз...',
          'SehirArama': 'Қала іздеу',
          'GeriDon': 'Артқа',

          'Imsakiye': 'Рамазан кестесі',
          'LisanImsakiye': '44 тілде Ораза кестесі',
          'Irtibat': 'Байланыс',
          'Kitaplar': 'Кітаптар',

          'Bayan': 'Қыз бала',
          'Bay': 'Ер бала',

          'GunlerYazi': 'Күндер',
          'AylarYazi': 'Айлар',
          'YillarYazi': 'Жылдар',

          'UlkelerListesi': 'Елдер тізімін көру үшін басыңыз',
          'UlkeListesi': 'Елдер тізімі',

          'EyaletListesi': 'Облыстар, аймақтар тізімі',
          'EyaletIlBolge': 'Облыс, аймақ',
          'EyaletListesiTr': 'Аймақтар тізімі',

          'SqlTT': 'dmy',

          'VakitYok':
              'Таңдаған қалаңыздың намаз уақыттарына қатысты бізге электронды пошта немесе факс арқылы хабарласа аласыз.',
          'EPosta_adres':
              '<a href=\'mailto:info@turktakvim.com\'> info@turktakvim.com</a>',
          'fax_no': ' +90 (212) 454 23 87',

          'fax': 'Факс',
          'EPosta': 'Электронды пошта',
          'website': 'Веб сайт адрестері',

          'HicriSemsi': 'Хижри шәмси',

          'Aylik': 'Айлық уақыттар',
          'Yillik': 'Жылдық уақыттар',
          'Yazdir': 'Принтерге шығару',
          'Yaziyi_Gonder': 'Досыңа жібер',
          'Yaziyi_Add_Favourites': 'Бұл бетті таңдамалыға қосу',
          'Okunma_Sayisi': 'Оқылғаны',
          'Word_Indir': 'Word файлда жүктеу',
          'Pdf_Indir': 'Pdf файлда жүктеу',
          'Bu_Yaziyi': 'Бұл мақаланы',
          'Diger_aylardaki_namaz_vakitleri': 'Басқа айлардағы намаз уақыттар',
          'RamazanBayrami':
              '%s рамазан айт намазының уақыты : <strong>%s</strong>',
          'KurbanBayrami':
              '%s құрбан айт намазының уақыты : <strong>%s</strong>',
          'KitapIndir': '%s_кітабын_жүктеу',

          'IcindeGecen': 'Атаулар ішінде %s сөзі өткен қалалар',
          'IsimleriBasliyan': 'Атаулары %s деп басталатын қалалар',

          'dak': ' минут',
          'GunKisa': 'Күннің қысқаруы ',
          'GunUzun': 'Күннің ұзаруы ',
          'Ezani': 'Азани (махалли)',
          'EzaniYok': 'Бүгін азани сағат реттелмейді.',
          'EzaniSaatYazi': 'Азани сағат ',
          'EzaniIleri': ' минут ілгері алынады.',
          'EzaniGeri': ' минут кері алынады.',

          'AylikNamazVakitleriYazisi':
              '<strong>%s</strong> қаласы үшін <strong> 2014 %d </strong> айының намаз уақытттары',
          'AylikNamazVakitleriYazisi_Title':
              '%s &#304;&#231;in 2013 %d Ay&#305; Namaz Vakitleri',
          'YillikNamazVakitleriYazisi':
              '<strong>%s</strong> қаласы үшін <strong> 2014 </strong> жылдың намаз уақытттары',
          'YillikNamazVakitleriYazisi_Title':
              '%s &#304;&#231;in 2013  Y&#305;l&#305; Namaz Vakitleri',

          'Arz': 'Ендік',
          'Tul': 'Бойлық',
          'Rumi': 'Руми',

          'Hizir': 'Хызыр',
          'Kasim': 'Касым',
          'YesilHat': 'Қаладан шыққан жасыл сызық қыбла бағытын көрсетеді.',

          'UlkeYazisi': 'Ел',
          'EyaletYazisi': 'Аймақ',
          'SehirYazisi': 'Қала',
          'TarihYazisi': 'Күндер',

          'KirmiziVakitler':
              '<strong>* Қызыл түсті имсак уақыттары, имсак уақыты кірген ең соңғы күннің уақыты.</strong>',
          'YazSaatineGecis':
              '<strong>%s</strong> бастап уақыттар жаз сағатына өту жағдайы назарға алынып дайындалды.',
          'KadirGecesiYazisi':
              '<strong>Қадір түні:</strong> %s, %s қараған түн.',
          'ImsakVaktiNotu':
              'Имсак - ауыз бекіту уақытымен қоса Бамдат (таң) намазының да алғашқы уақытын аңғартады.',
          'Note': '<strong>Ескерту: </strong>',
          'ImsakiyedekiSabah':
              'Кестедегі «Таң» уақыты болса – Бамдат намазының <strong>ықтиятты</strong> уақытын білдіреді.',
          'SabahNamaziNotu':
              'Таң намазын имсактан 20 минут өткеннен кейін оқуға болады.',
          'Sehir_Ismi_Girin': 'Қала атауын жазыңыз!',
          'AramaYok': 'Іздеген қалаңыз табылмады!',
          'TitleSehirArama': 'Қала іздеу',

          'VasatiVakitler': 'Уасати уақыттар',
          'AzaniVakitler': 'Азани уақыттар',
          'TurkiyeTakvimi': 'Түркия күнтізбесі',
          'MesveretTakvimi': 'Мешверет күнтізбесі',
          'ImsakiyeYazisi':
              'ХИЖРИ %s, МИЛАДИ %s ЖЫЛҒЫ, <strong>%s</strong> ҚАЛАСЫНЫҢ РАМАЗАН КЕСТЕСІ',
          'ImsakiyeYazisi_Title':
              'Хижри 1434, жылғы 2013 Senesi, %s қаласының рамазан кестесі',

          'KacinciAy': '%d. Ай',
          'KacinciHafta': '%d. Апта',
          'AyKacCek': '%d күн',

          'YilinGunu': 'Жылдың %t. күні',
          'KalanGunYazi': 'Қалған күн : %t',

          'DigerVakitler': 'Басқа уақыттар',
          'OnemliLinkler': 'Маңызды сілтемелер',

          'Menu': 'Меню',
          'Diller': 'Тілдер',

          'local': 'Жергілікті уақыт',

          'remain_imsak': "Фәжірге дейінгі уақыт",
          'remain_sabah': "Бамдат дейінгі уақыт",
          'remain_gunes': "Күн шығуына дейінгі уақыт",
          'remain_israk': "Ишрак дейінгі уақыт",
          'remain_ogle': "Бесінге дейінгі уақыт",
          'remain_ikindi': "Асрға дейінгі уақыт",
          'remain_aksam': "Шамға дейінгі уақыт",
          'remain_yatsi': "Құптанға дейінгі уақыт",

          'kibleSaatiYazisi':
              "Құбыла сағатында күнге қараған адам Құбыла бағытына қараған болады.",

          'popupBaslik': "Important information about Imsâk time !..",
          'YanlisImsak': "Explanation about wrong Imsâk time",
          'Rasad': "Explanation about Observation",
          'DogruImsak': "Information about correct Imsâk time",
        },
        'ky_KG': {
          "share": "Бөлүшүү",
          "daily_event": "Күндүн окуясы",
          "daily_quoute": "Күндүн сөзү",
          "prayer_times": "НАМАЗ УБАКЫТТАРЫ",
          "HicriKameri": "Хижри календарь",
          "language_selection": "Тилди тандоо",
          "location_selection": "Жайгашкан жерди тандоо",
          "vakit": "Убакыт",
          "saat": "Саат",
          "bugun": "Бүгүн",
          "tarih_sec": "Күн тандоо",
          "search_city": "Шаарды издөө",
          "kayitli_sehirler": "Сакталган шаарлар",
          "konum_onay": "Жайгашкан жерди ырастоо",
          "location_searching": "Жайгашкан жер издөөдө...",
          "auto_location": "Автоматтык тандоо",
          "select_country": "Мамлекетти тандоо",
          "search_country": "Мамлекетти издөө",
          "select_region": "Аймакты тандоо",
          "search_region": "Аймакты издөө",

          "daily_quote": "Күндүн цитатасы",

// butonlar
          'page_onyuz': 'Алдыңкы бети',
          'page_arka ': 'Арткы бети',
          'page_sonraki': 'Кийинки күн',
          'page_onceki ': 'Мурунку күн',
          'page_bugun  ': 'Бүгүн',

//Namaz Vakitleri Yazilari
          'TumDevletlerdeAra': 'Бардык өлкөлөрдө изде',
          'DevletSeciniz': 'Өтүнүч, бир өлкөнү тандаңыз',
          'EyaletSeciniz': 'Өтүнүч, бир регион тандаңыз',
          'SehirSeciniz': 'Өтүнүч, бир шаар тандаңыз',
          'NamazVakitleriYazi': 'Намаз убакыттары',
          'Harita': 'Карта',

//'NamazVakitleri' : array[],
          'imsak': 'Имсак',
          'sabah': 'Багымдат',
          'gunes': 'Күн',
          'israk': 'Ишрак',
          'dahve': 'Карахат',
          'kerahet': 'Бешим',
          'ogle': 'Аср',
          'ikindi': 'Аср-ы Сани',
          'asrisani': 'Исфирар',
          'isfirar': 'Шам',
          'aksam': 'Иштибак',
          'istibak': 'Куптан',
          'yatsi': 'Иша-и Сани',
          'isaisani': 'Кыбыла сааты',
          'geceyarisi': 'Дахва-и кубра',
          'teheccud': 'Түн жарымы',
          'seher': 'Тахажжуд',
          'kible': 'Шафак',

//Rumi Aylar
          'RumiAylar[1]': 'Канун-и Сани',
          'RumiAylar[2]': 'Февраль',
          'RumiAylar[3]': 'Март',
          'RumiAylar[4]': 'Апрель',
          'RumiAylar[5]': 'Май',
          'RumiAylar[6]': 'Июнь',
          'RumiAylar[7]': 'Июль',
          'RumiAylar[8]': 'Август',
          'RumiAylar[9]': 'Сентябрь',
          'RumiAylar[10]': 'Ташрин-и Авваль',
          'RumiAylar[11]': 'Ташрин-и Сани',
          'RumiAylar[12]': 'Канун-и Авваль',

//Haftanin Gunleri
          'HaftaninGunleri[7]': 'Жекшемби',
          'HaftaninGunleri[1]': 'Дүйшөмбү',
          'HaftaninGunleri[2]': 'Шейшемби',
          'HaftaninGunleri[3]': 'Шаршемби',
          'HaftaninGunleri[4]': 'Бейшемби',
          'HaftaninGunleri[5]': 'Жума',
          'HaftaninGunleri[6]': 'Ишемби',

//Aylar

          'SeneninAylari[1]': 'ЯНВАРЬ',
          'SeneninAylari[2]': 'ФЕВРАЛЬ',
          'SeneninAylari[3]': 'МАРТ',
          'SeneninAylari[4]': 'АПРЕЛЬ',
          'SeneninAylari[5]': 'МАЙ',
          'SeneninAylari[6]': 'ИЮНЬ',
          'SeneninAylari[7]': 'ИЮЛЬ',
          'SeneninAylari[8]': 'АВГУСТ',
          'SeneninAylari[9]': 'СЕНТЯБРЬ',
          'SeneninAylari[10]': 'ОКТЯБРЬ',
          'SeneninAylari[11]': 'НОЯБРЬ',
          'SeneninAylari[12]': 'ДЕКАБРЬ',

          'HicriAylar[0]': "МУХАРРАМ",
          'HicriAylar[1]': "САФАР",
          'HicriAylar[2]': "РАБИУЛЬ-АВВАЛЬ",
          'HicriAylar[3]': "РАБИУЛЬ-АХЫР",
          'HicriAylar[4]': "ЖАМАЗИЛЬ-АВВАЛЬ",
          'HicriAylar[5]': "ЖАМАЗИЛЬ-АХЫР",
          'HicriAylar[6]': "РАЖАБ",
          'HicriAylar[7]': "ШАБАН",
          'HicriAylar[8]': "РАМАЗАН",
          'HicriAylar[9]': "ШАВВАЛЬ",
          'HicriAylar[10]': "ЗИЛЬ-КАДА",
          'HicriAylar[11]': "ЗИЛЬ-ХИЖЖА",

          'Yonler[0]': 'Түндүк',
          'Yonler[1]': 'Түштүк',
          'Yonler[2]': 'Чыгыш',
          'Yonler[3]': 'Батыш',

          'Alfabetik_Sehir_Listesi': 'Алфавит боюнча шаар тизмеси',
          'AlfabetikSehirListesi': 'Алфавит_боюнча_шаар_тизмеси',
          'YazSaati': 'Жайкы сааттын колдонуулуусу бар.',

          'AddBookmark': 'Көп колдонулгандарга кошуңуз',
          'AnaSayfaYap': 'Негизги бет кылыңыз',
          'AramaSonuclari': 'Издөө натыйжалары',

          'Eyalet_Listesi': '%s_Eyalet_İl_Bolge_Listesi',
          'Sehir_Listesi': '%d_%s_ШААР_ТИЗМЕСИ',
          'Sanal_Yol_UlkelerListesi': 'Ulkeler_Listesi',
          'SehirListesiYazisi': 'ШААР ТИЗМЕСИ',

          'Icin_Namaz_Vakitleri': '%s_Icin_Namaz_Vakitleri',
          'sehrin_ismini_giriniz': 'Өтүнүч, шаардын атын жазыңыз...',
          'SehirArama': 'Шаар издөө',
          'GeriDon': 'Артка кайт',

          'Imsakiye': 'ОРОЗО КАЛЕНДАРЫ',
          'LisanImsakiye': '44 тилде ОРОЗО КАЛЕНДАРЫ',
          'Irtibat': 'БАЙЛАНЫШ',
          'Kitaplar': 'КИТЕПТЕР',

          'Bayan': 'Кыз',
          'Bay': 'Эркек',

          'GunlerYazi': 'Күндөр',
          'AylarYazi': 'Айлар',
          'YillarYazi': 'Жылдар',

          'UlkelerListesi': 'Өлкөлөрдүн тизмесин көрүү үчүн басыңыз',
          'UlkeListesi': 'ӨЛКӨ ТИЗМЕСИ',

          'EyaletListesi': 'Област, шаар, айыл тизмеси',
          'EyaletIlBolge': 'Област, шаар, айыл',
          'EyaletListesiTr': 'Област, шаар, айыл тизмеси',

          'SqlTT': 'dmy',

          'VakitYok':
              'Өтүнүч, сиз тандаган шаардын намаз убакыттары үчүн электрондук почта же факс аркылуу биз менен байланыңыз.',
          'EPosta_adres':
              '<a href=\'mailto:info@turktakvim.com\'> info@turktakvim.com</a>',
          'fax_no': ' +90 (212) 454 23 87',

          'fax': 'Факс',
          'EPosta': 'Электрондук почта',
          'website': 'Веб сайт адрестери',

          'HicriSemsi': 'Хижри Шамси',

          'Aylik': 'Айлык убакыттар',
          'Yillik': 'Жылдык убакыттар',
          'Yazdir': 'Жаздыр',
          'Yaziyi_Gonder': 'Досуңа жибер',
          'Yaziyi_Add_Favourites': 'Бул жазууну көп колдонулгандарга кошуңуз',
          'Okunma_Sayisi': 'Окулуу саны,',
          'Word_Indir': 'Word форматында жүктө',
          'Pdf_Indir': 'PDF форматында жүктө',
          'Bu_Yaziyi': 'Бул жазууну,',
          'Diger_aylardaki_namaz_vakitleri': 'Башка айлардагы намаз убакыттары',
          'RamazanBayrami':
              '%s Рамазан Айт намазынын убактысы : <strong>%s</strong>',
          'KurbanBayrami':
              '%s Курман Айт намазынын убактысы : <strong>%s</strong>',
          'KitapIndir': 'İndir',

          'IcindeGecen': 'Аттардын ичинде %s болгон шаарлар',
          'IsimleriBasliyan': 'Аттары  %s менен башталган шаарлар',

          'dak': 'мүнөт',
          'GunKisa': 'Күндүздүн кыскаруусу ',
          'GunUzun': 'Күндүздүн узаруусу ',
          'Ezani': 'Азани (Махалли)',
          'EzaniYok': 'Бүгүн азани саат туураланбайт.',
          'EzaniSaatYazi': 'Азани саат ',
          'EzaniIleri': ' мүнөт алдыга алынат.',
          'EzaniGeri': ' мүнөт артка алынат.',

          'AylikNamazVakitleriYazisi':
              '<strong>%s</strong> &#304;&#231;in <strong> 2013 %d </strong> Ay&#305; Namaz Vakitleri',
          'AylikNamazVakitleriYazisi_Title':
              '%s &#304;&#231;in 2013 %d Ay&#305; Namaz Vakitleri',
          'YillikNamazVakitleriYazisi':
              '<strong>%s</strong> &#304;&#231;in <strong> 2013 </strong> Y&#305;l&#305; Namaz Vakitleri',
          'YillikNamazVakitleriYazisi_Title':
              '%s &#304;&#231;in 2013  Y&#305;l&#305; Namaz Vakitleri',

          'Arz': 'Арз',
          'Tul': 'Тул',
          'Rumi': 'Руми',

          'Hizir': 'Хызыр',
          'Kasim': 'Касым',
          'YesilHat':
              'Шаардан чыккан <span style="color:green; font-weight:bold;">жашыл</span> сызык кыбыла багыты болуп саналат.',

          'UlkeYazisi': 'Өлкө',
          'EyaletYazisi': 'Област',
          'SehirYazisi': 'Шаар',
          'TarihYazisi': 'Күн',

          'KirmiziVakitler':
              '<strong>* Кызыл имсак жана куптан убакыттары имсак болгон эң акыркы күндүн убакыттары.</strong>',
          'YazSaatineGecis':
              '<strong>%s</strong> күнүнөн тарта убакыттар жайкы сааттын колдонулуусундагы алмашуу эсепке алынуу менен даярдалган.',
          'KadirGecesiYazisi':
              '<strong>Кадыр түнү:</strong> %s Жума күнүнөн, %s күнүнө караган түн.',
          'ImsakVaktiNotu': 'Имсак убактысы - бул орозону баштоо убактысы.',
          'Note': '<strong>Not: </strong>',
          'ImsakiyedekiSabah':
              'Орозо таблицасындагы <strong>\'Бакымдат\'</strong> убактысы - багымдат намазынын алгачкы убактысы болуп саналат',
          'SabahNamaziNotu':
              'Багымдат намазы имсактан 20 мүнөт өткөндө окулса болот.',
          'Sehir_Ismi_Girin': 'Өтүнүч, шаар атын жазыңыз...!',
          'AramaYok': 'Изделген шаар табылган жок !',
          'TitleSehirArama': 'Өтүнүч, шаар атын жазыңыз.',

          'VasatiVakitler': 'Васати убакыттар',
          'AzaniVakitler': 'Азани убакыттар',
          'TurkiyeTakvimi': 'Түркия Календары',
          'MesveretTakvimi': 'Машварат Календары',
          'ImsakiyeYazisi':
              'ХИЖРИ %s, МИЛАДИ %s-ЖЫЛЫ <strong>%s</strong> ҮЧҮН РАМАЗАН ШАРИФ ОРОЗО КАЛЕНДАРЫ',
          'ImsakiyeYazisi_Title':
              'Хижри %s, Милади %s-жылы <strong>%s</strong> үчүн Рамазан шариф орозо календары',
          'KacinciAy': '%d. Ай',
          'KacinciHafta': '%d. Апта',
          'AyKacCek': '%d Күн',

          'YilinGunu': 'Жылдын %t. күнү',
          'KalanGunYazi': 'Калган Күн : %t',

          'DigerVakitler': 'Калган убакыттар',
          'OnemliLinkler': 'Маанилүү шилтемелер',

          'Menu': 'Меню',
          'Diller': 'Тилдер',

          'local': 'Махалли саат',

          'remain_imsak': "Имсакка калган убакыт",
          'remain_sabah': "Багымдатка калган убакыт",
          'remain_gunes': "Күн чыгууга калган убакыт",
          'remain_israk': "Ишракка калган убакыт",
          'remain_ogle': "Бешимге калган убакыт",
          'remain_ikindi': "Асрга калган убакыт",
          'remain_aksam': "Шамга калган убакыт",
          'remain_yatsi': "Куптанга калган убакыт",

          'kibleSaatiYazisi':
              "Кыбыла сааты убактысында Күндү караган киши кыбылага караган болот.",

//'popupBaslik' : "Имсак убактысы тууралуу маанилүү түшүндүрмө !..",
//'YanlisImsak' : "Жаңылыш имсак убактысы түшүндүрмөсү",
//'Rasad' : "Расад тууралуу түшүндүрмө",
//'DogruImsak' : "Туура имсак убактысы түшүндүрмөсү",
        },
        'pl_PL': {
          "share": "Udostępnij",
          "daily_event": "Wydarzenie Dnia",
          "daily_quoute": "Cytat Dnia",
          "prayer_times": "CZASY MODLITWY",
          "HicriKameri": "Kalendarz Hijri",
          "language_selection": "Wybór Języka",
          "location_selection": "Wybór Lokalizacji",
          "vakit": "Czas",
          "saat": "Godzina",
          "bugun": "Dzisiaj",
          "tarih_sec": "Wybierz Datę",
          "search_city": "Szukaj Miasta",
          "kayitli_sehirler": "Zapisane Miasta",
          "konum_onay": "Potwierdź Lokalizację",
          "location_searching": "Wyszukiwanie Lokalizacji...",
          "auto_location": "Automatyczny Wybór Lokalizacji",
          "select_country": "Wybierz Kraj",
          "search_country": "Szukaj Kraju",
          "select_region": "Wybierz Region",
          "search_region": "Szukaj Regionu",

// butonlar

          'page_onyuz': 'Strona główna',
          'page_arka': 'Strona odwrotna',
          'page_sonraki': 'Następny dzień',
          'page_onceki': 'Poprzedni dzień',
          'page_bugun': 'Dzisiaj',

//Namaz Vakitleri Yazilari
          'TumDevletlerdeAra': 'Szukaj we wszystkich państwach',
          'DevletSeciniz': 'Wybierz państwo',
          'EyaletSeciniz': 'Wybierz region',
          'SehirSeciniz': 'Wybierz miasto',
          'NamazVakitleriYazi': 'Czasy modlitw salat',
          'Harita': 'Mapa',

//'NamazVakitleri' : array[],
          'imsak': 'Fadżr',
          'sabah': 'Poranek',
          'gunes': 'Tulu',
          'israk': 'Iszrak',
          'dahve': 'Kerahat',
          'kerahet': 'Zuhr',
          'ogle': 'Asr',
          'ikindi': 'Asr-i Sani',
          'asrisani': 'Isfirar',
          'isfirar': 'Maghrib',
          'aksam': 'Isztibak',
          'istibak': 'Isza',
          'yatsi': 'Isza-i Sani',
          'isaisani': 'Czas kyble',
          'geceyarisi': 'Dahwe-i Kubra',
          'teheccud': 'Północ',
          'seher': 'Tehedżdżud',
          'kible': 'Świt',

//Rumi Aylar
          'RumiAylar[1]': 'Kanun-i Sani',
          'RumiAylar[2]': 'Luty',
          'RumiAylar[3]': 'Marzec',
          'RumiAylar[4]': 'Kwiecień',
          'RumiAylar[5]': 'Maj',
          'RumiAylar[6]': 'Czerwiec',
          'RumiAylar[7]': 'Lipca',
          'RumiAylar[8]': 'Sierpień',
          'RumiAylar[9]': 'Wrzesień',
          'RumiAylar[10]': 'Teszrin-i Ewwel',
          'RumiAylar[11]': 'Teszrin-i Sani',
          'RumiAylar[12]': 'Kanun-i Ewwel',

//Haftanin Gunleri
          'HaftaninGunleri[7]': 'Niedziela',
          'HaftaninGunleri[1]': 'Poniedziałek',
          'HaftaninGunleri[2]': 'Wtorek',
          'HaftaninGunleri[3]': 'Środa ',
          'HaftaninGunleri[4]': 'Czwartek',
          'HaftaninGunleri[5]': 'Piątek',
          'HaftaninGunleri[6]': 'Sobota',

//Aylar

          'SeneninAylari[1]': 'STYCZEŃ',
          'SeneninAylari[2]': 'LUTY',
          'SeneninAylari[3]': 'MARZEC',
          'SeneninAylari[4]': 'KWIECIEŃ',
          'SeneninAylari[5]': 'MAJ',
          'SeneninAylari[6]': 'CZERWIEC',
          'SeneninAylari[7]': 'LIPCA',
          'SeneninAylari[8]': 'SIERPIEŃ',
          'SeneninAylari[9]': 'WRZESIEŃ',
          'SeneninAylari[10]': 'PAŹDZIERNIK',
          'SeneninAylari[11]': 'LISTOPAD',
          'SeneninAylari[12]': 'GRUDZIEŃ',

          'HicriAylar[0]': "MUHARREM",
          'HicriAylar[1]': "SAFER",
          'HicriAylar[2]': "REBI'UL-EWWEL",
          'HicriAylar[3]': "REBI'UL-AHIR",
          'HicriAylar[4]': "DŻEMAZIL-EWWEL",
          'HicriAylar[5]': "DŻEMAZIL-AHIR",
          'HicriAylar[6]': "REDŻEB",
          'HicriAylar[7]': "SZABAN",
          'HicriAylar[8]': "RAMADAN",
          'HicriAylar[9]': "SZEWWAL",
          'HicriAylar[10]': "ZIL-KA'DE",
          'HicriAylar[11]': "ZIL-HIDŻDŻE",

          'Yonler[0]': 'Północ',
          'Yonler[1]': 'Południe',
          'Yonler[2]': 'Wschód',
          'Yonler[3]': 'Zachód',

          'Alfabetik_Sehir_Listesi': 'Alfabetyczny spis miast',
          'AlfabetikSehirListesi': 'Alfabetik_%C5%9Eehir_Listesi',
          'YazSaati': 'Stosowanie czasu letniego.',

          'AddBookmark': 'Dołącz do ulubionych',
          'AnaSayfaYap': 'Ustaw jako stronę startową',
          'AramaSonuclari': 'Wynik poszukiwań',

          'Eyalet_Listesi': '%s_Eyalet_İl_Bolge_Listesi',
          'Sehir_Listesi': '%d_%s_Sehir_Listesi',
          'Sanal_Yol_UlkelerListesi': 'Ulkeler_Listesi',
          'SehirListesiYazisi': 'LISTA MIAST',

          'Icin_Namaz_Vakitleri': '%s_Icin_Namaz_Vakitleri',
          'sehrin_ismini_giriniz': 'Wpisz nazwę miasta...',
          'SehirArama': 'Szukaj miasto',
          'GeriDon': 'Wróć',

          'Imsakiye': 'IMSAKIJE',
          'LisanImsakiye': 'Imsakije w 44 językach',
          'Irtibat': 'KONTAKT',
          'Kitaplar': 'KSIĄŻKI',

          'Bayan': 'Dziewczynka',
          'Bay': 'Chłopiec',

          'GunlerYazi': 'Dzień',
          'AylarYazi': 'Miesiąc',
          'YillarYazi': 'Rok',

          'UlkelerListesi': 'Kliknij, aby wybrać państwo',
          'UlkeListesi': 'LISTA PAŃSTW',

          'EyaletListesi': 'Lista regionów, miast',
          'EyaletIlBolge': 'Region, miasto',
          'EyaletListesiTr': 'Lista regionów, miast',

          'SqlTT': 'dmy',

          'VakitYok':
              'Skontaktuj się z nami poprzez e-pocztę lub faks, aby uzyskać informacje o czasach modlitw salat w wybranym mieście.',
          'EPosta_adres':
              '<a href=\'mailto:info@turktakvim.com\'> info@turktakvim.com</a>',
          'fax_no': ' +90 (212) 454 23 87',

          'fax': 'Faks',
          'EPosta': 'E-poczta',
          'website': 'Adresy naszych stron internetowych',

          'HicriSemsi': 'Hidżri Szemsi',

          'Aylik': 'Czasy na miesiąc',
          'Yillik': 'Czasy na rok',
          'Yazdir': 'Zapisz',
          'Yaziyi_Gonder': 'Wyślij do znajomego',
          'Yaziyi_Add_Favourites': 'Dodaj do często używanych',
          'Okunma_Sayisi': 'Liczba czytań',
          'Word_Indir': 'Zapisz jako WORD',
          'Pdf_Indir': 'Zapisz jako PDF',
          'Bu_Yaziyi': 'Ten artykuł',
          'Diger_aylardaki_namaz_vakitleri':
              'Czasy modlitw salat w pozostałych miesiącach',
          'RamazanBayrami':
              'Czas dla modlitwy salat Święta Ramadan: %s, godz. <strong>%s</strong>',
          'KurbanBayrami':
              'Czas dla świątecznej modlitwy salat w Kurban Bajram: %s, sobota, godz. <strong>%s</strong>',
          'KitapIndir': 'Ściągnij książkę %s',

//'IcindeGecen' : '<span style=''color:##0033CC; font-size:15px;''>İsimleri i&ccedil;inde //<span style=''color:#0033CC; font-weight:bold;''>%s</span>// ge&ccedil;en şehirler</span>',
//'IsimleriBasliyan' : '<span style=''color:##0033CC; font-size:15px;''>İsimleri //<span style=''color:#0033CC; font-weight:bold; text-align:center;''>%s</span>// ile başlayan şehirler</span'
          'IcindeGecen': 'Miasta, które mają w swojej nazwie %s',
          'IsimleriBasliyan': 'Miasta, których nazwa rozpoczyna się od %s',

          'dak': ' minuta',
          'GunKisa': 'Dzień skraca się o ',
          'GunUzun': 'Dzień wydłuża się o ',
          'Ezani': 'Ezan (Lokalny)',
          'EzaniYok': 'Dzisiaj nie ustawia się zegara Ezan.',
          'EzaniSaatYazi': 'Zegar Ezan przestawia się o',
          'EzaniIleri': ' minut do przodu.',
          'EzaniGeri': ' minut do tyłu.',

          'AylikNamazVakitleriYazisi':
              'Czasy modlitw salat dla <strong>%s</strong> w roku <strong> 2013, %d </strong>',
          'AylikNamazVakitleriYazisi_Title':
              'Czasy modlitw salat dla %s w roku 2013, %d ',
          'YillikNamazVakitleriYazisi':
              'Czasy modlitw salat dla <strong>%s</strong> w roku <strong> 2013 </strong>',
          'YillikNamazVakitleriYazisi_Title':
              'Czasy modlitw salat dla %s w roku 2014',

          'Arz': 'Ziemia',
          'Tul': 'Długość',
          'Rumi': 'Rumi',

          'Hizir': 'Hyzyr',
          'Kasim': 'Listopad',
          'YesilHat':
              '<span style="color:green; font-weight:bold;">Zielona</span> linia wychodząca z miasta wskazuje kierunek kyble.',

          'UlkeYazisi': 'Państwo',
          'EyaletYazisi': 'Region',
          'SehirYazisi': 'Miasto',
          'TarihYazisi': 'Data',

          'KirmiziVakitler':
              '<strong>* Czasy fadżr i isza w czerwonym kolorze są czasem ostatniego dnia, w którym zaszedł czas fadżr.</strong>',
          'YazSaatineGecis':
              'Od <strong>%s</strong> czasy zostały przygotowane biorąc pod uwagę zmianę czasu zimowego na czas letni.',
          'KadirGecesiYazisi': '<strong>Noc Kadr:</strong> noc z %s na %s.',
          'ImsakVaktiNotu':
              'Pora Fadżr jest czasem rozpoczęcia postu i pierwszym czasem dla porannej modlitwy salat.',
          'Note': '<strong>Notatka: </strong>',
          'ImsakiyedekiSabah':
              'W Imsakije pora <strong>\'Poranek\'</strong> jest czasem przezornym dla porannej modlitwy salat.',
          'SabahNamaziNotu':
              'Poranną modlitwę salat można zacząć wykonywać 20 minut po czasie fadżr.',
          'Sehir_Ismi_Girin': 'Wpisz nazwę miasta!',
          'AramaYok': 'Nie znaleziono poszukiwanego miasta!',
          'TitleSehirArama': 'Szukanie miasta',

          'VasatiVakitler': 'Czasy Wasati',
          'AzaniVakitler': 'Czasy Ezani',
          'TurkiyeTakvimi': 'Kalendarz Turkiye',
          'MesveretTakvimi': 'Kalendarz Meszweret',
          'ImsakiyeYazisi':
              'RAMADAN-I SZERIF IMSAKIJE DLA <strong>%s</strong> W ROKU H.%s, M.%s',
          'ImsakiyeYazisi_Title':
              'Ramadan-i szerif Imsakije dla %s w roku H. %s, M. %s',

          'KacinciAy': '%d. miesiąc',
          'KacinciHafta': '%d. tydzień',
          'AyKacCek': '%d dni',

          'YilinGunu': '%t. dzień roku',
          'KalanGunYazi': 'Zostało dni : %t',

          'DigerVakitler': 'Pozostałe czasy',
          'OnemliLinkler': 'Ważne linki',

          'Menu': 'Menu',
          'Diller': 'Języki',

          'local': 'Czas lokalny',

          'remain_imsak': 'Czas do Fadżr',
          'remain_sabah': 'Czas do Poranek',
          'remain_gunes': 'Czas do Tulu',
          'remain_israk': 'Czas do Iszrak',
          'remain_ogle': 'Czas do Zuhr',
          'remain_ikindi': 'Czas do Asr',
          'remain_aksam': 'Czas do Maghrib',
          'remain_yatsi': 'Czas do Isza',

          'kibleSaatiYazisi':
              "Obrocic sie do slonca na czasie Kıble(Mahometanin dokanano modlitwa zeby obrocic do Kıble), to znaczy obrocic sie do kible.",

          'popupBaslik': "Important information about Imsâk time !..",
          'YanlisImsak': "Explanation about wrong Imsâk time",
          'Rasad': "Explanation about Observation",
          'DogruImsak': "Information about correct Imsâk time",
        },
        'ru_RU': {
          "share": "Поделиться",
          "daily_event": "Событие Дня",
          "daily_quoute": "Цитата Дня",
          "prayer_times": "ВРЕМЕНА МОЛИТВЫ",
          "HicriKameri": "Хиджра Календарь",
          "language_selection": "Выбор Языка",
          "location_selection": "Выбор Местоположения",
          "vakit": "Время",
          "saat": "Час",
          "bugun": "Сегодня",
          "tarih_sec": "Выбрать Дату",
          "search_city": "Поиск Города",
          "kayitli_sehirler": "Сохраненные Города",
          "konum_onay": "Подтвердить Местоположение",
          "location_searching": "Поиск местоположения...",
          "auto_location": "Автоматический Выбор Местоположения",
          "select_country": "Выбрать Страну",
          "search_country": "Поиск Страны",
          "select_region": "Выбрать Регион",
          "search_region": "Поиск Региона",
// butonlar
          'page_onyuz': 'Лицевая сторона',
          'page_arka': 'Обратная сторона',
          'page_sonraki': 'Следующий день',
          'page_onceki': 'Предыдущий день',
          'page_bugun': 'Сегодня',

//Namaz Vakitleri Yazilari
          'TumDevletlerdeAra': 'Поиск среди стран',
          'DevletSeciniz': 'Выберите страну',
          'EyaletSeciniz': 'Выберите регион',
          'SehirSeciniz': 'Пожалуйста выберите город',
          'NamazVakitleriYazi': 'Времена намазов',
          'Harita': 'Карта',

//'NamazVakitleri' : array[],
          'imsak': 'Имсак',
          'sabah': 'Субх',
          'gunes': 'Солнце',
          'israk': 'Ишрак',
          'dahve': 'Карахат',
          'kerahet': 'Зухр',
          'ogle': 'Аср',
          'ikindi': 'Аср-и сани',
          'asrisani': 'Исфирар',
          'isfirar': 'Магриб',
          'aksam': 'Иштибак',
          'istibak': 'Ишаа',
          'yatsi': 'Ишаа-и сани',
          'isaisani': 'Время Киблы',
          'geceyarisi': 'Духа-и кубра',
          'teheccud': 'Полночь',
          'seher': 'Тахадджуд',
          'kible': 'Сахур',

//Rumi Aylar
          'RumiAylar[1]': 'Канун-и сани',
          'RumiAylar[2]': 'Февраль',
          'RumiAylar[3]': 'Март',
          'RumiAylar[4]': 'Апрель',
          'RumiAylar[5]': 'Май',
          'RumiAylar[6]': 'Июнь',
          'RumiAylar[7]': 'Июль',
          'RumiAylar[8]': 'Август',
          'RumiAylar[9]': 'Сентябрь',
          'RumiAylar[10]': 'Ташрин-и аууаль',
          'RumiAylar[11]': 'Ташрин-и сани',
          'RumiAylar[12]': 'Канун-и аууаль',

//Haftanin Gunleri
          'HaftaninGunleri[7]': 'Воскресенье',
          'HaftaninGunleri[1]': 'Понедельник',
          'HaftaninGunleri[2]': 'Вторник',
          'HaftaninGunleri[3]': 'Среда',
          'HaftaninGunleri[4]': 'Четверг',
          'HaftaninGunleri[5]': 'Пятница',
          'HaftaninGunleri[6]': 'Суббота',

//Aylar

          'SeneninAylari[1]': 'ЯНВАРЬ',
          'SeneninAylari[2]': 'ФЕВРАЛЬ',
          'SeneninAylari[3]': 'МАРТ',
          'SeneninAylari[4]': 'АПРЕЛЬ',
          'SeneninAylari[5]': 'МАЙ',
          'SeneninAylari[6]': 'ИЮНЬ',
          'SeneninAylari[7]': 'ИЮЛЬ',
          'SeneninAylari[8]': 'АВГУСТ',
          'SeneninAylari[9]': 'СЕНТЯБРЬ',
          'SeneninAylari[10]': 'ОКТЯБРЬ',
          'SeneninAylari[11]': 'НОЯБРЬ',
          'SeneninAylari[12]': 'ДЕКАБРЬ',

          'HicriAylar[0]': "МУХАРРАМ",
          'HicriAylar[1]': "САФАР",
          'HicriAylar[2]': "РАБИЪ-УЛЬ-АВВАЛЬ",
          'HicriAylar[3]': "РАБИЪ-УЛЬ-АХИР",
          'HicriAylar[4]': "ЖАМАЗ-ИЛЬ-АВВАЛЬ",
          'HicriAylar[5]': "ЖАМАЗ-ИЛЬ-АХИР",
          'HicriAylar[6]': "РАДЖАБ",
          'HicriAylar[7]': "ШАБАН",
          'HicriAylar[8]': "РАМАЗАН",
          'HicriAylar[9]': "ШАВВАЛЬ",
          'HicriAylar[10]': "ЗУЛЬ-КАДА",
          'HicriAylar[11]': "ЗУЛЬ-ХИДЖА",

          'Yonler[0]': 'Север',
          'Yonler[1]': 'GЮг',
          'Yonler[2]': 'Восток',
          'Yonler[3]': 'Запад',

          'Alfabetik_Sehir_Listesi': 'Города в алфавитном порядке',
          'AlfabetikSehirListesi': 'Alfabetik_%C5%9Eehir_Listesi',
          'YazSaati': 'Переход на летнее время.',

          'AddBookmark': 'Добавить в избранное',
          'AnaSayfaYap': 'Сделать главной страницей',
          'AramaSonuclari': 'Результат поиска',

          'Eyalet_Listesi': '%s_Eyalet_İl_Bolge_Listesi',
          'Sehir_Listesi': '%d_%s_Sehir_Listesi',
          'Sanal_Yol_UlkelerListesi': 'Ulkeler_Listesi',
          'SehirListesiYazisi': 'СПИСОК ГОРОДОВ',

          'Icin_Namaz_Vakitleri': '%s_Icin_Namaz_Vakitleri',
          'sehrin_ismini_giriniz': 'напишите название города...',
          'SehirArama': 'Поиск города',
          'GeriDon': 'Вернуться обратно',

          'Imsakiye': 'Таблицы поста',
          'LisanImsakiye': '44 Таблица поста',
          'Irtibat': 'СВЯЗЬ',
          'Kitaplar': 'КНИГИ',

          'Bayan': 'Женщина',
          'Bay': 'Мужчина',

          'GunlerYazi': 'Дни',
          'AylarYazi': 'Месяцы',
          'YillarYazi': 'Годы',

          'UlkelerListesi': 'Нажмите чтобы увидеть список стран',
          'UlkeListesi': 'СПИСОК СТРАН',

          'EyaletListesi': 'Список регионов, провинции, районов',
          'EyaletIlBolge': 'Регион, провинция, район',
          'EyaletListesiTr': 'Список провинции, районов',

          'SqlTT': 'dmy',

          'VakitYok':
              'Свяжитесь с нами по е-почте или факсу чтобы получить время намазов для выбранного города.',
          'EPosta_adres':
              '<a href=\'mailto:info@turktakvim.com\'> info@turktakvim.com</a>',
          'fax_no': ' +90 (212) 454 23 87',

          'fax': 'ФАКС',
          'EPosta': 'Е-Почта',
          'website': 'Веб адресы',

          'HicriSemsi': 'Солнечный календарь',

          'Aylik': 'Времена на месяц',
          'Yillik': 'Времена на год',
          'Yazdir': 'Печать',
          'Yaziyi_Gonder': 'Отправить другу',
          'Yaziyi_Add_Favourites': 'Поместить в часто используемые',
          'Okunma_Sayisi': 'Просмотр',
          'Word_Indir': 'Загрузить в формате WORD',
          'Pdf_Indir': 'Загрузить в формате PDF',
          'Bu_Yaziyi': 'Этот текст',
          'Diger_aylardaki_namaz_vakitleri':
              'Времена намазов для остальных месяцев',
          'RamazanBayrami':
              '%s Время "Рамазан-айт" намаза : <strong>%s</strong>',
          'KurbanBayrami':
              '%sг. Сбт. Время "Курбан-айт" намаза : <strong>%s</strong>',
          'KitapIndir': 'Загрузить_книгу_%s',

//'IcindeGecen' : '<span style=''color:##0033CC; font-size:15px;''>İsimleri i&ccedil;inde //<span style=''color:#0033CC; font-weight:bold;''>%s</span>// ge&ccedil;en şehirler</span>';
//'IsimleriBasliyan' : '<span style=''color:##0033CC; font-size:15px;''>İsimleri //<span style=''color:#0033CC; font-weight:bold; text-align:center;''>%s</span>// ile başlayan şehirler</span';
          'IcindeGecen': 'Города в названий которых есть "%s"',
          'IsimleriBasliyan': 'Города которые начинаются на "%s"',

          'dak': ' минуту',
          'GunKisa': 'День удлиняется ',
          'GunUzun': 'День укорачивается на ',
          'Ezani': 'Азан (квартальный)',
          'EzaniYok': 'на сегодня нет времени азана.',
          'EzaniSaatYazi': 'Время азана ',
          'EzaniIleri': ' минута передвигается вперед.',
          'EzaniGeri': ' минута передвигается назад.',

          'AylikNamazVakitleriYazisi':
              'Время намаза на <strong>%d 2014г.</strong> Для г. <strong>%s</strong>.',
          'AylikNamazVakitleriYazisi_Title':
              'Время намаза на <strong>%d 2014г.</strong> Для г. <strong>%s</strong>',
          'YillikNamazVakitleriYazisi':
              'Времена намазов для г. <strong>%s</strong> на <strong>2014г</strong>. ',
          'YillikNamazVakitleriYazisi_Title':
              'Времена намазов для г. <strong>%s</strong> на <strong>2014г</strong>',

          'Arz': 'Земля',
          'Tul': 'Долгота',
          'Rumi': 'Римский календарь',

          'Hizir': 'Хызыр',
          'Kasim': 'Ноябрь',
          'YesilHat':
              '<span style="color:green; font-weight:bold;">Зеленая</span>  линия отходящая от города, указывает направление Киблы.',

          'UlkeYazisi': 'Страна',
          'EyaletYazisi': 'Регион',
          'SehirYazisi': 'Город',
          'TarihYazisi': 'История',

          'KirmiziVakitler':
              '<strong>* Красные времена Имсак и Ишаа, последние дни когда наступило время Имсак.</strong>',
          'YazSaatineGecis':
              'с <strong>%s</strong>, учтен переход на летнее время.',
          'KadirGecesiYazisi':
              '<strong>Ночь Кадр:</strong> наступает в ночь с %s на %s .',
          'ImsakVaktiNotu': 'Имсак, начало времени поста.',
          'Note': '<strong>Примечание: </strong>',
          'ImsakiyedekiSabah':
              '<strong>\'Субх\'</strong> в Имсакия, начальное время утреннего намаза.',
          'SabahNamaziNotu':
              'Намаз Субх совершается спустя 20 мин. После Имсак.',
          'Sehir_Ismi_Girin': 'Пожалуйста нажмите на город !',
          'AramaYok': 'Город не найден !',
          'TitleSehirArama': 'Поиск города',

          'VasatiVakitler': 'Средние времена',
          'AzaniVakitler': 'Времена азана',
          'TurkiyeTakvimi': 'Календарь Туркия',
          'MesveretTakvimi': 'Календарь Машверет',
          'ImsakiyeYazisi':
              'ХИДЖРИ %s, МИЛАДИ %s г., ДЛЯ <strong>%s</strong> КАЛЕНДАРЬ ПОКАЗЫВАЮЩИЙ НАЧАЛО ПОСТА РАМАЗАН-И ШАРИФ',
          'ImsakiyeYazisi_Title':
              'ХИДЖРИ %s, МИЛАДИ %s г., ДЛЯ <strong>%s</strong> КАЛЕНДАРЬ ПОКАЗЫВАЮЩЕЙ НАЧАЛА ПОСТА РАМАЗАН-Ы ШЕРИФ',

          'KacinciAy': '%d. Месяц',
          'KacinciHafta': '%d. Неделя',
          'AyKacCek': '%d  День',

          'YilinGunu': '%t день года',
          'KalanGunYazi': 'оставшиеся дни : %t',

          'DigerVakitler': 'Другие времена',
          'OnemliLinkler': 'Полезные ссылки',

          'Menu': 'Меню',
          'Diller': 'Языки',

          'local': 'Местное время',

          'remain_imsak': 'Время до Фаджр',
          'remain_sabah': 'время до Субх',
          'remain_gunes': 'до Восхода солнца',
          'remain_israk': 'Время до Ишрак',
          'remain_ogle': 'Время до Зухр',
          'remain_ikindi': 'Время до Аср',
          'remain_aksam': 'Время до Магриб',
          'remain_yatsi': 'Время до Иша',

          'kibleSaatiYazisi':
              "Тот кто во Время Кыбле повернется в сторону солнца, тот он также будет напротив Кыбле.",

          'popupBaslik': "Important information about Imsâk time !..",
          'YanlisImsak': "Explanation about wrong Imsâk time",
          'Rasad': "Explanation about Observation",
          'DogruImsak': "Information about correct Imsâk time",
        },
        'ro_RO': {
          "share": "Distribuie",
          "daily_event": "Evenimentul Zilei",
          "daily_quoute": "Citatul Zilei",
          "prayer_times": "TIMPI DE RUGĂCIUNE",
          "HicriKameri": "Calendar Hijri",
          "language_selection": "Selectarea Limbii",
          "location_selection": "Selectarea Locației",
          "vakit": "Timp",
          "saat": "Oră",
          "bugun": "Astăzi",
          "tarih_sec": "Alegeți Data",
          "search_city": "Căutați Oraș",
          "kayitli_sehirler": "Orașe Salvate",
          "konum_onay": "Confirmați Locația",
          "location_searching": "Căutare Locație...",
          "auto_location": "Selectarea Automată a Locației",
          "select_country": "Alegeți Țara",
          "search_country": "Căutați Țara",
          "select_region": "Alegeți Regiunea",
          "search_region": "Căutați Regiunea",
// butonlar
          'page_onyuz': 'Față',
          'page_arka': 'Verso',
          'page_sonraki': 'Ziua următoare',
          'page_onceki': 'Ziua precedentă',
          'page_bugun': 'Azi',

//Namaz Vakitleri Yazilari
          'TumDevletlerdeAra': 'Caută toate țările',
          'DevletSeciniz': 'Vă rugăm alegeți o țară',
          'EyaletSeciniz': 'Vă rugăm alegeți un județ',
          'SehirSeciniz': 'Vă rugăm alegeți un oraș',
          'NamazVakitleriYazi': 'Timpurile de rugăciune',
          'Harita': 'Hartă',

//'NamazVakitleri' : array[],
          'imsak': 'Imsak',
          'sabah': 'Dimineață',
          'gunes': 'Răsărit',
          'israk': 'Ișrak',
          'dahve': 'Kerahat',
          'kerahet': 'Amiază',
          'ogle': 'După-amiază',
          'ikindi': 'Asr-i Sani',
          'asrisani': 'Isfirar',
          'isfirar': 'Apus',
          'aksam': 'Iștibak',
          'istibak': 'Noapte',
          'yatsi': 'Ișa-i Sani',
          'isaisani': 'Ora Qibla',
          'geceyarisi': 'Dahve-i kubra',
          'teheccud': 'Jumătatea nopții',
          'seher': 'Tehejjud',
          'kible': 'Zori',

//Rumi Aylar
          'RumiAylar[1]': 'Ianuarie',
          'RumiAylar[2]': 'Februarie',
          'RumiAylar[3]': 'Martie',
          'RumiAylar[4]': 'Aprilie',
          'RumiAylar[5]': 'Mai',
          'RumiAylar[6]': 'Iunie',
          'RumiAylar[7]': 'Iulie',
          'RumiAylar[8]': 'August',
          'RumiAylar[9]': 'Septembrie',
          'RumiAylar[10]': 'Octombrie',
          'RumiAylar[11]': 'Noiembrie',
          'RumiAylar[12]': 'Decembrie',

//Haftanin Gunleri
          'HaftaninGunleri[7]': 'Duminică',
          'HaftaninGunleri[1]': 'Luni',
          'HaftaninGunleri[2]': 'Marți',
          'HaftaninGunleri[3]': 'Miercuri',
          'HaftaninGunleri[4]': 'Joi',
          'HaftaninGunleri[5]': 'Vineri',
          'HaftaninGunleri[6]': 'Sâmbătă',

//Aylar

          'SeneninAylari[1]': 'IANUARIE',
          'SeneninAylari[2]': 'FEBRUARIE',
          'SeneninAylari[3]': 'MARTIE',
          'SeneninAylari[4]': 'APRILIE',
          'SeneninAylari[5]': 'MAI',
          'SeneninAylari[6]': 'IUNIE',
          'SeneninAylari[7]': 'IULIE',
          'SeneninAylari[8]': 'AUGUST',
          'SeneninAylari[9]': 'SEPTEMBRIE',
          'SeneninAylari[10]': 'OCTOMBRIE',
          'SeneninAylari[11]': 'NOIEMBRIE',
          'SeneninAylari[12]': 'DECEMBRIE',

          'HicriAylar[0]': "MUHARREM",
          'HicriAylar[1]': "SAFER",
          'HicriAylar[2]': "REBIUL-EVVEL",
          'HicriAylar[3]': "REBIUL-AHIR",
          'HicriAylar[4]': "GEMAZIL-EVVEL",
          'HicriAylar[5]': "GEMAZIL-AHIR",
          'HicriAylar[6]': "REGEB",
          'HicriAylar[7]': "ȘABAN",
          'HicriAylar[8]': "RAMAZAN",
          'HicriAylar[9]': "ȘEVVAL",
          'HicriAylar[10]': "ZIL-KA'DE",
          'HicriAylar[11]': "ZIL-HIJJA",

          'Yonler[0]': 'Nord',
          'Yonler[1]': 'Sud',
          'Yonler[2]': 'Est',
          'Yonler[3]': 'Vest',

          'Alfabetik_Sehir_Listesi': 'Lista orașelor în ordine alfabetică',
          'AlfabetikSehirListesi': 'Alfabetik_%C5%9Eehir_Listesi',
          'YazSaati': 'Conform orarului de vară.',

          'AddBookmark': 'Adăugați la favorite',
          'AnaSayfaYap': 'Setați ca pagină principală',
          'AramaSonuclari': 'Rezultate căutare',

          'Eyalet_Listesi': '%s_Eyalet_İl_Bolge_Listesi',
          'Sehir_Listesi': '%d_%s_Sehir_Listesi',
          'Sanal_Yol_UlkelerListesi': 'Ulkeler_Listesi',
          'SehirListesiYazisi': 'LISTĂ ORAȘE',

          'Icin_Namaz_Vakitleri': '%s_Icin_Namaz_Vakitleri',
          'sehrin_ismini_giriniz': 'Vă rugăm introduceți numele orașului...',
          'SehirArama': 'Căutare Oraș',
          'GeriDon': 'Înapoi',

          'Imsakiye': 'IMSAKIYE',
          'LisanImsakiye': '44 de limbi IMSAKIYE',
          'Irtibat': 'Contact',
          'Kitaplar': 'Cărți',

          'Bayan': 'Femeie',
          'Bay': 'Bărbat',

          'GunlerYazi': 'Zile',
          'AylarYazi': 'Luni',
          'YillarYazi': 'Ani',

          'UlkelerListesi': 'Click pentru lista țărilor',
          'UlkeListesi': 'LISTA ȚĂRI',

          'EyaletListesi': 'Lista Județe',
          'EyaletIlBolge': 'Județe',
          'EyaletListesiTr': 'Lista județe',

          'SqlTT': 'dmy',

          'VakitYok':
              'Pentru timpurile de rugăciune ale orașului ales vă rugăm contactați-ne prin fax sau e-mail.',
          'EPosta_adres':
              '<a href=\'mailto:info@turktakvim.com\'> info@turktakvim.com</a>',
          'fax_no': ' +90 (212) 454 23 87',

          'fax': 'Fax',
          'EPosta': 'E-mail',
          'website': 'Adrese web',

          'HicriSemsi': 'Hijri Solar',

          'Aylik': 'Calendar lunar',
          'Yillik': 'Calendar anual',
          'Yazdir': 'Printează',
          'Yaziyi_Gonder': 'Trimite unui prieten',
          'Yaziyi_Add_Favourites': 'Adaugă la favorite',
          'Okunma_Sayisi': 'Număr de citiri',
          'Word_Indir': 'Download ca pdf',
          'Pdf_Indir': 'Pdf olarak indir',
          'Bu_Yaziyi': 'Acest înscris',
          'Diger_aylardaki_namaz_vakitleri':
              'Timpurile de rugăciune în celelalte luni',
          'RamazanBayrami':
              '%s Rugăciunea de Sărbătoare Ramazan : <strong>%s</strong>',
          'KurbanBayrami':
              '%s Rugăciunea de Sărbătoarea Sacrificiului : <strong>%s</strong>',
          'KitapIndir': 'Download',

//'IcindeGecen = '<span style=''color:##0033CC; font-size:15px;''>İsimleri i&ccedil;inde //<span style=''color:#0033CC; font-weight:bold;''>%s</span>// ge&ccedil;en şehirler</span>';
//'IsimleriBasliyan = '<span style=''color:##0033CC; font-size:15px;''>İsimleri //<span style=''color:#0033CC; font-weight:bold; text-align:center;''>%s</span>// ile başlayan şehirler</span';
          'IcindeGecen': 'Orașele în al căror nume se găsește %s',
          'IsimleriBasliyan': 'Orașele al căror nume începe cu %s',

          'dak': ' minut',
          'GunKisa': 'Scurtarea zilei ',
          'GunUzun': 'Lungirea zilei ',
          'Ezani': 'Ezani',
          'EzaniYok': 'Azi nu se fixează ora ezani.',
          'EzaniSaatYazi': 'Ora Ezani ',
          'EzaniIleri': ' se dă înapoi   minut/e.',
          'EzaniGeri': ' se dă înainte   minute/e.',

          'AylikNamazVakitleriYazisi':
              'Timpurile de rugăciune ale lunii <strong> 2013 %d </strong> pentru <strong>%s</strong>',
          'AylikNamazVakitleriYazisi_Title':
              '%s &#304;&#231;in 2013 %d Ay&#305; Namaz Vakitleri',
          'YillikNamazVakitleriYazisi':
              'Timpurile de rugăciune pentru <strong> 2013 </strong> pentru <strong>%s</strong>',
          'YillikNamazVakitleriYazisi_Title':
              '%s &#304;&#231;in 2013  Y&#305;l&#305; Namaz Vakitleri',

          'Arz': 'Latitudine',
          'Tul': 'Longitudine',
          'Rumi': 'Calendar Rumi',

          'Hizir': 'Sezon de Vară',
          'Kasim': 'Sezon de Iarnă',
          'YesilHat':
              'Banda <span style="color:green; font-weight:bold;">verde</span> ce pornește de la oraș este direcția Qiblei.',

          'UlkeYazisi': 'Țară',
          'EyaletYazisi': 'Județ',
          'SehirYazisi': 'Oraș',
          'TarihYazisi': 'Dată',

          'KirmiziVakitler':
              '<strong>* timpurile imsak și rugăciunii de seară, în roșu sunt timpurile ultimei zile pentru imsak.</strong>',
          'YazSaatineGecis':
              'S-a pregătit având învedere că la data de <strong>%s</strong> se trece la ora de vară.',
          'KadirGecesiYazisi':
              '<strong>Noaptea Qadir:</strong> este în noaptea ce leagă %s de %s.',

          'ImsakVaktiNotu': 'Imsak, timpul de începere al postului.',
          'Note': '<strong>Notă: </strong>',
          'ImsakiyedekiSabah':
              '<strong>\'Dimineață\'</strong> din imsakiye este primul timp al rugăciunii de dimineață.',

          'SabahNamaziNotu':
              'Rugăciunea de dimineață poate fi împlinită la 20 de minute după imsak.',
          'Sehir_Ismi_Girin': 'Vă rugăm introduceți numele orașului!',
          'AramaYok': 'Nu s-a găsit orașul solicitat !',
          'TitleSehirArama': 'Căutare Oraș',

          'VasatiVakitler': 'Timpuri Medii',
          'AzaniVakitler': 'Timpuri Ezani',
          'TurkiyeTakvimi': 'Calendarul Turcia',
          'MesveretTakvimi': 'Calendarul Consultat',
          'ImsakiyeYazisi':
              'Anul %s Hijri, %s Gregorian, orar timp rug. și post pentru luna Ramazan',
          'ImsakiyeYazisi_Title':
              'Anul 1434 Hijri, 2013 Gregorian, orar timp rug. și post pentru luna Ramazan',

          'KacinciAy': '%d. Lună',
          'KacinciHafta': '%d. Săptămână',
          'AyKacCek': '%d Zile',

          'YilinGunu': 'A %t-a zi a anului',
          'KalanGunYazi': 'Zile rămase : %t',

          'DigerVakitler': 'Celelalte timpuri',
          'OnemliLinkler': 'Linkuri importante',

          'Menu': 'Meniu',
          'Diller': 'Limbi',

          'local': 'Ora locală',

          'remain_imsak': "Timp rămas până la rugăciunea de dimineață",
          'remain_sabah': "Timp rămas până la Dimineață",
          'remain_gunes': "Timp rămas până la răsărit",
          'remain_israk': "Timp rămas până la ișrak",
          'remain_ogle': "Timp rămas până la rugăciunea de amiază",
          'remain_ikindi': "Timp rămas până la rugăciunea de după amiază",
          'remain_aksam': "Timp rămas până la rugăciunea de apus",
          'remain_yatsi': "Timp rămas până la rugăciunea de noapte",

          'kibleSaatiYazisi':
              "Ore, timp in soare a reveni la Qiblah Qibla fi înapoi.",

          'popupBaslik': "Important information about Imsâk time !..",
          'YanlisImsak': "Explanation about wrong Imsâk time",
          'Rasad': "Explanation about Observation",
          'DogruImsak': "Information about correct Imsâk time",
        },
        'sq_AL': {
          "share": "Shpërndaj",
          "daily_event": "Ngjarja e Ditës",
          "daily_quoute": "Citat i Ditës",
          "prayer_times": "ORARET E NAMAZIT",
          "HicriKameri": "Kalendar Hixhri",
          "language_selection": "Zgjedhja e Gjuhës",
          "location_selection": "Zgjedhja e Vendndodhjes",
          "vakit": "Koha",
          "saat": "Ora",
          "bugun": "Sot",
          "tarih_sec": "Zgjidhni Datën",
          "search_city": "Kërkoni Qytetin",
          "kayitli_sehirler": "Qytetet e Ruajtura",
          "konum_onay": "Konfirmo Vendndodhjen",
          "location_searching": "Po kërkohet Vendndodhja...",
          "auto_location": "Zgjedhja Automatike e Vendndodhjes",
          "select_country": "Zgjidhni Shtetin",
          "search_country": "Kërkoni Shtetin",
          "select_region": "Zgjidhni Rajonin",
          "search_region": "Kërkoni Rajonin",
// butonlar
          'page_onyuz': 'Faqa e Parë',
          'page_arka': 'Faqa Mbrapa',
          'page_sonraki': 'Dita Pasardhëse',
          'page_onceki': 'Dita Paraardhëse',
          'page_bugun': 'Sot',

//Namaz Vakitleri Yazilari
          'TumDevletlerdeAra': 'Kërko Në Të Gjitha Shtetet',
          'DevletSeciniz': 'Ju Lutemi Zgjidhni Një Shtet',
          'EyaletSeciniz': 'Ju Lutemi Zgjidhni Një Shtet',
          'SehirSeciniz': 'Ju Lutemi Zgjidhni Një Qytet',
          'NamazVakitleriYazi': 'Kohët E Faljes',
          'Harita': 'Harta',

//'NamazVakitleri' : array[],
          'imsak': 'Imsaku',
          'sabah': 'Sabahu',
          'gunes': 'Dielli',
          'israk': 'Ishrak',
          'dahve': 'Kerahet',
          'kerahet': 'Yleja',
          'ogle': 'Ikindija',
          'ikindi': 'Ikindija E Dytë',
          'asrisani': '&#304,sfirar',
          'isfirar': 'Akshami',
          'aksam': 'İştibak',
          'istibak': 'Jacia',
          'yatsi': 'Jacia E Dytë',
          'isaisani': 'Ora e Kiblës',
          'geceyarisi': 'Dahve-i Kübrâ',
          'teheccud': 'Mesnata',
          'seher': 'Tehexh-xhud',
          'kible': 'Kible',

//Rumi Aylar
          'RumiAylar[1]': 'Janar',
          'RumiAylar[2]': 'Shkurt',
          'RumiAylar[3]': 'Mars',
          'RumiAylar[4]': 'Prill',
          'RumiAylar[5]': 'Maj',
          'RumiAylar[6]': 'Qershor',
          'RumiAylar[7]': 'Korrik',
          'RumiAylar[8]': 'Gusht',
          'RumiAylar[9]': 'Shtator',
          'RumiAylar[10]': 'Tetor',
          'RumiAylar[11]': 'Nëntor',
          'RumiAylar[12]': 'Dhjetor',

//Haftanin Gunleri
          'HaftaninGunleri[7]': 'E Djelë',
          'HaftaninGunleri[1]': 'E Hënë',
          'HaftaninGunleri[2]': 'E Martë',
          'HaftaninGunleri[3]': 'E Mërkurë',
          'HaftaninGunleri[4]': 'E Enjte',
          'HaftaninGunleri[5]': 'E Xhuma',
          'HaftaninGunleri[6]': 'E Shtunë',

//Aylar

          'SeneninAylari[1]': 'JANAR',
          'SeneninAylari[2]': 'SHKURT',
          'SeneninAylari[3]': 'MARS',
          'SeneninAylari[4]': 'PRILL',
          'SeneninAylari[5]': 'MAJ',
          'SeneninAylari[6]': 'QERSHOR',
          'SeneninAylari[7]': 'KORRIK',
          'SeneninAylari[8]': 'GUSHT',
          'SeneninAylari[9]': 'SHTATOR',
          'SeneninAylari[10]': 'TETOR',
          'SeneninAylari[11]': 'NENTOR',
          'SeneninAylari[12]': 'DHJETOR',

          'HicriAylar[0]': "MUHARREM",
          'HicriAylar[1]': "SAFER",
          'HicriAylar[2]': "REBIUL EVVEL",
          'HicriAylar[3]': "REBIUL AHIR",
          'HicriAylar[4]': "XHEMAZIJEL EVVEL",
          'HicriAylar[5]': "XHEMAZIJEL AHIR",
          'HicriAylar[6]': "REXHEP",
          'HicriAylar[7]': "SHABAN",
          'HicriAylar[8]': "RAMAZAN",
          'HicriAylar[9]': "SHEVVAL",
          'HicriAylar[10]': "DHIL KADE",
          'HicriAylar[11]': "DHIL HIXHE",

          'Yonler[0]': 'Veri',
          'Yonler[1]': 'Jug',
          'Yonler[2]': 'Lindje',
          'Yonler[3]': 'Perëndim',

          'Alfabetik_Sehir_Listesi': 'Lista E Qyteteve Në Rend Alfabetik',
          'AlfabetikSehirListesi': 'Alfabetik_%C5%9Eehir_Listesi',
          'YazSaati': 'Aplikohet Ora E Verës.',

          'AddBookmark': 'Shtojeni Tek Ato Që Përdoren Shpesh',
          'AnaSayfaYap': 'Bëjeni Këtë Faqe Tuaj Kryesore',
          'AramaSonuclari': 'Rezultatet e Kërkimit',

          'Eyalet_Listesi': '%s_Eyalet_İl_Bolge_Listesi',
          'Sehir_Listesi': '%d_%s_Sehir_Listesi',
          'Sanal_Yol_UlkelerListesi': 'Ulkeler_Listesi',
          'SehirListesiYazisi': 'LISTA E QYTETEVE',

          'Icin_Namaz_Vakitleri': '%s_Icin_Namaz_Vakitleri',
          'sehrin_ismini_giriniz': 'Ju lutëmi shënoni emrin e qytetit...',
          'SehirArama': 'Kërko qytet',
          'GeriDon': 'Kthehu Mbrapsht',

          'Imsakiye': 'KOHET E AGJERIMIT',
          'LisanImsakiye': 'Kalendari i Imsakut në 44 gjuhë',
          'Irtibat': 'KONTAKT',
          'Kitaplar': 'LIBRAT',

          'Bayan': 'Vajzë',
          'Bay': 'Djalë',

          'GunlerYazi': 'Ditët',
          'AylarYazi': 'Muajt',
          'YillarYazi': 'Vitet',

          'UlkelerListesi': 'Klikoni Për Listën E Shteteve',
          'UlkeListesi': 'LISTA E SHTETEVE',

          'EyaletListesi': 'Lista e Shtetit, Qytetit, Zonës',
          'EyaletIlBolge': 'Shtet, Qytet, Zonë',
          'EyaletListesiTr': 'Lista e Qytetit, Zonës',

          'SqlTT': 'dmy',

          'VakitYok':
              'Për kohët e faljes së qytetit që keni zgjedhur ju lutemi kontaktoni me ne me anë të e-mailit ose faksit.',
          'EPosta_adres':
              '<a href=\'mailto:info@turktakvim.com\'> info@turktakvim.com</a>',
          'fax_no': ' +90 (212) 454 23 87',

          'fax': 'Faks',
          'EPosta': 'E-mail',
          'website': 'Adresat E Faqeve Web',

          'HicriSemsi': 'Hixhri Shemsi',

          'Aylik': 'Kohët Mujore',
          'Yillik': 'Kohët Vjetore',
          'Yazdir': 'Printo',
          'Yaziyi_Gonder': 'Dërgoja Një Miku',
          'Yaziyi_Add_Favourites':
              'Shtojeni Këtë Shkrim Tek Ato Që Përdoren Shpesh',
          'Okunma_Sayisi': 'Sa Herë Eshtë Lexuar',
          'Word_Indir': 'Shkarkoje Në Word',
          'Pdf_Indir': 'Shkarkoje Në Pdf',
          'Bu_Yaziyi': 'Këtë Shkrim',
          'Diger_aylardaki_namaz_vakitleri':
              'Kohët e Faljes Së Muajve Të Tjerë',
          'RamazanBayrami':
              'Koha e Namazit Të RAMAZAN Bajramit %s : <strong>%s</strong>',
          'KurbanBayrami':
              'Koha e Namazit Të Kurbanit Bajramit %s : <strong>%s</strong>',
          'KitapIndir': '%s_Shkarko_Librin',

//'IcindeGecen = '<span style=''color:##0033CC; font-size:15px;''>İsimleri i&ccedil;inde //<span style=''color:#0033CC; font-weight:bold;''>%s</span>// ge&ccedil;en şehirler</span>';
//'IsimleriBasliyan = '<span style=''color:##0033CC; font-size:15px;''>İsimleri //<span style=''color:#0033CC; font-weight:bold; text-align:center;''>%s</span>// ile başlayan şehirler</span';
          'IcindeGecen': 'Qytetet të cilët përmbajnë %s brenda emrit',
          'IsimleriBasliyan': 'Qytetet të cilave u fillon emri me %s',

          'dak': ' minuta',
          'GunKisa': 'Shkurtimi I Ditës ',
          'GunUzun': 'Zgjatja e Dites ',
          'Ezani': 'Ezani (Venor)',
          'EzaniYok': 'Sot Ora E Ezanit Nuk Ndryshohet.',
          'EzaniSaatYazi': 'Ora E Ezanit ',
          'EzaniIleri': ' minuta përpara.',
          'EzaniGeri': ' minuta mbrapa.',

          'AylikNamazVakitleriYazisi':
              'Kohët E Faljes Së <strong>%s</strong> Për Muajin <strong> %d 2013 </strong>',
          'AylikNamazVakitleriYazisi_Title':
              'Kohët E Faljes Së <strong>%s</strong> Për Muajin <strong> %d 2013 </strong>',
          'YillikNamazVakitleriYazisi':
              'Kohët E Faljes Së <strong>%s</strong> Për Vitin <strong> 2014 </strong>',
          'YillikNamazVakitleriYazisi_Title':
              'Kohët E Faljes Së <strong>%s</strong> Për Vitin <strong> 2014 </strong>',

          'Arz': 'Paralel',
          'Tul': 'Meridian',
          'Rumi': 'Rûmî',

          'Hizir': 'Hızır',
          'Kasim': 'Nëntor',
          'YesilHat':
              '<span style="color:green; font-weight:bold;"> Linja e gjelbër</span> që del nga qyteti është drejtimi i kiblës.',

          'UlkeYazisi': 'Shtet',
          'EyaletYazisi': 'Shtet',
          'SehirYazisi': 'Qytet',
          'TarihYazisi': 'Data',

          'KirmiziVakitler':
              '<strong>* Kohët e imsakut dhe jacisë, janë kohët e ditës së fundit që është shfaqur imsaku.</strong>',
          'YazSaatineGecis':
              'Kohët pas <strong>%s</strong> janë pregatitur duke marë parasysh ndërrimin e orës..',
          'KadirGecesiYazisi':
              '<strong>Nata e Kadrit:</strong> është nata që lidh ditën %s me ditën %s.',
          'ImsakVaktiNotu':
              'Koha e Imsakut, është koha e fillimit të agjërimit dhe gjithashtu fillimi ikohës së namazit të sabahut.',
          'Note': '<strong>Shënim: </strong>',
          'ImsakiyedekiSabah':
              'Koha <strong>\'Sabahu\'</strong> e shënuar në imsakije është koha e sabahut  e shënuar për më shumë siguri.',
          'SabahNamaziNotu':
              'Namazi i sabahut, mund të falet 20 minuta pas kohës së imsakut.',
          'Sehir_Ismi_Girin': 'Ju lutemi shënoni një emër qyteti!',
          'AramaYok': 'Qyteti që kërkuat nuk u gjend!',
          'TitleSehirArama': 'Kërko qytet',

          'VasatiVakitler': 'Kohët E Perditshme',
          'AzaniVakitler': 'Kohët E Ezanit',
          'TurkiyeTakvimi': 'Kalendari Türkiye',
          'MesveretTakvimi': 'Meşveret Takvimi',
          'ImsakiyeYazisi':
              'SË <strong>%s</strong> PËR KOHET E AGJERIMIT TE RAMAZANIT SHERIF TE VITIT %s HIXHRI, %s DIELLOR',

          'ImsakiyeYazisi_Title':
              'Së <strong>%s</strong> për kohet e agjerimit te ramazanit sherif te vitit %s hixhri, %s diellor',

          'KacinciAy': 'Muaji %d.',
          'KacinciHafta': 'Java %d.',
          'AyKacCek': '%d Ditë',

          'YilinGunu': 'Dita %t. e vitit',
          'KalanGunYazi': 'Ditët e Mbetura : %t',

          'DigerVakitler': 'Kohët E Tjera',
          'OnemliLinkler': 'Link Të Rëndësishëm',

          'Menu': 'Menu',
          'Diller': 'Gjuhët',

          'local': 'Ora Lokale',

          'remain_imsak': "Koha e mbetur per Imsakun",
          'remain_sabah': 'koha e mbetur për Sabahu',
          'remain_gunes': "Koha e mbetur per lindjen e diellit",
          'remain_israk': "Koha e mbetur per İşrak",
          'remain_ogle': "Koha e mbetur per Ylene",
          'remain_ikindi': "Koha e mbetur per Ikindine",
          'remain_aksam': "Koha e mbetur per Akshamin",
          'remain_yatsi': "Koha e mbetur per Jacine",

          'kibleSaatiYazisi':
              "Në kohën e orës së Qabes, kur kthehesh nga dielli je kthyer edhe nga Qabja.",

          'popupBaslik': "Important information about Imsâk time !..",
          'YanlisImsak': "Explanation about wrong Imsâk time",
          'Rasad': "Explanation about Observation",
          'DogruImsak': "Information about correct Imsâk time",
        },
        'uz_UZ': {
          "share": "Ulashish",
          "daily_event": "Kunning Hodisasi",
          "daily_quoute": "Kunning Iqtibosi",
          "prayer_times": "NAMOZ VAQTLARI",
          "HicriKameri": "Hijriy Taqvim",
          "language_selection": "Til Tanlovi",
          "location_selection": "Joylashuvni Tanlash",
          "vakit": "Vaqt",
          "saat": "Soat",
          "bugun": "Bugun",
          "tarih_sec": "Sana Tanlang",
          "search_city": "Shahar Qidiring",
          "kayitli_sehirler": "Saqlangan Shaharlar",
          "konum_onay": "Joylashuvni Tasdiqlang",
          "location_searching": "Joylashuv Qidirilmoqda...",
          "auto_location": "Avtomatik Joylashuv Tanlovi",
          "select_country": "Davlatni Tanlang",
          "search_country": "Davlatni Qidiring",
          "select_region": "Hududni Tanlang",
          "search_region": "Hududni Qidiring",
// butonlar
          'page_onyuz': 'Олд саҳифа',
          'page_arka': 'Орқа саҳифа',
          'page_sonraki': 'Кейинги кун',
          'page_onceki': 'Аввалги кун',
          'page_bugun': 'Бугун',

//Namaz Vakitleri Yazilari
          'TumDevletlerdeAra': 'Давлатлар орасидан изла',
          'DevletSeciniz': 'Давлатни танланг',
          'EyaletSeciniz': 'Вилоятни танланг',
          'SehirSeciniz': 'Шаҳарни танланг',
          'NamazVakitleriYazi': 'Намоз вақтлари',
          'Harita': 'Харита',

//'NamazVakitleri' : array[],
          'imsak': 'Фажр',
          'sabah': 'Тонг',
          'gunes': 'Қуёш',
          'israk': 'Ишроқ',
          'dahve': 'Kerâhet',
          'kerahet': 'Пешин',
          'ogle': 'Аср',
          'ikindi': 'Аср-и соний',
          'asrisani': 'Исфирор',
          'isfirar': 'Шом',
          'aksam': 'Иштибок',
          'istibak': 'Хуфтон',
          'yatsi': 'Ийшо-и соний',
          'isaisani': 'Қибла соати',
          'geceyarisi': 'Дахва-и кубро',
          'teheccud': 'Ярим кеча',
          'seher': 'Таҳажжуд',
          'kible': 'Саҳар',

//Rumi Aylar
          'RumiAylar[1]': 'Қонун-и соний',
          'RumiAylar[2]': 'Февраль',
          'RumiAylar[3]': 'Март',
          'RumiAylar[4]': 'Апрель',
          'RumiAylar[5]': 'Май',
          'RumiAylar[6]': 'Июнь',
          'RumiAylar[7]': 'Июль',
          'RumiAylar[8]': 'Август',
          'RumiAylar[9]': 'Сентябрь',
          'RumiAylar[10]': 'Ташрин-и аввал',
          'RumiAylar[11]': 'Ташрин-и соний',
          'RumiAylar[12]': 'Қонун-и аввал',

//Haftanin Gunleri
          'HaftaninGunleri[7]': 'Якшанба',
          'HaftaninGunleri[1]': 'Душанба',
          'HaftaninGunleri[2]': 'Сешанба',
          'HaftaninGunleri[3]': 'Чоршанба',
          'HaftaninGunleri[4]': 'Пайшанба',
          'HaftaninGunleri[5]': 'Жума',
          'HaftaninGunleri[6]': 'Шанба',

//Aylar

          'SeneninAylari[1]': 'Январь',
          'SeneninAylari[2]': 'Февраль',
          'SeneninAylari[3]': 'Март',
          'SeneninAylari[4]': 'Апрель',
          'SeneninAylari[5]': 'Май',
          'SeneninAylari[6]': 'Июнь',
          'SeneninAylari[7]': 'Июль',
          'SeneninAylari[8]': 'Август',
          'SeneninAylari[9]': 'Сентябрь',
          'SeneninAylari[10]': 'Октябрь',
          'SeneninAylari[11]': 'Ноябрь',
          'SeneninAylari[12]': 'Декабрь',

          'HicriAylar[0]': "Муҳаррам",
          'HicriAylar[1]': "Сафар",
          'HicriAylar[2]': "Рабиъул-аввал",
          'HicriAylar[3]': "Рабиъул-охир",
          'HicriAylar[4]': "Жумодиюл-аввал",
          'HicriAylar[5]': "Жумодиюл-охир",
          'HicriAylar[6]': "Ражаб",
          'HicriAylar[7]': "Шаъбон",
          'HicriAylar[8]': "Рамазон",
          'HicriAylar[9]': "Шаввол",
          'HicriAylar[10]': "Зулқаъда",
          'HicriAylar[11]': "Зулҳижжа",

          'Yonler[0]': 'Шимол',
          'Yonler[1]': 'Жануб',
          'Yonler[2]': 'Шарқ',
          'Yonler[3]': 'Ғарб,',

          'Alfabetik_Sehir_Listesi': 'Алифбе бўйича шаҳар рўйхати',
          'AlfabetikSehirListesi': 'Алифбе_бўйича_шаҳар_рўйхати',
          'YazSaati': 'Ёзги соат татбиқи бор.',

          'AddBookmark': 'Кўп фойдаланадиганларга қўшинг',
          'AnaSayfaYap': 'Кириш саҳифамга айтлантир',
          'AramaSonuclari': 'Излаш натижалари',

          'Eyalet_Listesi': '%sРЕГИОНЛАР РЎЙХАТИ',
          'Sehir_Listesi': '%d_%sШАҲАРЛАР РЎЙХАТИ',
          'Sanal_Yol_UlkelerListesi': 'ДАВЛАТЛАР РЎЙХАТИ  ',
          'SehirListesiYazisi': 'ШАҲАРЛАР РЎЙХАТИ',

          'Icin_Namaz_Vakitleri': '%s_учун_намоз_вақтлари',
          'sehrin_ismini_giriniz': 'Лутфан, Шаҳар номини ёзинг...',
          'SehirArama': 'Шаҳарни излаш',
          'GeriDon': 'Ортга қайт',

          'Imsakiye': 'ИМСОКИЯ',
          'LisanImsakiye': '44 тилда Рамазон жадвали',
          'Irtibat': 'АЛОҚА',
          'Kitaplar': 'КИТОБЛАР',

          'Bayan': 'Қиз',
          'Bay': 'Ўғил',

          'GunlerYazi': 'Кунлар',
          'AylarYazi': 'Ойлар',
          'YillarYazi': 'Йиллар',

          'UlkelerListesi': 'Давлатлар рўйхати учун босинг',
          'UlkeListesi': 'ДАВЛАТЛАР РЎЙХАТИ',

          'EyaletListesi': 'РЕГИОНЛАР РЎЙХАТИ',
          'EyaletIlBolge': 'РЕГИОНЛАР РЎЙХАТИ',
          'EyaletListesiTr': 'ШАҲАРЛАР РЎЙХАТИ',

          'SqlTT': 'dmy',

          'VakitYok':
              'Сиз танлаган Шаҳарнинг намоз вақтлари учун илтимос бизга эл. почта ёхуд факс орқали боғланинг.',
          'EPosta_adres':
              '<a href=\'mailto:info@turktakvim.com\'> info@turktakvim.com</a>',
          'fax_no': ' +90 (212) 454 23 87',

          'fax': 'Факс',
          'EPosta': 'e-mail',
          'website': 'Вебсаҳифа адреслари',

          'HicriSemsi': 'Ҳижрий шамсий',

          'Aylik': 'ОЙЛИК ВАҚТЛАР',
          'Yillik': 'ЙИЛЛИК ВАҚТЛАР',
          'Yazdir': 'Принтерга',
          'Yaziyi_Gonder': 'Дўстингга юбор',
          'Yaziyi_Add_Favourites': 'Бу ёзувни кўп фойдаланадиганларга қўш',
          'Okunma_Sayisi': 'Ўқилган сони,',
          'Word_Indir': 'Word сифатида юкла',
          'Pdf_Indir': 'PDF сифатида юкла',
          'Bu_Yaziyi': 'Бу ёзувни;',
          'Diger_aylardaki_namaz_vakitleri': 'Бошқа ойлардаги намоз вақтлари',
          'RamazanBayrami':
              '%s Рамазон Ҳайит намози вақти : <strong>%s</strong>',
          'KurbanBayrami': '%s Қурбон Ҳайит намози вақти : <strong>%s</strong>',
          'KitapIndir': 'Юкла',

          'IcindeGecen': 'Номи %s -дан бошланадиган шаҳарлар',
          'IsimleriBasliyan': 'Номларида %s ифодаси бор шаҳарлар',

          'dak': 'дақиқа',
          'GunKisa': 'Кундузнинг қисқариши ',
          'GunUzun': 'Кундузнинг узайиши ',
          'Ezani': 'Азоний (маҳаллий)',
          'EzaniYok': 'Бугун азоний соат созланмайди.',
          'EzaniSaatYazi': 'Азоний соат ',
          'EzaniIleri': ' .....дақиқа олдинга сурилади.',
          'EzaniGeri': ' .....дақиқа орқага сурилади.',

          'AylikNamazVakitleriYazisi':
              '<strong>%s</strong> &#304;&#231;in <strong> 2013 %d </strong> Ойлик намоз вақтлари',
          'AylikNamazVakitleriYazisi_Title':
              '%s &#304;&#231;in 2013 %d Ойлик намоз вақтлари',
          'YillikNamazVakitleriYazisi':
              '<strong>%s</strong> &#304;&#231;in <strong> 2013 </strong> Йиллик намоз вақтлари',
          'YillikNamazVakitleriYazisi_Title':
              '%s &#304;&#231;in 2013  Йиллик намоз вақтлари',

          'Arz': 'Шимолий кенглик',
          'Tul': 'Шарқий узунлик',
          'Rumi': 'Румий',

          'Hizir': 'Хизр',
          'Kasim': 'Қосим',
          'YesilHat':
              'Шаҳардан чиқиб турган <span style="color:green; font-weight:bold;">яшил</span> чизиқ қибла йўналишини кўрсатади. ',

          'UlkeYazisi': 'Мамлакат',
          'EyaletYazisi': 'Вилоят',
          'SehirYazisi': 'Шаҳар',
          'TarihYazisi': 'Сана',

          'KirmiziVakitler':
              '<strong>* Қизил рангда берилган Имсок (фажр) ва Хуфтон вақтлари, имсок вақти аниқ бўлган сўнгги куннинг вақтларидир.</strong>',
          'YazSaatineGecis':
              '<strong>%s</strong> дан бошлаб вақтлар, ёзги соатга кўчиш назарда тутилган ҳолда ҳисобланган.',
          'KadirGecesiYazisi':
              '<strong>Қадр кечаси:</strong> % кунини, % кунига боғлайдиган кеча.',
          'ImsakVaktiNotu':
              '<b>(Имсок)</b> саҳарлик тугаб, рўза тутиш вақти бошланганидан ҳам-да Бомдоднинг <b>биринчи вақти</b> кирганидан дарак беради.',
          'Note': '<strong>Эслатма: </strong>',
          'ImsakiyedekiSabah':
              'Имсокия жадвалидаги <b>Тонг</b> вақти эса, бомдоднинг <b>эҳтиётий вақти</b>кирганидан хабардор қилади.',
          'SabahNamaziNotu':
              'Бомдод намозини имсокдан 20 дақиқа ўтгач ўқиш мумкин.',
          'Sehir_Ismi_Girin': 'Шаҳар исмини ёзинг!',
          'AramaYok': 'Сиз излаган шаҳар топилмади!',
          'TitleSehirArama': 'Шаҳар исмини ёзинг',

          'VasatiVakitler': 'Васатий вақтлар',
          'AzaniVakitler': 'Азоний вақтлар',
          'TurkiyeTakvimi': 'Туркия тақвими',
          'MesveretTakvimi': 'Машварат тақвими',
          'ImsakiyeYazisi':
              'ҲИЖРИЙ %s, МЕЛОДИЙ %s ЙИЛ, %s учун РАМАЗОН ИМСОКИЯСИ',
          'ImsakiyeYazisi_Title':
              'ҲИЖРИЙ %s, МЕЛОДИЙ %s ЙИЛ, %s учун РАМАЗОН ИМСОКИЯСИ',

          'KacinciAy': '%d. Ой',
          'KacinciHafta': '%d. Ҳафта',
          'AyKacCek': '%d Кун',

          'YilinGunu': 'Йилнинг %t. куни',
          'KalanGunYazi': 'Қолган кун : %t',

          'DigerVakitler': 'Бошқа вақтлар',
          'OnemliLinkler': 'Муҳим линклар',

          'Menu': 'Меню',
          'Diller': 'Тиллар',

          'local': 'Маҳаллий вақт',

          'remain_imsak': "Фажргача қолган вақт",
          'remain_sabah': "Қуёш қолган вақт",
          'remain_gunes': "Қисми боқимондаи рӯз",
          'remain_israk': "Ишроққа қолган вақт",
          'remain_ogle': "Пешингача қолган вақт",
          'remain_ikindi': "Асргача қолган вақт",
          'remain_aksam': "Шомгача қолган вақт",
          'remain_yatsi': "Хуфтонгача қолган вақт",

          'kibleSaatiYazisi':
              "Кибла соати вактида куёш томонга караган одам киблага йуналиб турган булади.",

          'popupBaslik': "Important information about Imsâk time !..",
          'YanlisImsak': "Explanation about wrong Imsâk time",
          'Rasad': "Explanation about Observation",
          'DogruImsak': "Information about correct Imsâk time",
        }
      };
}
