﻿#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Проверяю значение количества в итоге

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверяю значение количества в итоге
	И значение поля с именем "ТоварыИтогКоличество" содержит текст "5"