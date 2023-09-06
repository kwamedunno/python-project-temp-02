FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN python_project_temp_02 create-db
RUN python_project_temp_02 populate-db
RUN python_project_temp_02 add-user -u admin -p admin
EXPOSE 5000
CMD ["python_project_temp_02", "run"]
