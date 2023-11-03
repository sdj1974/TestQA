﻿#language: ru

@tree
@ЗаказПокупателя

Функционал: заполнение поля Организация документа Заказ покупателя

Как Тестировщик я хочу
проверить функционал заполения полей документ Заказ покупателя  
чтобы не было ошибок   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _0401 заполнение полей Партнер и Организация
* Создание нового документа Заказ покупателя
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы покупателей'
	И я нажимаю на кнопку с именем 'FormCreate'
* Выбор значения Партнер	
	И я нажимаю кнопку выбора у поля с именем "Partner"
	Тогда открылось окно 'Партнеры'
	И в таблице "List" я перехожу к строке:
		| 'Код' | 'Наименование'            |
		| '12'   | 'Розничный клиент 1' |
	И в таблице "List" я выбираю текущую строку
* Заполнение поля Организация, если не было выбрано ранее
	Если представление элемента с именем "Company" стало равно "" тогда
		И я нажимаю кнопку выбора у поля с именем "Company"
		Тогда открылось окно 'Организации'
		И в таблице "List" я перехожу к строке:
			| 'Код' | 'Наименование'           |
			| '1'   | 'Собственная компания 1' |
		И в таблице "List" я выбираю текущую строку




		

	