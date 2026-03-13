# Информатика: Учебно-методические материалы

[![Build Status](https://img.shields.io/badge/build-passing-brightgreen)]()
[![License](https://img.shields.io/badge/license-educational-blue)]()
[![LaTeX](https://img.shields.io/badge/LaTeX-2021+-blue?logo=latex)]()
[![Python](https://img.shields.io/badge/Python-3.8_|_3.9_|_3.10_|_3.11_|_3.12_|_3.13-blue?logo=python)]()
[![Release](https://img.shields.io/github/release-date/pbalakshin/Informatics?label=Release)]()
[![Last commit](https://img.shields.io/github/last-commit/pbalakshin/Informatics?label=Last%20update)]()

Учебно-методические материалы по дисциплине «Информатика» для студентов ИТМО.

---

## 📁 Структура репозитория

| Директория | Описание |
|------------|----------|
| **[Book/](Book/)** | Учебное пособие (LaTeX) — основная теоретическая часть курса |
| **[Labs/](Labs/)** | Лабораторные работы — задания, методички, примеры решений |
| **[Lectures/](Lectures/)** | Лекционные материалы — презентации, конспекты лекций |

---

## 📖 Учебное пособие (Book/)

Полная документация по учебному пособию представлена в этом документе.

### Структура документа

| Раздел | Описание |
|--------|----------|
| [Введение](Book/src/00_about_the_course.tex) | О курсе и его содержании |
| [Теория информации](Book/src/01_theory.tex) | Основы теории информации, мера Хартли и Шеннона |
| [Единицы измерения данных](Book/src/02_data_measurement_units.tex) | Биты, байты, производные единицы |
| [Системы счисления](Book/src/03_notation_systems.tex) | Позиционные и непозиционные системы |
| [Арифметика в ограниченной разрядной сетке](Book/src/04_limited_arithmetics.tex) | Представление отрицательных чисел, флаги процессора |
| [Сжатие данных](Book/src/05_data_compression.tex) | Коды Шеннона-Фано, Хаффмана |
| [Коррекция ошибок](Book/src/06_error_correcting_coding.tex) | Чётность, коды Хэмминга |
| [Булева алгебра](Book/src/07_boolean_algebra.tex) | Логические функции, таблицы истинности |
| [Программное обеспечение](Book/src/08_software.tex) | Системное и прикладное ПО, лицензии |
| [Архитектура компьютера](Book/src/09_machine.tex) | Устройство ЭВМ |
| [Память](Book/src/10_memory.tex) | Виды памяти, ОЗУ, накопители |
| [Сетевые модели](Book/src/11_osi.tex) | Модель OSI, сетевые устройства |

### Быстрый старт

```bash
cd Book

# Сборка PDF
latexmk -pdf main.tex

# Очистка временных файлов
latexmk -pdf -c main.tex
```

### Требования для сборки

| Зависимость | Версия | Примечание |
|-------------|--------|------------|
| **TeX Live** | 2021+ | или MiKTeX 2.9+ |
| **Python** | 3.8–3.13 | ⚠️ **Python 3.14 может быть несовместим с Pygments** |
| **Pygments** | 2.0+ | `pip install Pygments` |

> **⚠️ Важно:** На момент написания Python 3.14 может вызывать проблемы с пакетом `minted` из-за изменений в API Pygments. Рекомендуется использовать Python 3.11–3.13.

### Оформление

См. **[Book/CODESTYLE.md](Book/CODESTYLE.md)** — руководство по оформлению LaTeX-документов.

---

## 🛠 Инструменты разработчика

### Прекоммит-хуки

```bash
# Установка (из корня репозитория)
pre-commit install
```

### Проверка качества

```bash
# Проверка LaTeX
chktex Book/main.tex

# Проверка библиографии
biber --tool Book/bibliography.bib
```

### Рекомендуемые редакторы

| Редактор | Расширения |
|----------|------------|
| **VS Code** | LaTeX Workshop, LaTeX Utilities |
| **TeXstudio** | встроенная поддержка |
| **Overleaf** | онлайн-редактор (требуется загрузка `minted`-совместимой конфигурации) |

---

## 📚 Библиография

Источники оформляются в файле [`Book/bibliography.bib`](Book/bibliography.bib) в формате BibLaTeX.

Пример записи:
```bibtex
@book{Cormen2013,
    author    = "Томас Х Кормен and Чарльз Эрик Лейзерсон and Рональд Линн Ривест",
    title     = "Алгоритмы: построение и анализ",
    edition   = "3",
    address   = "Москва",
    publisher = "ООО ''И. Д. Вильямс''",
    year      = "2013",
    pagetotal = "1328",
    language  = "russian",
}
```

---

## 📄 Лицензия

Учебно-методические материалы подготовлены для использования в образовательных целях Университета ИТМО.
