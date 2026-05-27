FROM oven/bun:latest

WORKDIR /usr/src/app

COPY ./packages ./packages/
COPY ./package.json ./package.json 
COPY ./bun.lock ./bun.lock
COPY ./apps/ws ./apps/ws


RUN bun install
RUN bun run db:generate



EXPOSE 8081

CMD ["bun", "run", "start:ws"]
