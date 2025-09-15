#!/bin/bash

# 🌍 АВТОМАТИЧЕСКОЕ СОЗДАНИЕ ЯЗЫКОВЫХ РЕПОЗИТОРИЕВ

echo "🌍 СОЗДАНИЕ ЯЗЫКОВЫХ РЕПОЗИТОРИЕВ ЭДЕМ"
echo "====================================="

# Массив языков
LANGUAGES=("en" "es" "de" "ja" "fr" "it" "pt" "ar" "hi" "ko" "tr" "uk" "bn" "vi" "th" "id" "pl" "zh" "ru")

# Переходим в папку с проектом
cd /Users/sanecek/tema/edem_manifest

echo "📁 Переходим в папку проекта..."

# Создаем папку для языковых репозиториев
mkdir -p language_repos
cd language_repos

echo "📁 Создаем папку для языковых репозиториев..."

# Создаем репозитории для каждого языка
for lang in "${LANGUAGES[@]}"; do
    echo ""
    echo "🌍 Создаем репозиторий для языка: $lang"
    echo "=================================="
    
    # Создаем папку для языка
    mkdir -p "edem-garden-$lang"
    cd "edem-garden-$lang"
    
    echo "📁 Создаем папку: edem-garden-$lang"
    
    # Копируем нужные файлы
    echo "📝 Копируем файлы..."
    cp "../../README_$lang.md" README.md
    cp "../../LICENSE.md" .
    cp "../../EDEM_SONGS.md" .
    cp "../../ALEXANDER_MESSAGE_ALL_LANGUAGES.md" .
    cp "../../EDEM_UNIVERSAL_SONG_PROMPT.md" .
    
    # Создаем .gitignore
    echo "📝 Создаем .gitignore..."
    cat > .gitignore << 'EOF'
# Игнорируем временные файлы
*.tmp
*.log
.DS_Store
Thumbs.db

# Игнорируем IDE файлы
.vscode/
.idea/
*.swp
*.swo

# Игнорируем системные файлы
node_modules/
.env
.env.local
EOF
    
    # Инициализируем Git
    echo "🔧 Инициализируем Git..."
    git init
    
    # Добавляем файлы
    echo "📝 Добавляем файлы..."
    git add .
    
    # Создаем коммит
    echo "💾 Создаем коммит..."
    git commit -m "🌱 EDÉM - $lang Release

- README на языке $lang
- Лицензия CC0
- Песни исцеления
- Послание Александра
- Универсальный промт

ЭДЕМ готов к миру на языке $lang! 🌍"
    
    echo "✅ Репозиторий для $lang готов!"
    
    # Возвращаемся в папку language_repos
    cd ..
done

echo ""
echo "🎉 ВСЕ ЯЗЫКОВЫЕ РЕПОЗИТОРИИ СОЗДАНЫ!"
echo "=================================="
echo ""
echo "📊 Статистика:"
echo "  - Языков: ${#LANGUAGES[@]}"
echo "  - Репозиториев создано: ${#LANGUAGES[@]}"
echo "  - Папка: language_repos/"
echo ""
echo "🚀 СЛЕДУЮЩИЕ ШАГИ:"
echo "1. Создать репозитории на GitHub для каждого языка"
echo "2. Выполнить команды из CREATE_LANGUAGE_REPOSITORIES.md"
echo "3. Загрузить файлы в каждый репозиторий"
echo "4. Настроить теги и описания"
echo ""
echo "📁 Созданные папки:"
for lang in "${LANGUAGES[@]}"; do
    echo "  - edem-garden-$lang/"
done
echo ""
echo "🌍 ЭДЕМ готов к миру на всех языках!"
