# twito
twitter user monitor
Rails4, PostgreSQL, Twitter API, Sidekiq, Whenever for cron and RSpec for tests.
![CodeShip build](https://codeship.com/projects/a9d9c6d0-ad18-0132-d189-16eb0c65b489/status?branch=master)

1. Приложение для получения постов из твиттера
2. Два action'а - POST подписка на тви, GET - получение твитов
3. Обновление/получение твитов в бекграунде

---

## Install:
- Setup your twitter app settings in config/settings.yml
- Run "whenever" command to install rake tweets:fetch task into the cron
- Enjoy!