FROM golang:latest

WORKDIR /

COPY go.mod go.sum ./
RUN go mod download

COPY . .

RUN go build -o api .

EXPOSE 8080
CMD ["./api"]