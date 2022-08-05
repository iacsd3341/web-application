# syntax=docker/dockerfile:1
FROM python:3



# ENV PYTHONDONTWRITEBYTECODE=1

ENV PYTHONUNBUFFERED 1
WORKDIR /ditiss-pro1
ADD . /ditiss-pro1
COPY Project/requirements.txt /ditiss-pro1/requirements.txt
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
COPY . /ditiss-pro1
CMD ["python3", "Project/app.py"]
