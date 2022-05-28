# audiobook-suite
A suite of tools for managing and listening to audiobooks.

## Locally build and run
```bash
docker build . -t audiobook-suite

docker run -v /path/to/books:/app/audiobook-server/books -p 8080:8080 audiobook-suite
```
