FROM python:3.11.2
EXPOSE 5000
WORKDIR /app
COPY ./requirements.txt requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt
COPY . .
CMD ["flask", "run", "--host", "0.0.0.0"]

#docker run -dp 5000:5000 -w /app -v "D:/python_flask:/app" flask-smorest-api