﻿#language: ru

@tree

Функционал: Создание номенклатуры в цикле

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание номенклатуры в цикле
	И Я запоминаю значение выражения '1' в переменную "Шаг"
	Дано Я открываю навигационную ссылку "e1cib/list/Catalog.Items"
	И пока выражение встроенного языка '$Шаг$ < 11' истинно я выполняю
		И Я запоминаю значение выражения '"Номенклатура "+$Шаг$' в переменную "НаименованиеТовара"
		И я проверяю или создаю для справочника "Items" объекты:
			| 'Ref'                                                          | 'ItemType'                                                          | 'Unit'                                                          | 'Description_ru'       |
			| '{"e1cib/data/Catalog.Items?ref="+StrReplace(New UUID,"-","")}' | 'e1cib/data/Catalog.ItemTypes?ref=b762b13668d0905011eb76684b9f6879' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | '$НаименованиеТовара$' |
		И Я запоминаю значение выражения '$Шаг$+1' в переменную "Шаг"
	И я закрываю все окна клиентского приложения
	
		
		

