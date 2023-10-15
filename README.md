# Codsworth
*Time planning made simple*

---
## About

An improvement on *Alfred*.

Codsworth plans out your time across the next few days. It handles repeating events, time-inflexible events, and can read in calendars.

Codsworth can help you plan your work. Scrapes *Blackboard*, looks at weekly work and deadlines. Incorporates it into your weekly plan.

---

## Installation from source

Installation is handled largely through `docker-compose`.

After cloning
```shell
$ docker-compose up 
```

Then, run a **one time initialisation script** via

```shell
$ docker-compose exec -it codsworth1 ./cockroach --host=codsworth1:26357 init --insecure
```

This is **not for production**.
