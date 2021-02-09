FROM python

WORKDIR /app
ADD ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

ENV node_name "subject"

COPY app.py .

CMD ["sh", "-c", "python3 app.py ${node_name}"]