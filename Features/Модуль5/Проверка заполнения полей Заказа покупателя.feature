﻿#language: ru

@tree

Функционал: Проверка заполнения полей Заказа покупателя

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка заполнения полей Заказа покупателя
* Подготовка данных
	Когда экспорт основных данных
* Тестирование заполнения поля соглашение
	И я закрываю все окна клиентского приложения		
	Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	Тогда открылось окно 'Заказы покупателей'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно 'Заказ покупателя (создание)'
	И я нажимаю кнопку выбора у поля с именем "Partner"
	Тогда открылось окно 'Партнеры'
	И в таблице "List" я перехожу к строке
		| 'Наименование' |
		| 'Клиент 1 (1 соглашение)' |
	И в таблице "List" я выбираю текущую строку
	Тогда открылось окно 'Заказ покупателя (создание) *'
	И поле с именем "Agreement" заполнено
	Если поле с именем "Company" заполнено Тогда
	Иначе
		И я нажимаю кнопку выбора у поля с именем "Company"
		Тогда открылось окно 'Организации'
		И в таблице "List" я перехожу к строке
			| 'Наименование' |
			| 'Собственная компания 1' |
		И в таблице "List" я выбираю текущую строку
		
	
	
