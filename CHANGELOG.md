# Changelog

## 2019-05-11

### Добавлено
- добавил этап для pipeline'а:
  - release - пуш в докер репозиторий образа который будет использоваться для релиза.

## 2019-04-24

### Добавлено
- создал pipeline для gitlab-ci со следующими стадиями:
  - `build` - сборка текущей версии.
  - `unittest` - запуск юниттестов текущей версии.