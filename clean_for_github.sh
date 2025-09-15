#!/bin/bash

# 🧹 ОЧИСТКА ДЛЯ GITHUB - УДАЛЯЕМ БОЛЬШИЕ ФАЙЛЫ

echo "🧹 ОЧИСТКА РЕПОЗИТОРИЯ ДЛЯ GITHUB"
echo "================================="

cd /Users/sanecek/tema

echo "📊 Удаляем большие файлы..."

# Удаляем огромные файлы разговоров
rm -f conversations*.json
rm -f chat.html
rm -f datasets/*.zip
rm -f real_submissions/reports/activity_report_standard.json

echo "📝 Создаем .gitignore..."

# Создаем .gitignore для защиты от случайной загрузки
cat > .gitignore << EOF
# Большие файлы
conversations*.json
chat.html
datasets/*.zip
real_submissions/reports/*.json

# Системные файлы
.DS_Store
.next/
node_modules/
*.log

# Временные файлы
*.tmp
*.temp
EOF

echo "🔍 Проверяем размеры оставшихся файлов..."
find . -type f -size +10M -exec ls -lh {} \; | head -10

echo "✅ Очистка завершена!"
echo "📁 Теперь можно загружать на GitHub"

