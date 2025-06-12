#the base image we are building on top of 
FROM python:3.13
#FROM python:3.10-slim 

#the working directory we are building into 
WORKDIR /usr/src/app

#copy all files from outside the container into the container
COPY . .

#install pyhton/fastapi dependencies
RUN pip install --no-cache-dir -r requirements.txt

#export port 8000 to make the application accesible
EXPOSE 8000


#define the command to run FastAPI app
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]