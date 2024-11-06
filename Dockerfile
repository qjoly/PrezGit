FROM marpteam/marp-cli:v4.0.3 as builder
WORKDIR /data
COPY . .
RUN node /home/marp/.cli/marp-cli.js slide-deck.md --html --bespoke.progress --html true --template bespoke -o index.html

FROM qjoly/lighttpd:latest
COPY --from=builder /data/ /var/www/localhost/htdocs
CMD ["start.sh"]
