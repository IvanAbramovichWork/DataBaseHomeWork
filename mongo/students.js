db.students.insertMany([
        {
            "name": "Кошелев Глеб Фёдорович", 
            "date_of_birth": "2003-05-23", 
            "addres": " Смоленская область  город Солнечногорск  шоссе Славы  77", 
            "email": "rettoufifette-3213@yopmail.com",
            "group_id": db.groups.findOne({"name": "Э1"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Овсянников Олег Викторович", 
            "date_of_birth": "2000-01-31", 
            "addres": " Новгородская область  город Красногорск  въезд Балканская  70", 
            "email": "kagrolloukautreu-9274@yopmail.com",
            "group_id": db.groups.findOne({"name": "Э1"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Чернышева Софья Михайловна", 
            "date_of_birth": "2000-11-16", 
            "addres": " Владимирская область  город Дорохово  ул. Гоголя  64", 
            "email": "zahoiquaqueike-6390@yopmail.com",
            "group_id": db.groups.findOne({"name": "Э1"}, {_id: 1})._id, 
            "budget": "true",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Степанов Николай Денисович", 
            "date_of_birth": "2000-02-10", 
            "addres": " Курганская область  город Луховицы  наб. Ленина  54", 
            "email": "naudofrafremi-5006@yopmail.com",
            "group_id": db.groups.findOne({"name": "Э1"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Богданов Максим Даниилович", 
            "date_of_birth": "2000-04-09", 
            "addres": "  Курская область  город Талдом  пер. Чехова  52", 
            "email": "vefrocippodoi-8850@yopmail.com",
            "group_id": db.groups.findOne({"name": "Э1"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Щеглова Александра Андреевна", 
            "date_of_birth": "2001-02-08", 
            "addres": " Ульяновская область  город Лотошино  шоссе Косиора  21", 
            "email": "guyoratuppoi-1819@yopmail.com",
            "group_id": db.groups.findOne({"name": "Э1"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Ефимова Таисия Георгиевна", 
            "date_of_birth": "2003-08-29", 
            "addres": " Мурманская область  город Егорьевск  пл. Гоголя  70", 
            "email": "vauragreuruye-2851@yopmail.com",
            "group_id": db.groups.findOne({"name": "Э1"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Захаров Артём Павлович", 
            "date_of_birth": "2002-07-14", 
            "addres": " Рязанская область  город Дмитров  шоссе Славы  84", 
            "email": "rettoufifette-3213@yopmail.com",
            "group_id": db.groups.findOne({"name": "Э2"}, {_id: 1})._id, 
            "budget": "true",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Акимов Мирон Иванович", 
            "date_of_birth": "2004-04-21", 
            "addres": " Читинская область  город Пушкино  пл. Ленина  31", 
            "email": "texezoupeuleu-3695@yopmail.com",
            "group_id": db.groups.findOne({"name": "Э2"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Касьянова Милана Александровна", 
            "date_of_birth": "2001-12-28", 
            "addres": " Свердловская область  город Можайск  пр. Домодедовская  87", 
            "email": "lironnivusso-7755@yopmail.com",
            "group_id": db.groups.findOne({"name": "Э2"}, {_id: 1})._id, 
            "budget": "true",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Андреева Таисия Данииловна", 
            "date_of_birth": "2002-09-14", 
            "addres": " Оренбургская область  город Зарайск  шоссе Чехова  58", 
            "email": "kiffoihappauye-2193@yopmail.com",
            "group_id": db.groups.findOne({"name": "Э2"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Наумов Марк Никитич", 
            "date_of_birth": "2004-08-07", 
            "addres": " Тульская область  город Наро-Фоминск  пер. Ленина  61", 
            "email": "brauzapojafoi-6310@yopmail.com",
            "group_id": db.groups.findOne({"name": "Э2"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Шилов Дмитрий Кириллович", 
            "date_of_birth": "2002-03-22", 
            "addres": " Тульская область  город Истра  пл. Бухарестская  18", 
            "email": "naurobeutreipu-1414@yopmail.com",
            "group_id": db.groups.findOne({"name": "Э2"}, {_id: 1})._id, 
            "budget": "true",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Марков Иван Матвеевич", 
            "date_of_birth": "2001-01-11", 
            "addres": "  Самарская область  город Мытищи  шоссе Славы  71", 
            "email": "sabasummapra-6033@yopmail.com",
            "group_id": db.groups.findOne({"name": "Э2"}, {_id: 1})._id, 
            "budget": "true",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Пугачев Платон Миронович", 
            "date_of_birth": "2001-08-20", 
            "addres": " Липецкая область  город Лотошино  бульвар 1905 года  83", 
            "email": "bapeveixallu-5053@yopmail.com",
            "group_id": db.groups.findOne({"name": "Э3"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Александров Иван Богданович", 
            "date_of_birth": "2002-01-13", 
            "addres": " Волгоградская область  город Чехов  пл. Чехова  25", 
            "email": "neibreisauranou-8516@yopmail.com",
            "group_id": db.groups.findOne({"name": "Э3"}, {_id: 1})._id, 
            "budget": "true",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Волков Семён Захарович", 
            "date_of_birth": "1998-08-24", 
            "addres": " Новгородская область  город Красногорск  бульвар Будапештсткая  58", 
            "email": "weulezauffave-3199@yopmail.com",
            "group_id": db.groups.findOne({"name": "Э3"}, {_id: 1})._id, 
            "budget": "true",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Муравьев Лев Вячеславович", 
            "date_of_birth": "1999-05-24", 
            "addres": " Воронежская область  город Можайск  шоссе Гоголя  47", 
            "email": "japrazimuyi-1421@yopmail.com",
            "group_id": db.groups.findOne({"name": "Э3"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Бородин Роман Егорович", 
            "date_of_birth": "2001-08-01", 
            "addres": " Астраханская область  город Озёры  пл. Ломоносова  89", 
            "email": "jousottoudoizau-3682@yopmail.com",
            "group_id": db.groups.findOne({"name": "Э3"}, {_id: 1})._id, 
            "budget": "true",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Виноградов Максим Артёмович", 
            "date_of_birth": "1999-05-03", 
            "addres": " Псковская область  город Коломна  шоссе Ладыгина  45", 
            "email": "tagojeuquitreu-4910@yopmail.com",
            "group_id": db.groups.findOne({"name": "Э3"}, {_id: 1})._id, 
            "budget": "true",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Васильева Анна Денисовна", 
            "date_of_birth": "2003-12-05", 
            "addres": " Кемеровская область  город Раменское  пл. Бухарестская  89", 
            "email": "vetrigraweva-5606@yopmail.com",
            "group_id": db.groups.findOne({"name": "Э3"}, {_id: 1})._id, 
            "budget": "true",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Егоров Дмитрий Дмитриевич", 
            "date_of_birth": "2004-10-26", 
            "addres": " Читинская область  город Талдом  бульвар Балканская  31", 
            "email": "fuffoipegaxoi-8137@yopmail.com",
            "group_id": db.groups.findOne({"name": "М1"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Коновалова Вера Ивановна", 
            "date_of_birth": "1999-04-19", 
            "addres": " Владимирская область  город Пушкино  пл. Бухарестская  58", 
            "email": "fonnouneraudda-5626@yopmail.com",
            "group_id": db.groups.findOne({"name": "М1"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Кузнецов Роман Иванович", 
            "date_of_birth": "2002-09-27", 
            "addres": " Курганская область  город Наро-Фоминск  пер. Космонавтов  12", 
            "email": "gotopreyoivou-2467@yopmail.com",
            "group_id": db.groups.findOne({"name": "М1"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Кожевникова Виктория Андреевна", 
            "date_of_birth": "1998-09-18", 
            "addres": " Сахалинская область  город Шаховская  шоссе Ладыгина  08", 
            "email": "tounnaucifrewa-3340@yopmail.com",
            "group_id": db.groups.findOne({"name": "М1"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Снегирев Александр Евгеньевич", 
            "date_of_birth": "2001-01-25", 
            "addres": " Тюменская область  город Орехово-Зуево  ул. Ладыгина  66", 
            "email": "peimmeujissita-5198@yopmail.com",
            "group_id": db.groups.findOne({"name": "М1"}, {_id: 1})._id, 
            "budget": "true",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Клюева Маргарита Мироновна", 
            "date_of_birth": "1998-10-02", 
            "addres": " Челябинская область  город Зарайск  пр. Ленина  18", 
            "email": "deimabollegru-2127@yopmail.com",
            "group_id": db.groups.findOne({"name": "М1"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Михайлов Артём Даниэльевич", 
            "date_of_birth": "2002-02-07", 
            "addres": " Астраханская область  город Видное  пер. Ломоносова  88", 
            "email": "wouffagevaci-3221@yopmail.com",
            "group_id": db.groups.findOne({"name": "М1"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Степанова Анна Михайловна", 
            "date_of_birth": "1998-04-30", 
            "addres": " Сахалинская область  город Балашиха  въезд Чехова  89", 
            "email": "frogoifririze-1531@yopmail.com",
            "group_id": db.groups.findOne({"name": "М2"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Кравцов Лев Даниилович", 
            "date_of_birth": "2000-09-18", 
            "addres": " Ленинградская область  город Щёлково  пер. Будапештсткая  57", 
            "email": "baummajupalle-2401@yopmail.com",
            "group_id": db.groups.findOne({"name": "М2"}, {_id: 1})._id, 
            "budget": "true",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Кузнецова Анна Юрьевна", 
            "date_of_birth": "2000-08-03", 
            "addres": " Курская область  город Дмитров  пер. Домодедовская  89", 
            "email": "vaxiyacoudu-4776@yopmail.com",
            "group_id": db.groups.findOne({"name": "М2"}, {_id: 1})._id, 
            "budget": "true",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Седов Григорий Павлович", 
            "date_of_birth": "2004-03-02", 
            "addres": " Волгоградская область  город Щёлково  пр. Космонавтов  71", 
            "email": "quatroicedaya-1889@yopmail.com",
            "group_id": db.groups.findOne({"name": "М2"}, {_id: 1})._id, 
            "budget": "true",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Миронов Михаил Ильич", 
            "date_of_birth": "2000-12-21", 
            "addres": " Костромская область  город Истра  пер. Гоголя  29", 
            "email": "grefauceummeupo-9261@yopmail.com",
            "group_id": db.groups.findOne({"name": "М2"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Зубова Алина Михайловна", 
            "date_of_birth": "2001-11-30", 
            "addres": " Калужская область  город Коломна  спуск Славы  66", 
            "email": "gucrusuttipre-6224@yopmail.com",
            "group_id": db.groups.findOne({"name": "М2"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Шапошникова Виктория Данииловна", 
            "date_of_birth": "1998-04-22", 
            "addres": " Пензенская область  город Шатура  въезд Домодедовская  49", 
            "email": "kebreddeuriso-1944@yopmail.com",
            "group_id": db.groups.findOne({"name": "М2"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Кузнецов Григорий Саввич", 
            "date_of_birth": "2000-06-23", 
            "addres": " Томская область  город Клин  наб. Косиора  71", 
            "email": "mofumaurucru-6730@yopmail.com",
            "group_id": db.groups.findOne({"name": "М3"}, {_id: 1})._id, 
            "budget": "true",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Иванова Алиса Кирилловна", 
            "date_of_birth": "2003-08-26", 
            "addres": " Архангельская область  город Дмитров  пер. Гагарина  19", 
            "email": "keummoutaujefa-4500@yopmail.com",
            "group_id": db.groups.findOne({"name": "М3"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Костин Лев Андреевич", 
            "date_of_birth": "2002-10-22", 
            "addres": " Оренбургская область  город Клин  бульвар Ладыгина  47", 
            "email": "cruquoyeiddesu-3718@yopmail.com",
            "group_id": db.groups.findOne({"name": "М3"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Федорова Полина Алексеевна", 
            "date_of_birth": "2004-07-23", 
            "addres": " Тюменская область  город Воскресенск  бульвар Бухарестская  88", 
            "email": "fropewixeso-2785@yopmail.com",
            "group_id": db.groups.findOne({"name": "М3"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Соколова Анна Романовна", 
            "date_of_birth": "2003-11-18", 
            "addres": " Липецкая область  город Сергиев Посад  шоссе Гоголя  29", 
            "email": "xisoivenoiheu-9690@yopmail.com",
            "group_id": db.groups.findOne({"name": "М3"}, {_id: 1})._id, 
            "budget": "true",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Гришина Валерия Михайловна", 
            "date_of_birth": "2003-11-26", 
            "addres": " Рязанская область  город Коломна  пл. Космонавтов  18", 
            "email": "nelisanoibra-5431@yopmail.com",
            "group_id": db.groups.findOne({"name": "М3"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Степанова Виктория Егоровна", 
            "date_of_birth": "2003-11-13", 
            "addres": " Самарская область  город Истра  спуск Гагарина  07", 
            "email": "prillilleippofo-5906@yopmail.com",
            "group_id": db.groups.findOne({"name": "М3"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Григорьева Мирослава Андреевна", 
            "date_of_birth": "1998-04-16", 
            "addres": " Тюменская область  город Павловский Посад  пл. Ленина  13", 
            "email": "lauxagrexabeu-8526@yopmail.com",
            "group_id": db.groups.findOne({"name": "И1"}, {_id: 1})._id, 
            "budget": "true",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Кузнецова Аделина Львовна", 
            "date_of_birth": "1999-08-17", 
            "addres": " Тамбовская область  город Люберцы  въезд Сталина  74", 
            "email": "kereutrafoyi-3467@yopmail.com",
            "group_id": db.groups.findOne({"name": "И1"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Савельев Артём Александрович", 
            "date_of_birth": "2001-11-06", 
            "addres": " Саратовская область  город Коломна  пл. Сталина  35", 
            "email": "joppoubravoulo-7430@yopmail.com",
            "group_id": db.groups.findOne({"name": "И1"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Белякова Амелия Артёмовна", 
            "date_of_birth": "1998-09-07", 
            "addres": " Вологодская область  город Луховицы  ул. Славы  07", 
            "email": "xalaugrosseiju-1070@yopmail.com",
            "group_id": db.groups.findOne({"name": "И1"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Панина Дарья Владимировна", 
            "date_of_birth": "1998-07-23", 
            "addres": " Саратовская область  город Зарайск  спуск Ленина  40", 
            "email": "weimmafomayo-2422@yopmail.com",
            "group_id": db.groups.findOne({"name": "И1"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Антонова Каролина Ивановна", 
            "date_of_birth": "2003-09-19", 
            "addres": " Новгородская область  город Домодедово  шоссе Ломоносова  74", 
            "email": "garafraumazu-7994@yopmail.com",
            "group_id": db.groups.findOne({"name": "И1"}, {_id: 1})._id, 
            "budget": "true",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Покровская Ева Михайловна", 
            "date_of_birth": "1999-09-22", 
            "addres": " Московская область  город Подольск  наб. Ломоносова  64", 
            "email": "yubreubradonnu-6526@yopmail.com",
            "group_id": db.groups.findOne({"name": "И1"}, {_id: 1})._id, 
            "budget": "true",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Кузнецова Екатерина Артёмовна", 
            "date_of_birth": "2003-01-24", 
            "addres": " Амурская область  город Москва  ул. Сталина  84", 
            "email": "gimeppiquebro-4065@yopmail.com",
            "group_id": db.groups.findOne({"name": "И2"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Григорьев Елисей Миронович", 
            "date_of_birth": "2002-08-03", 
            "addres": " Самарская область  город Волоколамск  пр. Ладыгина  36", 
            "email": "brocrattocigou-4077@yopmail.com",
            "group_id": db.groups.findOne({"name": "И2"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Высоцкая Мария Романовна", 
            "date_of_birth": "2003-09-03", 
            "addres": " Сахалинская область  город Сергиев Посад  пер. Косиора  81", 
            "email": "kettowoicreigei-2864@yopmail.com",
            "group_id": db.groups.findOne({"name": "И2"}, {_id: 1})._id, 
            "budget": "true",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Спиридонова Евгения Максимовна", 
            "date_of_birth": "2002-08-11", 
            "addres": " Владимирская область  город Волоколамск  спуск 1905 года  17", 
            "email": "tequehoixourou-7075@yopmail.com",
            "group_id": db.groups.findOne({"name": "И2"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Новикова Дарья Денисовна", 
            "date_of_birth": "2002-09-06", 
            "addres": " Тюменская область  город Ногинск  пер. Сталина  32", 
            "email": "noiprulalleye-2601@yopmail.com",
            "group_id": db.groups.findOne({"name": "И2"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Кузнецова Виктория Матвеевна", 
            "date_of_birth": "2002-06-15", 
            "addres": " Ростовская область  город Зарайск  бульвар Гоголя  88", 
            "email": "pidiprolella-6241@yopmail.com",
            "group_id": db.groups.findOne({"name": "И2"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Соболева Мария Олеговна", 
            "date_of_birth": "2004-12-28", 
            "addres": " Ульяновская область  город Орехово-Зуево  спуск Чехова  43", 
            "email": "japattouteucou-4005@yopmail.com",
            "group_id": db.groups.findOne({"name": "И2"}, {_id: 1})._id, 
            "budget": "true",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Гаврилов Андрей Эминович", 
            "date_of_birth": "2002-12-08", 
            "addres": " Курская область  город Егорьевск  пл. Балканская  17", 
            "email": "nuguproupropru-1400@yopmail.com",
            "group_id": db.groups.findOne({"name": "И3"}, {_id: 1})._id, 
            "budget": "true",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Бессонова Ангелина Данииловна", 
            "date_of_birth": "2002-01-28", 
            "addres": " Тульская область  город Орехово-Зуево  шоссе Балканская  33", 
            "email": "graucevujetu-8552@yopmail.com",
            "group_id": db.groups.findOne({"name": "И3"}, {_id: 1})._id, 
            "budget": "true",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Коровина Милана Степановна", 
            "date_of_birth": "2001-02-25", 
            "addres": " Мурманская область  город Видное  пл. Будапештсткая  70", 
            "email": "fauleufossaupre-8358@yopmail.com",
            "group_id": db.groups.findOne({"name": "И3"}, {_id: 1})._id, 
            "budget": "true",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Осипова Мария Сергеевна", 
            "date_of_birth": "2001-09-23", 
            "addres": " Ульяновская область  город Серебряные Пруды  пл. Ломоносова  95", 
            "email": "nusseusseupauza-5855@yopmail.com",
            "group_id": db.groups.findOne({"name": "И3"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Орлова Стефания Артёмовна", 
            "date_of_birth": "2003-03-13", 
            "addres": " Иркутская область  город Ступино  ул. Космонавтов  01", 
            "email": "creippaubrassinno-5151@yopmail.com",
            "group_id": db.groups.findOne({"name": "И3"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Соколов Степан Егорович", 
            "date_of_birth": "2001-03-01", 
            "addres": " Челябинская область  город Сергиев Посад  спуск Ладыгина  99", 
            "email": "traboppafrobroi-3400@yopmail.com",
            "group_id": db.groups.findOne({"name": "И3"}, {_id: 1})._id, 
            "budget": "true",
            "phone_number": "+79137650427"
        },
        
        {
            "name": "Исаев Максим Тимурович", 
            "date_of_birth": "2004-11-17", 
            "addres": " Астраханская область  город Ступино  пр. Косиора  57", 
            "email": "beubocuweisa-4289@yopmail.com",
            "group_id": db.groups.findOne({"name": "И3"}, {_id: 1})._id, 
            "budget": "false",
            "phone_number": "+79137650427"
        },
        ])