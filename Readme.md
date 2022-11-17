## 🐳 Collection of DockerFiles

---

**Skills**: `Docker` `Dockerfile` `DockerCompose` `Makefile`

### Motivation

This repo arises from the need to collect the basic configurations of the multiple infrastructures
I have worked with in order to reuse them easily. I always prefer to use dockerized infrastructures,
for me they are easier to operate and configure.

### Tool List

- [mariadb](https://github.com/danielorlando97/docker-files/blob/main/mysql-server.yml)

  ```bash
  make mysql
  ```

- [mongodb](https://github.com/danielorlando97/docker-files/blob/main/mongo-express.yml)

  ```bash
  make mongo
  ```

- [redis](https://github.com/danielorlando97/docker-files/blob/main/redis-db.yml)

  ```bash
  make redis
  ```

- [postgres](https://github.com/danielorlando97/docker-files/blob/main/postgres.yml)

  ```bash
  make postgres
  ```

- [elasticsearch stack](https://github.com/deviantony/docker-elk/tree/6f8117e2d82f2e847b7f50c532d8de13976cc304)

  ```bash
  make elastic
  ```

- [jenkins](https://github.com/danielorlando97/docker-files/blob/main/jenkins.yml)

  ```bash
  make jenkins
  ```

- [kafka](https://github.com/danielorlando97/docker-files/blob/main/kafka.yml)

  ```bash
  make kafka
  ```
