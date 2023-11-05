﻿#language: ru

@tree
@ДокументЗаказ

Функционал: Документ Заказ

Как Тестировщик я хочу
показать ошибку в документе Заказ 
чтобы разработчик знал где исправлять ошибку  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: проверяю доступность поля Количество нового незаписанного документа Заказ
* Создание документа Заказ
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Мосхлеб ОАО'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Малый'
* Добавление номенклатуры типа "Услуга" в табличную часть	
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000037' | 'Доставка'     |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
* Проверка доступности поля Количество перед записью	документа	
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
	И в таблице "Товары" я завершаю редактирование строки

* Проверка доступности поля Количество после записи	документа
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
	И в таблице "Товары" я завершаю редактирование строки
		
		
