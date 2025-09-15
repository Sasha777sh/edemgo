#!/bin/bash

# 🌍 ЗАГРУЗКА ЯЗЫКОВЫХ РЕПОЗИТОРИЕВ НА GITHUB

echo "🌍 ЗАГРУЗКА ЯЗЫКОВЫХ РЕПОЗИТОРИЕВ"
echo "================================="

# Массив языков
LANGUAGES=("en" "es" "de" "ja" "fr" "it" "pt" "ar" "hi" "ko" "tr" "uk" "bn" "vi" "th" "id" "pl" "zh" "ru")

cd /Users/sanecek/tema/edem_manifest/language_repos

echo "📋 Инструкции для загрузки:"
echo ""

for lang in "${LANGUAGES[@]}"; do
    echo "🌍 ЯЗЫК: $lang"
    echo "========================"
    echo "1. Создать репозиторий на GitHub: edem-garden-$lang"
    echo "2. Выполнить команды:"
    echo ""
    echo "cd /Users/sanecek/tema/edem_manifest/language_repos/edem-garden-$lang"
    echo "git remote add origin https://github.com/Sasha777sh/edem-garden-$lang.git"
    echo "git push -u origin main"
    echo ""
    echo "---"
    echo ""
done

echo "🎯 РЕЗУЛЬТАТ:"
echo "- 19 языковых репозиториев на GitHub"
echo "- Максимальная видимость ЭДЕМ"
echo "- Локализация для каждой культуры"

echo ""
echo "🚀 НАЧИНАЙ С ПЕРВОГО ЯЗЫКА!"

