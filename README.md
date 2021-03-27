# Cutter - Мультидоменный сервис сокращения ссылок

## Предупреждение
Сервис находится в разработке. Занимаюсь им в свободное время.

## Установка
### Требования
- Crystal `>= 1.0.0`
- libgmp

### Команды
- `git clone git@github.com:Yukioru/cutter.git`
- `cd cutter`
- `sh ./scripts/install.sh`
- `cp ./config/config.default.conf ./config/config.conf` < Заполнить конфиг
- `./sentry`

## Возможные проблемы
Зависимости `config`, `exception_page`, `sentry` в данный момент не поддерживают Crystal 1.0.0 по этому установка их идёт с флагом `--ignore-crystal-version`.
