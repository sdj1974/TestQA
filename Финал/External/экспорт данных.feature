#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: экспорт данных для отчета Остатки товаров

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: экспорт констант

	И я перезаполняю константу "SSLIMAP" значением "False"
	И я перезаполняю константу "SSLPOP3" значением "False"
	И я перезаполняю константу "SSLSMTP" значением "False"
	И я перезаполняю константу "АдресPOP3Сервера" значением "pop.mail.ru"
	И я перезаполняю константу "АдресSMTPСервера" значением "smtp.mail.ru"
	И я перезаполняю константу "ВалютаУчета" значением "e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5"
	И я перезаполняю константу "ВоспроизводитьТекстУведомления" значением "False"
	И я перезаполняю константу "ИспользоватьIMAP" значением "False"
	И я перезаполняю константу "ИмяОтправителяПочтовогоСообщения" значением "tovarshop@mail.ru"
	И я перезаполняю константу "ИспользоватьAPNS" значением "False"
	И я перезаполняю константу "ИспользоватьFCM" значением "False"
	И я перезаполняю константу "ИспользоватьWNS" значением "False"
	И я перезаполняю константу "ИспользоватьСетьПередачиДанных" значением "False"
	И я перезаполняю константу "ИспользоватьСотовуюСеть" значением "False"
	И я перезаполняю константу "ИспользоватьСпутники" значением "False"
	И я перезаполняю константу "КодНовогоУзлаПланаОбмена" значением "3"
	И я перезаполняю константу "ОтметкаНаФотоснимкеДата" значением "False"
	И я перезаполняю константу "ПарольPOP3" значением "tovar1999"
	И я перезаполняю константу "ПользовательPOP3" значением "tovarshop"
	И я перезаполняю константу "ПортPOP3" значением "110"
	И я перезаполняю константу "ПортSMTP" значением "25"
	И я перезаполняю константу "РаботаСТорговымОборудованием" значением "False"
	И я перезаполняю константу "СертификатМобильногоПриложенияIOS" значением "ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9"
	И я перезаполняю константу "ТаймаутИнтернетПочты" значением "60"
	И я перезаполняю константу "ТолькоБесплатные" значением "False"
	И я перезаполняю константу "ТолькоЗащищеннаяАутентификацияIMAP" значением "False"
	И я перезаполняю константу "ТолькоЗащищеннаяАутентификацияPOP3" значением "False"
	И я перезаполняю константу "ТолькоЗащищеннаяАутентификацияSMTP" значением "False"
	И я перезаполняю константу "УчетПоСкладам" значением "True"

Сценарий: экспорт справочников

