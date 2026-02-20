# ----------- Build stage -----------
FROM gcc:latest AS builder

WORKDIR /app
COPY main.c .

RUN gcc -o hello-c main.c

# ----------- Runtime stage -----------
FROM alpine:latest

WORKDIR /app
COPY --from=builder /app/hello-c .

CMD ["./hello-c"]