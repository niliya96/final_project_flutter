import 'package:flutter/material.dart';

/// Global Headers
const String PROJECT_TITLE = "Project";

/// Colors
const Color LIGHT_GREEN = Color.fromRGBO(67, 232, 137, 50);
const Color DARK_BLUE = Color.fromRGBO(0, 48, 80, 50);
const Color DARK_BLUE2 = Color.fromRGBO(0, 48, 80, 50);
const Color DARK_BLUE3 = Color.fromRGBO(67, 232, 137, 10);
const Color DARK_BLUE4 = Color.fromRGBO(0, 48, 80, 30);
const Color WHITE = const Color(0xffffffff);

/// Head Lines
const String LOGIN_HEADLINE = 'ExWorkerReviewer';
const String WELCOM = "ברוך הבא";
const String DISCONNECT = 'התנתק';
const String HOME = "בית";
const String ADD_REVIEW = 'הוספה';
const String UPDATE_REVIEW = 'עדכון';
const String SEARCH = "חיפוש";
const String TEXT_HOMESCREEN1 =
    'אם הגעת לכאן, סימן שגם לך חשוב שהכי יקר עבורך יקבל את הטיפול המסור ביותר';
const String SAVE = "שמור";
const String RETURN_HOME = "חזור למסך הבית";
const String ARE_YOU_SURE = 'האם אתה בטוח שברצונך למחוק את החוו"ד שמילאת?';
const FILL_QUESTIONS_1 = 'מלא חוות דעת חדשה';
const FILL_QUESTIONS_2 = "?שנתחיל";
const FILL_QUESTIONS_3 =
    'כמה דקות מזמנך, ותוכל לסייע ביצירת שקיפות בתחום העזרה הסיעודית';
const FILL_QUESTIONS_4 = 'כמה הסברים לפני שנמשיך';
const FILL_QUESTIONS_5 =
    'בכל שלב, תוכל לשמור את מה שכבר מילאת על ידי כפתור שמור, או לחזור למסך הבית ללא שמירה';
const FILL_QUESTIONS_6 =
    'תוכל לנווט קדימה ואחורה, ובסוף המילוי יופיע סיכום של חוות הדעת שמילאת, אותו תוכל לערוך';
const FILL_QUESTIONS_7 = '.חוות הדעת היא אנונימית';
const FILL_QUESTIONS_8 = '?שנתחיל במעשה טוב';
const VALIDATE = "validate";
const NOT_VALIDATE = "not validate";
const String INDIA = "הודו";
const String PHILIPPINES = "פיליפינים";
const String UZBEKISTAN = "אוזבקיסטן";
const String UKRAINE = "אוקריינה";
const String MOLDOVA = "מולדובה";
const String NEPAL = "נפאל";
const String GEORGIA = "גיאורגיה";
const String SRALANKA = "סרילנקה";
const FILL_DEATAILS = 'אנא מלא את הפרטים הבאים';
const ORIGIN_COUNTRY = 'מדינת המוצא';
const NEXT = "הבא";
const BACK = "הקודם";
const String KIND = "kind";
const String RATING = "rating";
const String CHOOSE = "choose";
const String TEXT = "text";
const String OPTIONS = "options";
const String MANDATORY = "mandatory";
const String NUMBER = "number";
const String PASSPORT_NUMBER = 'מספר דרכון';
const String VALID_PASSPORT_NUM = "מספר הדרכון חוקי";
const String AUTH_PASSPORT = 'אימות מספר דרכון';
const String NOT_SAME_PASSPORT = 'מספר דרכון אינו זהה';
const String LENGTH_NOT_VALID = "האורך אינו חוקי, נסה שנית";
const String CHAR_NOT_VALID = "ישנו תו שאינו חוקי, נסה שנית";
const String PASSPORT_NOT_VALID = "מספר הדרכון אינו חוקי, נסה שנית";
const String PHL = "PHL";
const String IND = "IND";
const String UZB = "UZB";
const String UKR = "UKR";
const String MDA = "MDA";
const String NPL = "NPL";
const String LKA = "LKA";
const String GEO = "GEO";
const String COUNTRY_NOT_VALID = "המדינה אינה חוקית, נסה שנית";
const String COUNTRY_NOT_COMPATIBLE = "המדינה שבחרת לא תואמת את מספר הדרכון";
const String COMPLETE_CHAR = '<';
const String WORKER_NAME = 'שם העובד';
const String CLEAN = "נקה";
const String IRELEVANT = "סמן כלא רלוונטי";
const String FREE_TEXT = 'כתוב מלל חופשי';
const String UPDATE_REVIEW_HEADLINE = "עדכן חוות דעת";
const String PASSPORT_NUMBER_WORKER = ":מספר דרכון";
const String NAME_WORKER = ":שם העובד";
const String LAST_UPDATE = "עדכון אחרון";
const String DELETE_YOUR_REVIEW = "מחיקת חוות דעת";
const String ARE_YOU_SURE_TO_DELETE = "?האם אתה בטוח שברצונך למחוק את חוות הדעת";
const String DELETE = "מחק";
const String REVIEW_FOR = " חוות דעת עבור העובד";
const String NATION = "מדינה";
const String UPDATING_SECTION = "בעמוד זה תוכל לעדכן את חוות הדעת עבור";
const String CONSTRAIN = "לא ניתן לעדכן את הפרטים האישיים של העובד";
const String FINISH = '!זהו, סיימנו';
const String THANKS = '.תודה שהקדשת מזמנך';
const String IN_THE_SYSTEM = '.חוות הדעת שלך נקלטה במערכת. כל חוות דעת עוברת בדיקה לפני פרסום';
const String UPDATE_EXPLANATION = 'שים לב כי תוכל לעדכן את חוות הדעת בכל עת דרך כפתור העדכון בתפריט מסך הבית';
const String SAVE_REVIEW = "שמירת חוות דעת";
const String SAVE_REVIEW2 = "לחץ על שמור על מנת לשמור את מה שכבר מילאת";
const String CANT_SAVE1 = "טרם תוכל לשמור את חוות הדעת";
const String CANT_SAVE2 = "יש למלא את הפרטים האישיים של העובד";
const String BACK_TO_UPDATE = "חזור";
const String REVIEW_OR_WORK1 = "ספר על סמך מה חוות הדעת שלך מתבססת";
const String REVIEW_OR_WORK2 = "שים לב - בחוות דעת על בסיס ראיון, שים דגש על המלל החופשי בסוף חוות הדעת";
/// Fonts
const String EUROPA_FONT = 'Europa';

/// Photos
const String LOGIN1 = 'assets/images/open1.jfif';
const String HOMESCREENPIC = 'assets/images/homescreen.jfif';
const START_QUESTION1PIC = 'assets/images/fill_start.jfif';
const START_QUESION2PIC = 'assets/images/fill_start2.jfif';
const DEATAILS_FILL_PIC = 'assets/images/fill_details.jfif';
const UPDATE_PIC = 'assets/images/update.jfif';
const COMPLETE_FILL_PIC = 'assets/images/complete_fill.jfif';
