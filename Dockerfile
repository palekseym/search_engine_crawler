FROM python:3.6-alpine

WORKDIR /usr/src/app

COPY requirements.txt ./
COPY requirements-test.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --no-cache-dir -r requirements-test.txt

COPY tests tests
COPY crawler crawler

ENV CHECK_INTERVAL 10
ENV EXCLUDE_URLS '.*github.com'

CMD ["python", "-u", "crawler/crawler.py", "https://vitkhab.github.io/search_engine_test_site/"]
