FROM node:22-alpine AS base

FROM base AS deps
WORKDIR /app
RUN apk add --no-cache git
RUN git clone https://github.com/lsprz2773/igdb-api-frontend.git .
RUN npm ci

FROM base AS builder
WORKDIR /app
COPY --from=deps /app .
RUN npm run build

FROM base AS runner
WORKDIR /app
ENV NODE_ENV=production
COPY --from=builder /app/public ./public
COPY --from=builder /app/.next/standalone ./
COPY --from=builder /app/.next/static ./.next/static
EXPOSE 3000
CMD ["node", "server.js"]
