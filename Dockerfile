FROM node:21.4.0-alpine3.18

WORKDIR /app

COPY package.json .
RUN npm install

COPY . .

ENV NODE_ENV production

ENV TITLE "Codefresh Support Links"
ENV LOGO "/logo.png"
ENV HEADER "true"
ENV HEADERLINE "true"
ENV HEADERTOP "false"
ENV CATEGORIES "normal"
ENV BGCOLOR "theme(colors.slate.50)"
ENV BGCOLORDARK "theme(colors.gray.950)"
ENV NEWWINDOW "true"

EXPOSE 4173

RUN chmod +x /app/docker-entrypoint.sh
ENTRYPOINT ["/app/docker-entrypoint.sh"]

CMD ["npm", "run", "start"]