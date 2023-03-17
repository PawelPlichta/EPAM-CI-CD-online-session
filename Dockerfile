FROM python:3
#set aplication working directory
WORKDIR /usr/src/app
#install requirements
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
#install applications
COPY app.py ./
copy app_test.py ./
# run application
CMD python app.py
