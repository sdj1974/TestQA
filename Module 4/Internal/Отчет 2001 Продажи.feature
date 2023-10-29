#language: ru

@tree
@Отчеты

Функционал: Отчет по продажам

Как Тестировщик я хочу
проверить функционал формирования отчета по продажам с учетом возвратов  
чтобы убедиться в правильности формирования  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _0401 подготовительный сценарий (заказ покупателя)
	когда экспорт основных данных
	когда экспорт документов Реализация товаров и услуг и Возврат от покупателя
	когда экспорт справочника Варианты отчетов

Сценарий: _0402 формирование и проверка отчета
* Выбор варианта отчета По регистраторам (ранее экспортированного)
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Отчеты' 'D2001 Продажи'
	И я нажимаю на кнопку с именем 'FormLoadVariant'
	Тогда открылось окно 'Загрузить форму'
	И я перехожу к закладке с именем "GroupPageCustom"
	И в таблице "OptionsList" я активизирую поле с именем "OptionsListReportOption"
	И я нажимаю на кнопку с именем 'FormLoadSetting'
	Тогда открылось окно 'D2001 Продажи (По регистраторам)'
	И я нажимаю на кнопку с именем 'FormChangeVariant'
* Изменение настроек отчета (период, отбор)	
	Тогда открылось окно 'Вариант "По регистраторам" отчета "D2001 Продажи"'
	И в таблице "SettingsComposerSettingsDataParameters" я перехожу к строке:
		| 'Параметр'       |
		| 'Период'         |
	И в таблице "SettingsComposerSettingsDataParameters" я активизирую поле с именем "SettingsComposerSettingsDataParametersStartDate"
	И в таблице "SettingsComposerSettingsDataParameters" я выбираю текущую строку
	И в таблице "SettingsComposerSettingsDataParameters" я выбираю текущую строку
	И в таблице "SettingsComposerSettingsDataParameters" в поле с именем 'SettingsComposerSettingsDataParametersStartDate' я ввожу текст '01.10.2023  0:00:00'
	И в таблице "SettingsComposerSettingsDataParameters" я активизирую поле с именем "SettingsComposerSettingsDataParametersEndDate"
	И в таблице "SettingsComposerSettingsDataParameters" в поле с именем 'SettingsComposerSettingsDataParametersEndDate' я ввожу текст '31.10.2023 23:59:59'
	И в таблице "SettingsComposerSettingsDataParameters" я завершаю редактирование строки
	И я перехожу к закладке с именем "FilterPage"
	И в таблице "SettingsComposerSettingsFilter" я перехожу к строке:
		| 'Поле'                         |
		| 'Вид мультивалютной аналитики' |
	И в таблице "SettingsComposerSettingsFilter" я снимаю флаг с именем 'SettingsComposerSettingsFilterUse'
	И в таблице "SettingsComposerSettingsFilter" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'FormEndEdit'
* Формирование отчета	
	И я нажимаю на кнопку с именем 'FormGenerate'
* Проверка на наличие строки с возвратом	
	И в табличном документе "Result" ячейка с адресом "R12C1" равна "Возврат товаров от покупателя*" по шаблону
	
	

