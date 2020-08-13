FROM golang:1.14

#Adding the two files to the image pulled
COPY . .

RUN go build main.go

EXPOSE 8080

#Running this file
ENTRYPOINT [ "./main" ]

# Steps to use this image
# docker build -t <image_name> .
# docker run -p 8080:8080 <image_name>:latest
# docker push <image_name>:latest