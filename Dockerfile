#Using Python
FROM python

#installing fastAPI insside the container
RUN pip install "fastapi[all]"

# Repository to work in with docker
WORKDIR /app

# Copy the files of the app inside of the container 
COPY ./app /app

# Launch the FastAPI app
CMD ["uvicorn","main:app","--reload"]


