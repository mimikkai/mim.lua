-- mim.lua — MimicAI инструментальный модуль

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

return mim
