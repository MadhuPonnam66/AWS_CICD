#choosing the base image | as currently python app we are running choosing python
FROM python:3.8

#setting the work directory in the container
WORKDIR /app

#copy the files 
COPY requirements.txt .

#Install run time project dependencies
RUN pip install -r requirements.txt

#copying the application code into the container
COPY . . 

#exposing the port that the flask application lisiting on
EXPOSE 5000

# Set environment variables, if necessary
# ENV MY_ENV_VAR=value

# Run the Flask application
CMD ["python", "app.py"]
