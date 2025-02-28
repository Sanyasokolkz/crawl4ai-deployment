FROM unclecode/crawl4ai:basic-amd64

# Устанавливаем переменные окружения
ENV CRAWL4AI_API_TOKEN=mysecret123

# Открываем порт 11235 (по умолчанию для Crawl4AI)
EXPOSE 11235

# Запускаем сервер Uvicorn на порту 11235
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "11235"]
