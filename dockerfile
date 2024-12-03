# Указываем базовый образ
FROM python:3.11-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы приложения
COPY . /app

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Добавляем скрипт, который работает бесконечно
COPY infinite_script.py /app/infinite_script.py

# Запускаем скрипт
CMD ["python", "infinite_script.py"]
