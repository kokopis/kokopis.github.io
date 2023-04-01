FROM node:18.15.0-bullseye-slim AS pnpm
RUN  ["npm", "install", "-g", "pnpm"]

FROM    pnpm
WORKDIR /app
COPY    . .
ENV     NEXT_TELEMETRY_DISABLED=1
RUN     ["pnpm", "--silent", "install"]
CMD     ["pnpm", "dev", "-p", "3000"]