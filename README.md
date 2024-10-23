The [Standard Ebooks](https://standardebooks.org/) tools via Docker

- [Step by step instructions](https://standardebooks.org/contribute/producing-an-ebook-step-by-step)

## Building

```shell
docker build -t seb:seb .
```

## Running

```shell
docker compose up -d
```

## Interactive

```shell
docker compose exec seb bash
```

```bash
cd /seb
python3 -m pipx ensurepath
source ~/.bashrc
se create-draft -a "Jeffrey Farnol" -t "Martin Conisby's Vengeance" --pg-id 9835
```
