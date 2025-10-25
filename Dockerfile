FROM python:3.12-slim
ENV PYTHONDONTWRITEBYTECODE=1 \n    PYTHONUNBUFFERED=1
WORKDIR /app
COPY requirements.txt pyproject.toml ./
RUN pip install --upgrade pip \n    && pip install -r requirements.txt
COPY . .
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]
