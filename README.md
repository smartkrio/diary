== README

# Diary
Простой пример ежедневника

### Задача
Разработать простое приложение с использованием Ruby on Rails, реализующее ежедневник.


### Окружение:
* Ruby-2.2.0
* Rails-4.2.1
* СУБД - MySql



### Истории пользователей:
* Неавторизированый пользователь может:
	- зарегистрирваться;
	- авторизироваться;

* Авторизированый пользователь может:
	- Посмотреть список своих заметок;
	- Посмотреть список заметок за произвольный период;
	- Создать новую заметку;
	- Отредактировать существующую заметку;
	- Удалить существующую заметку;


## Порядок запуска

    git clone https://github.com/smartkrio/diary.git

    cd diary

    bundle install

    rake db:create

    rake db:migrate

    rake db:seed

    rails s

    Логин: `example@mail.ru` Пароль: `12345678`