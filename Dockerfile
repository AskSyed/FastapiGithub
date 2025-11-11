FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt .
COPY logistic_regression_model.pkl .
COPY modelapi.py .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8000
CMD ["uvicorn", "modelapi:app", "--host", "0.0.0.0", "--port", "8000"]
