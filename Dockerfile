FROM golang:latest

# Create app directory
WORKDIR /usr/src/app

# Copy application source
COPY . .

# Download all dependencies
RUN go mod download

# Build Command

EXPOSE  80

ENTRYPOINT go build && ./sample-go-http 
