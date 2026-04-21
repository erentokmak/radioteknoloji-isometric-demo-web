FROM node:18-alpine

WORKDIR /app

RUN npm install -g serve

COPY index.html .
COPY Build/ ./Build/

EXPOSE 3000

CMD ["serve", "-s", ".", "-l", "3000"]
