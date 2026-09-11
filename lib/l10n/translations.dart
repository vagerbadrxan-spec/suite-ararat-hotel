import 'package:flutter/widgets.dart';
import 'app_language.dart';
import '../state/language_scope.dart';

/// Machine-translated copy for Sorani, Kurmanji and Arabic.
/// Have a native speaker review before this site goes live.
class AppStrings {
  AppStrings._();

  static const Map<String, Map<AppLanguage, String>> _strings = {
    'appName': {
      AppLanguage.en: 'Suite Ararat Hotel',
      AppLanguage.sorani: 'هۆتێل سویت ئارارات',
      AppLanguage.kurmanji: 'Otêla Suite Ararat',
      AppLanguage.ar: 'فندق سويت أرارات',
    },
    'navHome': {
      AppLanguage.en: 'Home',
      AppLanguage.sorani: 'سەرەکی',
      AppLanguage.kurmanji: 'Serekî',
      AppLanguage.ar: 'الرئيسية',
    },
    'navRooms': {
      AppLanguage.en: 'Rooms & Prices',
      AppLanguage.sorani: 'ژوور و نرخەکان',
      AppLanguage.kurmanji: 'Odeyên & Biha',
      AppLanguage.ar: 'الغرف والأسعار',
    },
    'heroTitle': {
      AppLanguage.en: 'Suite Ararat Hotel',
      AppLanguage.sorani: 'هۆتێل سویت ئارارات',
      AppLanguage.kurmanji: 'Otêla Suite Ararat',
      AppLanguage.ar: 'فندق سويت أرارات',
    },
    'heroSubtitle': {
      AppLanguage.en: 'A quiet stay in Duhok, nestled between the mountains',
      AppLanguage.sorani: 'مانەوەیەکی هێمن لە دهۆک، لەنێوان چیاکاندا',
      AppLanguage.kurmanji: 'Rawestgehek aram li Dihokê, di navbera çiyayan de',
      AppLanguage.ar: 'إقامة هادئة في دهوك، بين الجبال',
    },
    'reserveCta': {
      AppLanguage.en: 'Reserve',
      AppLanguage.sorani: 'حیجزکردن',
      AppLanguage.kurmanji: 'Rezervasyonê bike',
      AppLanguage.ar: 'احجز الآن',
    },
    'aboutTitle': {
      AppLanguage.en: 'About Us',
      AppLanguage.sorani: 'دەربارەی ئێمە',
      AppLanguage.kurmanji: 'Der barê me',
      AppLanguage.ar: 'من نحن',
    },
    'aboutBody': {
      AppLanguage.en:
          'Suite Ararat Hotel is located in Duhok, in the Kurdistan Region of Iraq, in a beautiful setting between two mountains. We offer simple, comfortable rooms and friendly service for travelers passing through or staying a while.',
      AppLanguage.sorani:
          'هۆتێل سویت ئارارات لە شاری دهۆک، هەرێمی کوردستانی عێراق، لە شوێنێکی جوان لەنێوان دوو چیادا هەڵکەوتووە. ژووری سادە و ئارام و خزمەتگوزاریی دۆستانە پێشکەش بە گەشتیارانی تێپەڕبووی و ئەوانەی ماوەیەک دەمێننەوە دەکەین.',
      AppLanguage.kurmanji:
          'Otêla Suite Ararat li bajarê Dihokê, Herêma Kurdistana Iraqê, li cihekî xweşik di navbera du çiyayan de ye. Em odeyên sade û rihet û xizmeta dostane pêşkêşî rêwiyên derbasbûyî û yên ku demekê dimînin dikin.',
      AppLanguage.ar:
          'يقع فندق سويت أرارات في مدينة دهوك، إقليم كوردستان العراق، في موقع جميل بين جبلين. نقدم غرفًا بسيطة ومريحة وخدمة ودودة للمسافرين العابرين أو المقيمين لفترة.',
    },
    'amenitiesTitle': {
      AppLanguage.en: 'Amenities',
      AppLanguage.sorani: 'خزمەتگوزارییەکان',
      AppLanguage.kurmanji: 'Xizmet',
      AppLanguage.ar: 'الخدمات',
    },
    'amenityWifi': {
      AppLanguage.en: 'Free Wi-Fi',
      AppLanguage.sorani: 'وایفای بەخۆڕایی',
      AppLanguage.kurmanji: 'Wîfî belaş',
      AppLanguage.ar: 'واي فاي مجاني',
    },
    'amenityCameras': {
      AppLanguage.en: 'Security Cameras',
      AppLanguage.sorani: 'کامێرای چاودێری',
      AppLanguage.kurmanji: 'Kamerayên ewlehiyê',
      AppLanguage.ar: 'كاميرات مراقبة',
    },
    'amenityCleaning': {
      AppLanguage.en: 'Daily Cleaning Service',
      AppLanguage.sorani: 'خزمەتگوزاری خاوێنکردنەوەی ڕۆژانە',
      AppLanguage.kurmanji: 'Xizmeta paqijkirinê ya rojane',
      AppLanguage.ar: 'خدمة تنظيف يومية',
    },
    'staffTitle': {
      AppLanguage.en: 'Our Staff',
      AppLanguage.sorani: 'ستافمان',
      AppLanguage.kurmanji: 'Karmendên me',
      AppLanguage.ar: 'طاقم العمل',
    },
    'staffCaption': {
      AppLanguage.en: 'Meet the team',
      AppLanguage.sorani: 'ئاشنابوون بە تیمەکەمان',
      AppLanguage.kurmanji: 'Bi tîma me nas bibe',
      AppLanguage.ar: 'تعرف على فريقنا',
    },
    'roomsTitle': {
      AppLanguage.en: 'Rooms & Prices',
      AppLanguage.sorani: 'ژوور و نرخەکان',
      AppLanguage.kurmanji: 'Odeyên & Biha',
      AppLanguage.ar: 'الغرف والأسعار',
    },
    'roomsSubtitle': {
      AppLanguage.en: 'Prices are per night. Contact us to reserve.',
      AppLanguage.sorani: 'نرخەکان بۆ هەر شەوێکە. پەیوەندیمان پێوە بکە بۆ حیجزکردن.',
      AppLanguage.kurmanji: 'Biha ji bo şevekê ne. Ji bo rezervasyonê bi me re têkilî daynin.',
      AppLanguage.ar: 'الأسعار لليلة الواحدة. تواصل معنا للحجز.',
    },
    'roomSingle': {
      AppLanguage.en: 'Single Room',
      AppLanguage.sorani: 'ژووری تاک',
      AppLanguage.kurmanji: 'Odeya yekkesî',
      AppLanguage.ar: 'غرفة مفردة',
    },
    'roomDouble': {
      AppLanguage.en: 'Double Room',
      AppLanguage.sorani: 'ژووری دووکەسی',
      AppLanguage.kurmanji: 'Odeya dukesî',
      AppLanguage.ar: 'غرفة مزدوجة',
    },
    'roomTriple': {
      AppLanguage.en: 'Triple Room',
      AppLanguage.sorani: 'ژووری سێکەسی',
      AppLanguage.kurmanji: 'Odeya sêkesî',
      AppLanguage.ar: 'غرفة ثلاثية',
    },
    'roomHall': {
      AppLanguage.en: '1 Room + 1 Hall',
      AppLanguage.sorani: 'ژوور + هۆڵ',
      AppLanguage.kurmanji: 'Ode + Salon',
      AppLanguage.ar: 'غرفة مع صالة',
    },
    'roomApartment': {
      AppLanguage.en: 'Apartment',
      AppLanguage.sorani: 'ئاپارتمان',
      AppLanguage.kurmanji: 'Apartman',
      AppLanguage.ar: 'شقة',
    },
    'perNight': {
      AppLanguage.en: '/ night',
      AppLanguage.sorani: '/ شەوێک',
      AppLanguage.kurmanji: '/ şev',
      AppLanguage.ar: '/ الليلة',
    },
    'priceOnRequest': {
      AppLanguage.en: 'Contact for current rate',
      AppLanguage.sorani: 'پەیوەندی بکە بۆ زانینی نرخ',
      AppLanguage.kurmanji: 'Ji bo bihayê heyî têkilî daynin',
      AppLanguage.ar: 'تواصل معنا لمعرفة السعر الحالي',
    },
    'contactTitle': {
      AppLanguage.en: 'Contact Us to Reserve',
      AppLanguage.sorani: 'پەیوەندیمان پێوە بکە بۆ حیجزکردن',
      AppLanguage.kurmanji: 'Ji bo rezervasyonê têkilî daynin',
      AppLanguage.ar: 'تواصل معنا للحجز',
    },
    'contactBody': {
      AppLanguage.en:
          'This website does not process online bookings. Please call or email us directly to check availability and reserve your room.',
      AppLanguage.sorani:
          'ئەم ماڵپەڕە حیجزکردنی ئۆنلاین ئەنجام نادات. تکایە پەیوەندیمان پێوە بکە یان ئیمەیڵمان بۆ بنێرە بۆ زانینی بەردەستبوون و حیجزکردنی ژوورەکەت.',
      AppLanguage.kurmanji:
          'Ev malper rezervasyona online nake. Ji kerema xwe ji bo kontrolkirina hebûnê û rezervekirina odeya xwe telefon an e-nameyê ji me re bişînin.',
      AppLanguage.ar:
          'هذا الموقع لا يوفر الحجز الإلكتروني. الرجاء الاتصال بنا أو مراسلتنا عبر البريد الإلكتروني للتحقق من التوفر وحجز غرفتك.',
    },
    'callUs': {
      AppLanguage.en: 'Call Us',
      AppLanguage.sorani: 'پەیوەندیمان پێوە بکە',
      AppLanguage.kurmanji: 'Telefon bikin',
      AppLanguage.ar: 'اتصل بنا',
    },
    'emailUs': {
      AppLanguage.en: 'Email Us',
      AppLanguage.sorani: 'ئیمەیڵمان بۆ بنێرە',
      AppLanguage.kurmanji: 'E-name bişînin',
      AppLanguage.ar: 'راسلنا',
    },
    'locationTitle': {
      AppLanguage.en: 'Location',
      AppLanguage.sorani: 'شوێن',
      AppLanguage.kurmanji: 'Cih',
      AppLanguage.ar: 'الموقع',
    },
    'locationBody': {
      AppLanguage.en: 'Duhok, Kurdistan Region, Iraq',
      AppLanguage.sorani: 'دهۆک، هەرێمی کوردستان، عێراق',
      AppLanguage.kurmanji: 'Dihok, Herêma Kurdistanê, Iraq',
      AppLanguage.ar: 'دهوك، إقليم كوردستان، العراق',
    },
    'footerRights': {
      AppLanguage.en: 'All rights reserved.',
      AppLanguage.sorani: 'هەموو مافەکان پارێزراون.',
      AppLanguage.kurmanji: 'Hemû maf parastî ne.',
      AppLanguage.ar: 'جميع الحقوق محفوظة.',
    },
  };

  static String of(AppLanguage language, String key) {
    final entry = _strings[key];
    if (entry == null) return key;
    return entry[language] ?? entry[AppLanguage.en] ?? key;
  }
}

extension TranslateContext on BuildContext {
  String t(String key) => AppStrings.of(LanguageScope.of(this).language, key);
}
