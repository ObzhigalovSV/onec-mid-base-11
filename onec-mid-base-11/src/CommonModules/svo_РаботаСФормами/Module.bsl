#Область ПрограммныйИнтерфейс

// Процедура размещения поля ввода КонтактныеЛиыа в формах Документов
//
// Параметры:
//  Форма - Форма - форма документа где должно выводиться поле КонтактноеЛицо
//
Процедура ДополнитьФорму(Форма) Экспорт

ИмяФормы = Форма.ИмяФормы;

Если ИмяФормы = "Документ.ЗаказПокупателя.Форма.ФормаДокумента" Тогда 
	ДобавитьПолеКонтактноеЛицоВГруппуШапкаПраво(Форма);
	
ИначеЕсли ИмяФормы = "Документ.ПоступлениеТоваровУслуг.Форма.ФормаДокумента" Тогда
	ДобавитьПолеКонтактноеЛицоВГруппуШапкаПраво(Форма); 
	
ИначеЕсли ИмяФормы = "Документ.РеализацияТоваровУслуг.Форма.ФормаДокумента" Тогда
	ДобавитьПолеКонтактноеЛицоВГруппуШапкаПраво(Форма);
	
ИначеЕсли ИмяФормы = "Документ.ОплатаОтПокупателя.Форма.ФормаДокумента" Тогда
	ВставитьПолеКонтактноеЛицоПередОснование(Форма); 
	
ИначеЕсли ИмяФормы = "Документ.ОплатаПоставщику.Форма.ФормаДокумента" Тогда
	ВставитьПолеКонтактноеЛицоПередСуммаДокумента(Форма);

КонецЕсли

КонецПроцедуры 

#КонецОбласти


#Область СлужебныеПроцедурыИФункции

Процедура ДобавитьПолеКонтактноеЛицоВГруппуШапкаПраво(Форма)

	ПолеВвода = Форма.Элементы.Добавить("КонтактноеЛицо", Тип("ПолеФормы"), Форма.Элементы.ГруппаШапкаПраво);
	ПолеВвода.Вид = ВидПоляФормы.ПолеВвода;
	ПолеВвода.ПутьКДанным = "Объект.svo_КонтактноеЛицо";
	
КонецПроцедуры

Процедура ВставитьПолеКонтактноеЛицоПередСуммаДокумента(Форма)

	ПолеВвода = Форма.Элементы.Вставить("КонтактноеЛицо", Тип("ПолеФормы"), , Форма.Элементы.СуммаДокумента);
	ПолеВвода.Вид = ВидПоляФормы.ПолеВвода;
	ПолеВвода.ПутьКДанным = "Объект.svo_КонтактноеЛицо";
	
КонецПроцедуры  

Процедура ВставитьПолеКонтактноеЛицоПередОснование(Форма)

	ПолеВвода = Форма.Элементы.Вставить("КонтактноеЛицо", Тип("ПолеФормы"), , Форма.Элементы.Основание);
	ПолеВвода.Вид = ВидПоляФормы.ПолеВвода;
	ПолеВвода.ПутьКДанным = "Объект.svo_КонтактноеЛицо";
	
КонецПроцедуры  
#КонецОбласти

