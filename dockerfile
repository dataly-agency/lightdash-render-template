FROM lightdash/lightdash:latest

ENV SITE_URL "lightdash.deserved.cz"

COPY ./entrypoint.sh /usr/bin/entrypoint.sh
RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["/usr/bin/entrypoint.sh"]
CMD ["yarn", "workspace", "backend", "start"]