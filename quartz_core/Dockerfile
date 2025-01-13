FROM node:20-slim AS base
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .

FROM base AS builder
WORKDIR /usr/src/app
RUN npx quartz build

FROM scratch AS export
COPY --from=builder /usr/src/app/public /
