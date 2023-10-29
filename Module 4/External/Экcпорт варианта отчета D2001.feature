#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: экспорт справочника Варианты отчетов

 Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: экспорт справочника Варианты отчетов

	// Справочник.ReportOptions

	И я проверяю или создаю для справочника "ReportOptions" объекты:
		| 'Ref'                                                                   | 'DeletionMark' | 'Code'                                 | 'Description'      | 'ObjectKey'          | 'Option'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | 'Author'                                                        |
		| 'e1cib/data/Catalog.ReportOptions?ref=974f08002704910311ee76611c53be67' | 'False'        | 'd6507c07-ed93-40f6-965b-9408299451df' | 'По регистраторам' | 'Report.D2001_Sales' | 'ValueStorage:AgFTS2/0iI3BTqDV67a9oKcN7Vjdbts2FN5tAuQJehNot5Up/8WOobhIu2YotjRd7XXbpUJRNjGZcklKjlH0yXaxR9or7IiSbElmFCWVLgLUMGCLPN93jg6/c0hp+EPy+e+ff78YPxov+3jU87zhmTki1sAc9MdD8xZbffO85w5u3TPcH3bxy5PjL9bXk+OvMfDFix2B/epu5Z9GhAsasAuj27GMU8Jw4FK2uDB+n1+ZY+PV9OTYnhEpYUycgj0TF8ZSyvUEoWjc6eIODxH8IteRjomD1ToQVAKfKbZCkhUSKdZIwBMXCxzwx3EAgGR4Ibc+uR+OQoqUyc5+K6qtvYBJgRJPGSgaV2Dy0UTjkFbSZ4YbclsdBg78gAsEdjsIZfUglLnBZpfgu/39bjabzqbfCfgC9Syri/68/nWGl2Tl7G3pw8YmZUI6DBMDtHBkC+ITHK9OfHVkU0jbKfBM5HYN6zJTs8R9B8NXlPiuAoGdF19MX3MgWtoouVIEKGZ4CtcbEIrDtg2RhZyD9htmuw4isiJMzgHUDPNPzvYD4TRwm6F7x6KA4oZii4ebY/qFNLQY11DgyyaT9pFAC3AJb4ZtBmzMbTK+Pwj5u0m+v4jDm+T7LXSYpHI7DzmDAmkoj5erIIRKa5TzPZFt0N54Hmy6dZhtVGi3gPcl4VqfV2oq9qgaI6ciYJlbn3gyZ5rswZM0Mn2ziiEpGu/44qnp28+h49uoNJqYcrpYymynH6y7FRsYeCJ8DQQEYRWBhK2feXRh5CMFjsmbpcPljRf/OJBVgEiKY6fiI/E6uvCNae+sf+6M+iNzdDb0zG6XEPN8NPBMa2xZvZE1OO9afRupcA9Svk+yHUf6AdyuCIyIxDLN3sGSJ+ecnfUnxw9JtgApZp1NTrN6Opgo2EcxR85JNJ7MYCt2HZ42jJT/yIaZCFYDCqvK/FNiYkznSypUX7TRHpn6RnnnaXJy95zk6DAxtuqJWmnexDP1d/GUSsnqUmAb7S8fqLsqR4dHj3b8lHfB9ryUdsiWHB2eEGo7SmfU33K5SB5iGXISu507t35aKtBs/HDFUj+hIFPP8QW4j/8mgwsehOsYJjLxl7h/zgzyt1P7bLZzoW5I+bHRfiAzWauCunRd9aSipt4HDJg0E3rMa7KgLBf2HbRMR5I5XUEuLDiCm+o7t6yJ+papFf4e7rfM/QZmQGep3YvmKM1CLvO5kq8Q1WUoAwNlHDlI6VGiehstspSQ9j5KvWg0qqkrm6onhJpieZJaWpVLW3opCEajmKJk6mmmKJpD1dSWjUY3uZ6Icp3H5sGmmW5zz8PH9ybzzJvMN7eTg2PC91byrFtJQR46fdQWSNURr65KniaTdnXSmlCKStFJpaSVmmIpqUUjl/p60QimqJh7zi0HodeNvRy8LvpHhK+Nv5j24t1oCqB+BVS9aXtEETyxCloug/bqoLQi2kp4LnoqHgpyx7TsaGbrtueHfZffqGXUNsre4Ez/Bw==' | 'e1cib/data/Catalog.Users?ref=aa7f120ed92fbced11eb13d7279770c0' |

	// Справочник.Users

	И я проверяю или создаю для справочника "Users" объекты:
		| 'Ref'                                                           | 'DeletionMark' | 'Code' | 'Description' | 'InfobaseUserID'                       | 'Partner' | 'LocalizationCode' | 'ShowInList' | 'UserGroup' | 'InterfaceLocalizationCode' | 'FormScaleVariant' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Users?ref=aa7f120ed92fbced11eb13d7279770c0' | 'False'        | 1      | 'CI'          | 'd50d12bd-aa3c-403e-8076-3345f448862f' | ''        | 'ru'               | 'True'       | ''          | 'ru'                        | ''                 | 'CI'             | ''                 | ''               | ''               |

	// РегистрСведений.SharedReportOptions

	И я проверяю или создаю для регистра сведений "SharedReportOptions" записи:
		| 'User' | 'ReportOption'                                                          |
		| ''     | 'e1cib/data/Catalog.ReportOptions?ref=974f08002704910311ee76611c53be67' |
