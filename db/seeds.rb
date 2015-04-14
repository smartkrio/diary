User.create(email: 'example@mail.ru', password: '12345678')

30.times do |i|
  Note.create(title: "Заметка ##{i}", event_description: "Какое-то событие", user_id: 1, created_at: "#{i}-04-2015")
end