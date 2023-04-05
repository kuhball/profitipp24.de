FROM klakegg/hugo:ext-onbuild AS hugo

FROM nginx
LABEL org.opencontainers.image.source="https://github.com/kuhball/profitipp24.de"
COPY --from=hugo /target /usr/share/nginx/html
