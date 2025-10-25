# Magic Shop (Django)

**Витрина + ЛК** под нейтральную "магическую" тематику (без использования охраняемых торговых марок).

## Запуск локально

```bash
python -m venv .venv && source .venv/bin/activate  # Windows: .venv\Scripts\activate
pip install -e .
cp .env.example .env
python manage.py migrate
python manage.py createsuperuser
python manage.py runserver
```

## Docker

```bash
docker compose up -d --build
```

## Структура
- config/ — проект и настройки
- apps/accounts — аутентификация, профиль, ЛК
- apps/catalog — категории/товары/медиа
- apps/cart — корзина
- apps/orders — заказы/статусы
- apps/payments — платёжные провайдеры (заглушки)
- apps/cms — статические страницы (оферта и т. п.)

## Юр.заметка
Коммерческое использование IP "Harry Potter / Wizarding World" без лицензии рискованно. Данный шаблон — нейтральная "магическая" тематика.
