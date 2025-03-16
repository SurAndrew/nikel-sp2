# Как запустить

## 1 Запускаемся...
```shell
docker compose up -d
```


# Как проверить


## 2 Инициализация конфига
```shell
./scripts/1-init-config.sh
```
## 3 Инициализация шард

```shell
./scripts/2-init-shard-1.sh
./scripts/3-init-shard-2.sh
```

## 3 Инициализация роутера и вставка данных

```shell
./scripts/4-init-router.sh
```

## 5 Проверка данных по шардам

```shell
./scripts/5-show-data.sh
```