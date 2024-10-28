FROM golang:latest as base

WORKDIR /goapp

COPY go.mod .

RUN go mod download

COPY . .

RUN go build -o main .

#final stage using destroless image

FROM gcr.io/distroless/base

COPY --from=base /goapp/main .

Copy --from=base /goapp/static ./static

EXPOSE 8070

CMD [ "./main" ]



