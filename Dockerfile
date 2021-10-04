FROM python:3.7

RUN mkdir -p /usr/src/bot/
WORKDIR /usr/src/bot/

COPY requirements.txt /usr/src/bot/
RUN pip3 install -r requirements.txt


COPY . /usr/src/bot/
RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "bot.py"]