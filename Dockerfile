FROM python:3.12.2-bookworm

LABEL name="learning-spark"
LABEL description="Image containing PySpark to use along with the book 'Learning Spark 2.0' "

RUN apt update
RUN apt install git
RUN git clone https://github.com/databricks/LearningSparkV2.git

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

EXPOSE 4040/tcp                                                                 