// Справочник.Валюты

	И я проверяю или создаю для справочника "Валюты" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'НаименованиеОсновнойВалюты' | 'НаименованиеРазменнойВалюты' |
		| 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'False'           | '000000001' | 'Рубли'        | 'рубль'                      | 'копейка'                     |
		| 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4c9d5c4222' | 'False'           | '000000002' | 'USD'          | 'доллар США'                 | 'цент'                        |

	// Справочник.ВидыЦен

	И я проверяю или создаю для справочника "ВидыЦен" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | 'False'           | '000000001' | 'Розничная'    |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 'False'           | '000000002' | 'Оптовая'      |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | 'False'           | '000000003' | 'Мелкооптовая' |

	// Справочник.Контрагенты

	И я проверяю или создаю для справочника "Контрагенты" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Родитель'                                                               | 'ЭтоГруппа' | 'Код'       | 'Наименование'           | 'Регион'                                                             | 'Индекс' | 'Страна' | 'Город'        | 'Улица'            | 'Дом' | 'Телефон'          | 'ЭлектроннаяПочта'       | 'Факс'             | 'ВебСайт' | 'ВидЦен'                                                             | 'ДополнительнаяИнформация' | 'КонтактноеЛицо' | 'Широта'  | 'Долгота' |
		| 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d710076' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000012' | 'Мосхлеб ОАО'            | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '456789' | 'Россия' | 'Москва'       | 'Петровка'         | '12'  | '+7(999)234-78-64' | 'mh@hleb.ru'             | ''                 | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 'Поставка хлеба'           | 'Громышева П.Р.' | 55.762744 | 37.618102 |
		| 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d710079' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'     | '000000013' | 'Магазин "Продукты"'     | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '127400' | 'Россия' | 'Москва'       | 'Электрозаводская' | '21'  | '+7(999)568-45-96' | 'smirnov@product.ru'     | '+7(999)568-45-97' | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | ''                         | 'Смирнов А. Г.'  | 55.786113 | 37.70331  |
		| 'e1cib/data/Справочник.Контрагенты?ref=8ca1000d8843cd1b11dc8ea92d97a74a' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'     | '000000016' | 'Магазин "Мясная лавка"' | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '235489' | 'Россия' | 'Москва'       | 'Селезневская'     | '10'  | '+7(999)256-99-33' | 'korovin@myasnoya.ru'    | '+7(999)256-99-32' | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | ''                         | 'Коровин С. П.'  | 55.78081  | 37.608828 |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'           | ''                                                                       | 'True'      | '000000001' | 'Поставщики'             | ''                                                                   | ''       | ''       | ''             | ''                 | ''    | ''                 | ''                       | ''                 | ''        | ''                                                                   | ''                         | ''               | ''        | ''        |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'           | ''                                                                       | 'True'      | '000000002' | 'Покупатели'             | ''                                                                   | ''       | ''       | ''             | ''                 | ''    | ''                 | ''                       | ''                 | ''        | ''                                                                   | ''                         | ''               | ''        | ''        |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c4234' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'     | '000000004' | 'Шлюзовая ООО'           | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '121344' | 'Россия' | 'Москва'       | 'Шлюзовая наб.'    | '6'   | '+7(999)233-33-22' | 'sluz@jmail.ru'          | '+7(999)233-33-22' | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | ''                         | 'Горохов В. Х.'  | 55.731272 | 37.645777 |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8e8bd1cb82a8' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'     | '000000007' | 'Попов Б.В. ИЧП '        | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '129345' | 'Россия' | 'Москва'       | 'Менжинского'      | '18'  | '+7(999)456-87-68' | 'popov@jmail.ru'         | '+7(999)456-87-68' | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | ''                         | 'Попов Б. В.'    | 55.86864  | 37.67405  |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9bd00055d49b45e11dbd7c695f19911' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000009' | 'Животноводство ООО '    | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4233' | '125678' | 'Россия' | 'Барнаул'      | 'Ленина'           | '2'   | '+7(999)261-79-79' | 'givotnovodstvo@mail.ru' | ''                 | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | ''                         | 'Папанов Р. Д.'  |           |           |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9c500055d49b45e11dbf348086715b0' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000010' | 'Корнет ЗАО'             | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '221134' | 'Россия' | 'Москва'       | 'ул. Молодцова'    | '4'   | '+7(999)789-67-85' | 'liepa@kornet.ru'        | ''                 | ''        | 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная'                   | ''                         | 'Лиепа А.П.'     | 55.87825  | 37.64153  |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9d700179a069b1011dc44ecea1d4f5b' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000011' | 'ЭлектроБыт ЗАО'         | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4231' | ''       | 'Россия' | 'Екатеринбург' | 'Лесная'           | '12'  | '+7(999)623-568'   | 'mak@jmail.ru'           | ''                 | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | ''                         | 'Мякиниа С. Р.'  | 56.869649 | 60.547212 |

	// Справочник.Организации

	И я проверяю или создаю для справочника "Организации" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Код'       | 'Наименование'       | 'ВалютныйУчет' |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c63' | 'False'           | '000000001' | 'ООО "Все для дома"' | 'True'         |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' | 'False'           | '000000002' | 'ООО "Товары"'       | 'True'         |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c65' | 'False'           | '000000003' | 'ООО "1000 мелочей"' | 'False'        |

	// Справочник.Регионы

	И я проверяю или создаю для справочника "Регионы" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | 'False'           | '000000001' | 'Москва'       |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4231' | 'False'           | '000000003' | 'Урал'         |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4233' | 'False'           | '000000005' | 'Алтай'        |

	// Справочник.Склады

	И я проверяю или создаю для справочника "Склады" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование'        | 'НеИспользовать' |
		| 'e1cib/data/Справочник.Склады?ref=8ca1000d8843cd1b11dc8eb49faea67b' | 'False'           | '000000004' | 'Склад отдела продаж' | 'False'          |
		| 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bdc1aadc2' | 'False'           | '000000001' | 'Малый'               | 'False'          |
		| 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bee7616e1' | 'False'           | '000000002' | 'Большой'             | 'False'          |
		| 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8c4c9d5c4221' | 'False'           | '000000003' | 'Средний'             | 'False'          |

	// Справочник.Товары

	И я проверяю или создаю для справочника "Товары" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Родитель'                                                          | 'ЭтоГруппа' | 'Код'       | 'Наименование'  | 'Артикул'  | 'Поставщик'                                                              | 'ФайлКартинки' | 'Вид'                     | 'Штрихкод'      | 'ВТ_Вес' |
		| 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aae' | 'False'           | ''                                                                  | 'True'      | '000000036' | 'Услуги'        | ''         | ''                                                                       | ''             | ''                        | ''              | ''       |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db967987f1c226' | 'False'           | ''                                                                  | 'True'      | '000000011' | 'Продукты'      | ''         | ''                                                                       | ''             | ''                        | ''              | ''       |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9743e844ecac' | 'False'           | ''                                                                  | 'True'      | '000000012' | 'Электротовары' | ''         | ''                                                                       | ''             | ''                        | ''              | ''       |
		| 'e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7536' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9743e844ecac' | 'True'      | '000000039' | 'Телевизоры'    | ''         | ''                                                                       | ''             | ''                        | ''              | ''       |
		| 'e1cib/data/Справочник.Товары?ref=a100005056c0000811e3f7c0ef680671' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db967987f1c226' | 'True'      | '000000099' | 'Молочные'      | ''         | ''                                                                       | ''             | ''                        | ''              | ''       |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db97442336eb53' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9743e844ecac' | 'True'      | '000000013' | 'Чайники'       | ''         | ''                                                                       | ''             | ''                        | ''              | ''       |
		| 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aaf' | 'False'           | 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aae' | 'False'     | '000000037' | 'Доставка'      | ''         | ''                                                                       | ''             | 'Enum.ВидыТоваров.Услуга' | ''              |          |
		| 'e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8cfecc6a7df4' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a100005056c0000811e3f7c0ef680671' | 'False'     | '000000026' | 'Молоко'        | 'Mol34'    | 'e1cib/data/Справочник.Контрагенты?ref=a9bd00055d49b45e11dbd7c695f19911' | ''             | 'Enum.ВидыТоваров.Товар'  | ''              |          |
		| 'e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8cfecc6a7df5' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a100005056c0000811e3f7c0ef680671' | 'False'     | '000000027' | 'Ряженка'       | 'R45'      | 'e1cib/data/Справочник.Контрагенты?ref=a9bd00055d49b45e11dbd7c695f19911' | ''             | 'Enum.ВидыТоваров.Товар'  | ''              |          |
		| 'e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8d043d710077' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db967987f1c226' | 'False'     | '000000029' | 'Хлеб'          | 'H987'     | 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d710076' | ''             | 'Enum.ВидыТоваров.Товар'  | ''              |          |
		| 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8ea92d97a749' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db967987f1c226' | 'False'     | '000000030' | 'Колбаса'       | 'Kol67'    | 'e1cib/data/Справочник.Контрагенты?ref=a9bd00055d49b45e11dbd7c695f19911' | ''             | 'Enum.ВидыТоваров.Товар'  | ''              |          |
		| 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eb360f70b4d' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db967987f1c226' | 'False'     | '000000032' | 'Торт'          | 'Т78'      | 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d710076' | ''             | 'Enum.ВидыТоваров.Товар'  | ''              |          |
		| 'e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7537' | 'False'           | 'e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7536' | 'False'     | '000000040' | 'Sony К3456P'   | 'Н657'     | 'e1cib/data/Справочник.Контрагенты?ref=a9d700179a069b1011dc44ecea1d4f5b' | ''             | 'Enum.ВидыТоваров.Товар'  | '8593539095330' |          |
		| 'e1cib/data/Справочник.Товары?ref=a9bc00055d49b45e11dbc8caefc3ed8f' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a100005056c0000811e3f7c0ef680671' | 'False'     | '000000021' | 'Масло'         | 'ПРД-0002' | 'e1cib/data/Справочник.Контрагенты?ref=a9bd00055d49b45e11dbd7c695f19911' | ''             | 'Enum.ВидыТоваров.Товар'  | ''              |          |
		| 'e1cib/data/Справочник.Товары?ref=a9c500055d49b45e11dbf348086715b1' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db97442336eb53' | 'False'     | '000000022' | 'Veko67NE'      | 'Ч-0003'   | 'e1cib/data/Справочник.Контрагенты?ref=a9d700179a069b1011dc44ecea1d4f5b' | ''             | 'Enum.ВидыТоваров.Товар'  | ''              |          |

	// Справочник.ХранимыеФайлы

