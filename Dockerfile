FROM node:22-alpine AS development-dependencies-env
COPY ./package.json package-lock.json /app/
WORKDIR /app
RUN npm ci

FROM node:22-alpine AS production-dependencies-env
COPY ./package.json package-lock.json /app/
WORKDIR /app
RUN npm ci --omit=dev

FROM node:22-alpine AS build-env
COPY ./package.json package-lock.json /app/
WORKDIR /app
COPY --from=development-dependencies-env /app/node_modules /app/node_modules
COPY . .
RUN npm run build

FROM node:22-alpine
WORKDIR /app
RUN addgroup --system --gid 1001 nodejs && \
    adduser --system --uid 1001 appuser
COPY ./package.json package-lock.json /app/
COPY ./server.mjs /app/server.mjs
COPY --from=production-dependencies-env /app/node_modules /app/node_modules
COPY --from=build-env /app/build/client /app/build/client
USER appuser
ENV PORT=3000
EXPOSE 3000
CMD ["node", "server.mjs"]
