# mim.lua

```lua
-- mim.lua — MimikkAi инструментальный модуль (MimikkAi instrumental module)

--- Таблица-описание инструмента

local mim = {
    name = "Проверка товаров",
    description = "Инструмент для работы с каталогом товаров: проверка названий, категорий, цен и штрихкодов"
}

mim.columns = {
    A = {
        label = "Название",
        description = "Наименование товара",
        field_type = "STRING",
        is_required = true,
        read_only = false
    },
    B = {
        label = "Категория",
        description = "Категория товара",
        field_type = "STRING",
        is_required = true,
        read_only = false
    },
    C = {
        label = "Цена",
        description = "Цена товара в рублях",
        field_type = "NUMBER",
        is_required = true,
        read_only = false
    }
}

mim.prompt = [[
Проанализируй строку из каталога продуктов.
Проверь корректность названия, категории и цены.
Если находишь ошибки - предложи исправления.
]]

mim.entry = {
    {
        A = "Ноутбук ASUS VivoBook 15",
        B = "Электроника",
        C = 45990
    },
    {
        A = "Кофе молотый Jacobs Monarch 250г",
        B = "Продукты",
        C = 349
    },
    {
        A = "Футболка хлопковая белая M",
        B = "Одежда",
        C = 1290
    }
}


return mim
```
