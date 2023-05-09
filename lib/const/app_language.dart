import 'package:get/get.dart';

class AppLanguage extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'error': 'Error',
          'remove': 'Delete?',
          'yes': 'Yes',
          'back': 'Back',
          'no': 'Not',
          'isNotSubject':
              'Once deleted, it is impossible to recover! Are you sure you want to delete?',
          'register': 'Register',
          'forgotPassword': 'Forgot Password',
          'signIn': 'Sign In',
          'email': 'Email',
          'password': 'Password',
          'name': 'Name',
          'confirmPassword': 'Confirm password',
          'agree':
              'By clicking the button, you agree to all the terms of the application!',
          'resetPassword': 'Reset password',
          'checkInEmail':
              'Sends an email message to the email address you provided! If you did not find the message about resetting your password, then check your SPAM folder!',
          'addAds': 'Add ads',
          'titleNotEmptyError': 'Description cannot be empty.',
          'selectCategory': 'Select a category.',
          'fillNumberPhone': 'Fill in the phone number!',
          'enterYouAddress': 'Enter your address!',
          'wrongPassword': '"Wrong password" error',
          'emailAlreadyExists': 'The email address already exists!',
          'userNotFound': 'Email address not found.',
          'invalidEmail': 'Incorrect E-Mail Address',
          'weakPassword': 'Your password is too weak.',
          'networkRequestFailed':
              'Please check your internet connection or try again later.',
          'tooManyRequests': 'Too many requests, please check back later!',
          'unknown': 'An unknown error has occurred. The code - ',
          'category': 'Category',
          'price': 'Price',
          'treaty': 'Treaty',
          'som': '- R',
          'save': 'Save',
          'textDescription': 'Text Description',
          'phoneNumber': 'Phone number',
          'exampleNumberPhone': 'For example: 79257777777',
          'hintSearch': 'Search...',
          'whatsappNoInstalled': 'WhatsApp no installed',
          'searchEmpty': 'Search query found nothing!',
          'empty': 'Nothing found!',
          'addBalance': 'Top up balance',
          'addBalanceDescription':
              'To place a VIP advertisement you need to write to WhatsApp or call the numbers below',
          'updateAfterAdd': 'Update after replenishment!',
          'update': 'Refresh',
          'balance': 'VIP Balance',
          'add': 'Add',
          'signOut': 'Sign Out',
          'changeLanguage': 'Language',
          'share': 'Share',
          'about': 'About',
          'adsAddWant':
              'MCK жарыя - The fastest way to sell and buy online.',
          'topUp': 'Add',
          'agreement': 'Agreement',
          'removeAds': 'Delete ad',
          'admin': 'Admin',
          'call': 'Call',
          'cannotBeEmpty': 'The field cannot be empty.',
          'doNotMatch': 'Passwords do not match',
          'upYouBalance':
              'To add an ad, you need to replenish the balance more than 20 soms! Want to top up your balance?',
          'not': 'Not',
          'loading': 'Loading...',
          'loadingAd': 'Your ad is uploaded to the server.',
          'success': 'Hooray!!!',
          'address': 'Address',
          'noAddress': 'No address',
          'selectLang': 'Choose a language',
          'date': 'Date',

          'successAddAds': 'Your ad has been successfully added!',
          'aboutText':
              'An electronic bulletin board is a web project designed to post ads and search for necessary information by users. For convenient use of the bulletin board, it uses categories and sections. "The fastest way to sell and buy!"',
        },
        'ru_RU': {
          //page
          'error': 'Ошибка!',
          'remove': 'Удалить?',
          'yes': 'Да',
          'back': 'Назад',

          'no': 'Нет',
          'isNotSubject':
              'После удаления, невозможно восстановить! Вы точно хотите удалить?',
          'register': 'Регистрация',
          'forgotPassword': 'Забыли пароль?',
          'signIn': 'Войти',
          'email': 'Эл. адрес',
          'password': 'Пароль',
          'name': 'Имя',
          'confirmPassword': 'Подтвердите пароль',
          'agree': 'Соглашаюсь со всеми условиями приложения!',
          'resetPassword': 'Сброс пароля',
          'checkInEmail':
              'Код восстановления пароля приходит на Вашу указанную Электронную почту!  Если вы не нашли сообщение о восстоновление пароля,  проверьте папку "СПАМ" или обновите!',
          'addAds': 'Добавить объявление',
          'titleNotEmptyError': 'Описание не может быть пустым.',
          'selectCategory': 'Выберите категорию.',
          'selectImage': 'Выберите изображение',
          'fillNumberPhone': 'Заполните номер телефона!',
          'enterYouAddress': 'Укажите адрес!',

          //Status messages
          'wrongPassword': 'Ошибка "Неверный пароль"',
          'emailAlreadyExists': 'Адрес электронной почты уже существует!',
          'userNotFound': 'Адрес электронной почты не найден.',
          'invalidEmail': 'Неверный адрес электронной почты',
          'weakPassword':
              'Ваш пароль слишком слабый.(Пароль должен содержать не менее 6 символов!)',
          'networkRequestFailed':
              'Проверьте интернет-подключение или повторите попытку позже.',
          'tooManyRequests':
              'Слишком много запросов, повторите попытку через 30 секунд!',
          'unknown': 'Произошла неизвестная ошибка. Код - ',

          //add Ads page
          'category': 'Категория',
          'price': 'Цена',
          'treaty': 'Договорная',
          'som': '- Р',
          'save': 'Сохранить',
          'textDescription': 'Описание текста',
          'phoneNumber': 'Номер телефона',
          'exampleNumberPhone': 'Например: 79254303450',
          'hintSearch': 'Поиск...',

          'whatsappNoInstalled': 'WhatsApp не установлен!',
          'searchEmpty': 'Поиск по запросу ничего не найдено!',
          'empty': 'Ничего не найдено!',
          'addBalance': 'Размеситить рекламу',
          'addBalanceDescription':
              'Чтобы разместить  VIP рекламу вам необходимо  написать в WhatsApp или позвонить на ниже указанные номера.',
          'updateAfterAdd': 'Поставить лайк!',
          'update': 'Лайк',
          'balance': 'VIP Баланс',
          'add': 'Добавить',
          'signOut': 'Выйти с аккаунта',
          'changeLanguage': 'Сменить язык',
          'share': 'Поделиться',
          'about': 'О приложении',
          'adsAddWant':
              'МСК жарыя - Доска объявлений.',
          'topUp': 'Пополнить',
          'agreement': 'Соглашение',
          'removeAds': 'Удалить объявление',
          'admin': 'Админ',
          'call': 'Позвонить',
          'cannotBeEmpty': 'Поле неможет быть пустым.',

          'aboutText':
              'Электронная доска объявлений – это веб-проект, предназначенный для размещения объявлений и поиска необходимой информации пользователями. Для удобного использования доски объявлений в ней используются категории и разделы. "Самый быстрый способ продажи и покупки!"',
          'doNotMatch': 'Пароли не совпадают',
          'not': 'Нет',
          'loading': 'Загрузка...',
          'loadingAd': 'Ваше объявление загружается на сервер.',
          'address': 'Адрес',
          'noAddress': 'Нет адреса',

          'successAddAds': 'Ваше объявление успешно добавлено!',
          'success': 'Ураа!!!',
          'selectLang': 'Выберите язык',
          'date': 'Дата',
          'upYouBalance':
              'Если вы хотите разместить рекламу в эту приложению пишите в WhatsApp 79254303450 или позвоните. Хотите разместить обьявлению?',
        },
        'ky_KG': {
          //page
          'error': 'Ката!',
          'remove': 'Жок кылынсынбы?',
          'yes': 'Ооба',
          'back': 'Артка кайтуу',
          'no': 'Жок',
          'isNotSubject':
              'Өчүрүлгөндөн кийин, аны калыбына келтирүү мүмкүн эмес! Чын эле жок кылгыңыз келеби?',
          'register': 'Катталуу',
          'forgotPassword': 'Сыр сөзүңүздү унуттуңузбу?',
          'signIn': 'Кирүү',
          'email': 'Эл. адрес',
          'password': 'Сыр сөз',
          'name': 'Сиздин атыңыз',
          'confirmPassword': 'Сырсөздү ырастаңыз',
          'agree': 'Мен арыздын бардык шарттары менен макулмун!',
          'resetPassword': 'Сырсөздү кайра коюу',
          'checkInEmail':
              'Сырсөздү калыбына келтирүү коду сиздин көрсөтүлгөн электрондук почтаңызга жөнөтүлөт! Эгер сырсөзүңүздү калыбына келтирүү жөнүндө билдирүүнү таппасаңыз, "СПАМ" папкаңызды текшериңиз же жаңыртыңыз!',
          'addAds': 'Жарнама кошуу',
          'titleNotEmptyError': 'Сүрөттөмө бош болбошу керек.',
          'selectCategory': 'Категория тандаңыз.',
          'selectImage': 'Сүрөт тандаңыз',
          'fillNumberPhone': 'Телефон номериңизди толтуруңуз!',
          'enterYouAddress': 'Адресиңизди жазыңыз!',

          //Status messages
          'wrongPassword': 'Ката "Туура эмес сырсөз"',
          'emailAlreadyExists': 'Электрондук почта дареги мурунтан эле бар!',
          'userNotFound': 'Электрондук почта табылган жок',
          'invalidEmail': 'Туура эмес электрондук почта',
          'weakPassword':
              'Сырсөзүңүз өтө начар. (Сырсөз кеминде 6 белгиден турушу керек!)',
          'networkRequestFailed':
              'Интернет туташууңузду текшериңиз же бир аздан кийин кайталап көрүңүз.',
          'tooManyRequests':
              'Өтө көп сурамдар, 30 секунддан кийин кайра аракет кылыңыз!',
          'unknown': 'Белгисиз ката кетти. Код - ',

          //add Ads page
          'category': 'Категория',
          'price': 'Баасы',
          'treaty': 'Договорная',
          'som': ' - Р',
          'save': 'Сактоо',
          'textDescription': 'Маалымат жана адрес жазыңыз',
          'phoneNumber': 'Номер телефон',
          'exampleNumberPhone': 'Мисалы: 79257777777',
          'hintSearch': 'Издөө...',
          'date': 'Дата',

          'whatsappNoInstalled': 'WhatsApp орнотулган эмес!',
          'searchEmpty': 'Издөө сурамынан эч нерсе табылган жок!',
          'empty': 'Эч нерсе табылган жок!',
          'addBalance': 'Жарнама кошуу',
          'addBalanceDescription':
          'Жарнама кошуу үчүн WhatsAppка жазыңыз же төмөндөгү номурларга чалыңыз.',
          'updateAfterAdd': 'Лайк басуу!',
          'update': 'Лайк',
          'balance': 'VIP Баланс',
          'add': 'Кошуу',
          'signOut': 'Аккаунттан чыгуу',
          'changeLanguage': 'Тилди өзгөртүү',
          'share': 'Бөлүшүү',
          'about': 'Тиркеме жөнүндө',
          'adsAddWant':
              'МСК жарыя - онлайн доска объявлений KG.',
          'topUp': 'Толуктоо',
          'agreement': 'Макулдашуу',
          'removeAds': 'Жарнаманы жок кылуу',
          'admin': 'Админ',
          'call': 'Чалуу',
          'cannotBeEmpty': 'Бош болушу мүмкүн эмес.',

          'aboutText':
              'Москва Электрондук жарыя – бул жарнамаларды жайгаштыруу жана колдонуучулар тарабынан керектүү маалыматты издөө үчүн иштелип чыккан веб-долбоор. Жарнаманы ыңгайлуу колдонуу үчүн категорияларды жана бөлүмдөрдү колдонунуңуз. Тиркеме - "Жарыялоону, сатуунун жана сатып алуунун эң ыкчам жолу!"',
          'doNotMatch': 'Сырсөздөр дал келбейт',
          'not': 'Жок',
          'loading': 'Загрузка...',
          'loadingAd': 'Жарнамаңыз серверге жүктөлүүдө.',

          'success': 'Ураа!!!',
          'address': 'Адрес',
          'selectLang': 'Тилди тандаңыз',
          'noAddress': 'Дареги көрсөтүлгөн эмес',
          'successAddAds': 'Жарнамаңыз ийгиликтүү кошулду!',
          'upYouBalance':
              'Жарнамаңыздын бул тиркемеде болушун кааласаңыз WhatsApp 79254303450 жазыңыз же болбосо чалыңыз',
        },
      };
}