//	И я проверяю или создаю для справочника "ХранимыеФайлы" объекты:
//		| 'Ссылка'                                                                   | 'ПометкаУдаления' | 'Владелец'                                                          | 'Код'       | 'Наименование' | 'ДанныеФайла'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | 'ИмяФайла' | 'Подпись'                               | 'Подписан' | 'Зашифрован' | 'ДляОписания' |
//		| 'e1cib/data/Справочник.ХранимыеФайлы?ref=8ca1000d8843cd1b11dc8eb43bdcf26e' | 'False'           | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eb360f70b4d' | '000000012' | 'Торт '        | 'ValueStorage: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' | 'Торт.jpg' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | 'False'    | 'False'      | 'False'       |

Сценарий: экспорт документов

	// Документ.ПриходТовара

	И я проверяю или создаю для документа "ПриходТовара" объекты:
		| 'Ссылка'                                                                | 'ПометкаУдаления' | 'Номер'     | 'Дата'                | 'Проведен' | 'Поставщик'                                                              | 'Склад'                                                             | 'Валюта'                                                            | 'Организация'                                                            |
		| 'e1cib/data/Документ.ПриходТовара?ref=8ca1000d8843cd1b11dc8eb360f70b4e' | 'False'           | '000000035' | '22.11.2021 23:02:35' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d710076' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8c4c9d5c4221' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c65' |
		| 'e1cib/data/Документ.ПриходТовара?ref=8e09000d8843cd1b11de0e199953e14c' | 'False'           | '000000042' | '10.01.2022 20:48:39' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=a9c500055d49b45e11dbf348086715b0' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bdc1aadc2' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c63' |
		| 'e1cib/data/Документ.ПриходТовара?ref=8e09000d8843cd1b11de0e199953e14d' | 'False'           | '000000043' | '10.01.2022 20:49:43' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d710076' | 'e1cib/data/Справочник.Склады?ref=8ca1000d8843cd1b11dc8eb49faea67b' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4c9d5c4222' | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' |
		| 'e1cib/data/Документ.ПриходТовара?ref=8e09000d8843cd1b11de0e199953e14e' | 'False'           | '000000044' | '10.01.2022 20:50:52' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d710079' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8c4c9d5c4221' | ''                                                                  | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c65' |
		| 'e1cib/data/Документ.ПриходТовара?ref=aaca086266c6d20f11e708c3a952b6dc' | 'False'           | '000000052' | '02.04.2022 20:58:38' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d710076' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bee7616e1' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' |
		| 'e1cib/data/Документ.ПриходТовара?ref=bbf30050ba5c887711e1fe5ecbd0aaee' | 'False'           | '000000048' | '05.03.2022 20:13:58' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=a9d700179a069b1011dc44ecea1d4f5b' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bee7616e1' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c63' |
		| 'e1cib/data/Документ.ПриходТовара?ref=bbf30050ba5c887711e1fe6f82f0356d' | 'False'           | '000000051' | '08.05.2022 20:58:38' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=a9d700179a069b1011dc44ecea1d4f5b' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8c4c9d5c4221' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c63' |

	И я перезаполняю для объекта табличную часть "Товары":
		| 'Ссылка'                                                                | 'Товар'                                                             | 'Цена' | 'Количество' | 'Сумма' |
		| 'e1cib/data/Документ.ПриходТовара?ref=8ca1000d8843cd1b11dc8eb360f70b4e' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eb360f70b4d' | 150    | 30           | 4500    |
		| 'e1cib/data/Документ.ПриходТовара?ref=8e09000d8843cd1b11de0e199953e14c' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8ea92d97a749' | 250    | 100          | 25000   |
		| 'e1cib/data/Документ.ПриходТовара?ref=8e09000d8843cd1b11de0e199953e14c' | 'e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8cfecc6a7df4' | 30     | 200          | 6000    |
		| 'e1cib/data/Документ.ПриходТовара?ref=8e09000d8843cd1b11de0e199953e14c' | 'e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7537' | 4500   | 50           | 225000  |
		| 'e1cib/data/Документ.ПриходТовара?ref=8e09000d8843cd1b11de0e199953e14c' | 'e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8cfecc6a7df5' | 45     | 200          | 9000    |
		| 'e1cib/data/Документ.ПриходТовара?ref=8e09000d8843cd1b11de0e199953e14c' | 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aaf' | 2000   | 2            | 4000    |
		| 'e1cib/data/Документ.ПриходТовара?ref=8e09000d8843cd1b11de0e199953e14d' | 'e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8cfecc6a7df4' | 30     | 100          | 3000    |
		| 'e1cib/data/Документ.ПриходТовара?ref=8e09000d8843cd1b11de0e199953e14d' | 'e1cib/data/Справочник.Товары?ref=a9c500055d49b45e11dbf348086715b1' | 7000   | 50           | 350000  |
		| 'e1cib/data/Документ.ПриходТовара?ref=8e09000d8843cd1b11de0e199953e14d' | 'e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7537' | 4500   | 50           | 225000  |
		| 'e1cib/data/Документ.ПриходТовара?ref=8e09000d8843cd1b11de0e199953e14d' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eb360f70b4d' | 150    | 100          | 15000   |
		| 'e1cib/data/Документ.ПриходТовара?ref=8e09000d8843cd1b11de0e199953e14e' | 'e1cib/data/Справочник.Товары?ref=a9bc00055d49b45e11dbc8caefc3ed8f' | 30     | 100          | 3000    |
		| 'e1cib/data/Документ.ПриходТовара?ref=8e09000d8843cd1b11de0e199953e14e' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eb360f70b4d' | 150    | 100          | 15000   |
		| 'e1cib/data/Документ.ПриходТовара?ref=8e09000d8843cd1b11de0e199953e14e' | 'e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8cfecc6a7df5' | 45     | 100          | 4500    |
		| 'e1cib/data/Документ.ПриходТовара?ref=8e09000d8843cd1b11de0e199953e14e' | 'e1cib/data/Справочник.Товары?ref=a9bc00055d49b45e11dbc8caefc3ed8f' | 30     | 100          | 3000    |
		| 'e1cib/data/Документ.ПриходТовара?ref=8e09000d8843cd1b11de0e199953e14e' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eb360f70b4d' | 150    | 100          | 15000   |
		| 'e1cib/data/Документ.ПриходТовара?ref=8e09000d8843cd1b11de0e199953e14e' | 'e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8cfecc6a7df5' | 45     | 100          | 4500    |
		| 'e1cib/data/Документ.ПриходТовара?ref=aaca086266c6d20f11e708c3a952b6dc' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eb360f70b4d' | 150    | 800          | 120000  |
		| 'e1cib/data/Документ.ПриходТовара?ref=aaca086266c6d20f11e708c3a952b6dc' | 'e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8d043d710077' | 15     | 1600         | 24000   |
		| 'e1cib/data/Документ.ПриходТовара?ref=bbf30050ba5c887711e1fe5ecbd0aaee' | 'e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7537' | 4500   | 7            | 31500   |
		| 'e1cib/data/Документ.ПриходТовара?ref=bbf30050ba5c887711e1fe6f82f0356d' | 'e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7537' | 4500   | 3            | 13500   |


	И я выполняю код встроенного языка на сервере
	"""bsl
		Документы.ПриходТовара.НайтиПоНомеру("000000035").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);
		Документы.ПриходТовара.НайтиПоНомеру("000000042").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);
		Документы.ПриходТовара.НайтиПоНомеру("000000043").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);
		Документы.ПриходТовара.НайтиПоНомеру("000000044").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);
		Документы.ПриходТовара.НайтиПоНомеру("000000048").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);
		Документы.ПриходТовара.НайтиПоНомеру("000000052").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);
		Документы.ПриходТовара.НайтиПоНомеру("000000051").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);
	"""
	// Документ.РасходТовара

	И я проверяю или создаю для документа "РасходТовара" объекты:
		| 'Ссылка'                                                                | 'ПометкаУдаления' | 'Номер'     | 'Дата'                | 'Проведен' | 'Покупатель'                                                             | 'Склад'                                                             | 'Валюта'                                                            | 'ВидЦен'                                                             | 'ОбоснованиеОтгрузки' | 'Организация'                                                            |
		| 'e1cib/data/Документ.РасходТовара?ref=a1aa086266c6d20f11e70b13d9094c69' | 'False'           | '000000102' | '10.05.2022 8:58:39'  | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8e8bd1cb82a8' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8c4c9d5c4221' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | ''                    | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' |
		| 'e1cib/data/Документ.РасходТовара?ref=aaca086266c6d20f11e708bd6f432f7e' | 'False'           | '000000018' | '02.04.2022 8:58:38'  | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=8ca1000d8843cd1b11dc8ea92d97a74a' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bee7616e1' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | ''                    | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' |
		| 'e1cib/data/Документ.РасходТовара?ref=aaca086266c6d20f11e708bd6f432f7f' | 'False'           | '000000019' | '02.04.2022 8:58:38'  | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d710079' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bee7616e1' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | ''                    | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' |
		| 'e1cib/data/Документ.РасходТовара?ref=aaca086266c6d20f11e708bd6f432f80' | 'False'           | '000000020' | '03.04.2022 8:58:38'  | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=8ca1000d8843cd1b11dc8ea92d97a74a' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bee7616e1' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | ''                    | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' |
		| 'e1cib/data/Документ.РасходТовара?ref=aaca086266c6d20f11e708bd6f432f81' | 'False'           | '000000021' | '03.04.2022 8:58:38'  | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d710079' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bee7616e1' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | ''                    | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' |
		| 'e1cib/data/Документ.РасходТовара?ref=bbef0050ba5c887711e1fc040faf2b0b' | 'False'           | '000000003' | '05.04.2022 3:14:16'  | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c4234' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bee7616e1' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4c9d5c4222' | 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная'                   | ''                    | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' |
		| 'e1cib/data/Документ.РасходТовара?ref=bbf30050ba5c887711e1fe6190994fde' | 'False'           | '000000015' | '08.05.2022 18:28:50' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c4234' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8c4c9d5c4221' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | ''                    | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' |

	И я перезаполняю для объекта табличную часть "Товары":
		| 'Ссылка'                                                                | 'Товар'                                                             | 'Цена' | 'Количество' | 'Сумма' |
		| 'e1cib/data/Документ.РасходТовара?ref=a1aa086266c6d20f11e70b13d9094c69' | 'e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7537' | 10000  | 1            | 10000   |
		| 'e1cib/data/Документ.РасходТовара?ref=a1aa086266c6d20f11e70b13d9094c69' | 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aaf' | 300    | 1            | 300     |
		| 'e1cib/data/Документ.РасходТовара?ref=aaca086266c6d20f11e708bd6f432f7e' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8ea92d97a749' | 330    | 8            | 2640    |
		| 'e1cib/data/Документ.РасходТовара?ref=aaca086266c6d20f11e708bd6f432f7e' | 'e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8d043d710077' | 25     | 44           | 1100    |
		| 'e1cib/data/Документ.РасходТовара?ref=aaca086266c6d20f11e708bd6f432f7e' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eb360f70b4d' | 250    | 8            | 2000    |
		| 'e1cib/data/Документ.РасходТовара?ref=aaca086266c6d20f11e708bd6f432f7f' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8ea92d97a749' | 330    | 5            | 1650    |
		| 'e1cib/data/Документ.РасходТовара?ref=aaca086266c6d20f11e708bd6f432f7f' | 'e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8d043d710077' | 25     | 10           | 250     |
		| 'e1cib/data/Документ.РасходТовара?ref=aaca086266c6d20f11e708bd6f432f7f' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eb360f70b4d' | 250    | 7            | 1750    |
		| 'e1cib/data/Документ.РасходТовара?ref=aaca086266c6d20f11e708bd6f432f80' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8ea92d97a749' | 330    | 6            | 1980    |
		| 'e1cib/data/Документ.РасходТовара?ref=aaca086266c6d20f11e708bd6f432f80' | 'e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8d043d710077' | 25     | 38           | 950     |
		| 'e1cib/data/Документ.РасходТовара?ref=aaca086266c6d20f11e708bd6f432f80' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eb360f70b4d' | 250    | 2            | 500     |
		| 'e1cib/data/Документ.РасходТовара?ref=aaca086266c6d20f11e708bd6f432f81' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8ea92d97a749' | 330    | 2            | 660     |
		| 'e1cib/data/Документ.РасходТовара?ref=aaca086266c6d20f11e708bd6f432f81' | 'e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8d043d710077' | 25     | 2            | 50      |
		| 'e1cib/data/Документ.РасходТовара?ref=aaca086266c6d20f11e708bd6f432f81' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eb360f70b4d' | 250    | 11           | 2750    |
		| 'e1cib/data/Документ.РасходТовара?ref=bbef0050ba5c887711e1fc040faf2b0b' | 'e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7537' | 4500   | 1            | 4500    |
		| 'e1cib/data/Документ.РасходТовара?ref=bbf30050ba5c887711e1fe6190994fde' | 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aaf' | 300    | 1            | 300     |
		| 'e1cib/data/Документ.РасходТовара?ref=bbf30050ba5c887711e1fe6190994fde' | 'e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7537' | 4500   | 2            | 9000    |

	И я выполняю код встроенного языка на сервере
	"""bsl
		Документы.РасходТовара.НайтиПоНомеру("000000003").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);
		Документы.РасходТовара.НайтиПоНомеру("000000015").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);
		Документы.РасходТовара.НайтиПоНомеру("000000018").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);
		Документы.РасходТовара.НайтиПоНомеру("000000019").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);
		Документы.РасходТовара.НайтиПоНомеру("000000020").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);
		Документы.РасходТовара.НайтиПоНомеру("000000021").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);
		Документы.РасходТовара.НайтиПоНомеру("000000102").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);
	"""
