FROM node:16-alpine

ARG NEXT_PUBLIC_RONAL_VAR

ENV NEXT_PUBLIC_RONAL ${NEXT_PUBLIC_RONAL_VAR}

RUN mkdir -p /usr/app

WORKDIR /usr/app

copy . .

RUN npm install

RUN npm run build

EXPOSE 3000

CMD ["npm","start"]




