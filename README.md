# TODO: SQL DB init

## FIXME: autoincrement id

mysql -u root
# CREATE DATABASE group_analytics;

```sql
DROP DATABASE group_analytics;
CREATE DATABASE group_analytics;
USE group_analytics;
```


```sql

CREATE TABLE IF NOT EXISTS actions (
    name VARCHAR(255) NOT NULL,
    id INT AUTO_INCREMENT PRIMARY KEY,
    action_type VARCHAR(255) NOT NULL,
    some_field VARCHAR(255)
);

id
name
action_type

```


```sql
CREATE TABLE IF NOT EXISTS datatype (
    modality VARCHAR(255) NOT NULL,
    device VARCHAR(255) NOT NULL,
    id INT AUTO_INCREMENT PRIMARY KEY
);
```

```sql
CREATE TABLE IF NOT EXISTS objects (
    role VARCHAR(255) NOT NULL,
    id INT AUTO_INCREMENT PRIMARY KEY
);
```

```sql
CREATE TABLE IF NOT EXISTS trackers (
    type VARCHAR(255) NOT NULL,
    id VARCHAR(255) PRIMARY KEY
);
```

## const session_string = { name: req.body.name, room: req.body.room, session_date: today_utc, time_start: today};

```sql
CREATE TABLE IF NOT EXISTS session (
    name VARCHAR(255) NOT NULL,
    room INT NOT NULL,
    session_date DATE NOT NULL,
    time_start DATE NOT NULL
);
```


## TODO: create two main databases

action_session.id
action_session.id_action
action_session.action_desc

action_session.id_object
action_session.time_action

action_session.id_object, action_session.time_action

```sql
CREATE TABLE IF NOT EXISTS action_session (
    name VARCHAR(255) NOT NULL,
    room INT NOT NULL,
    session_date DATE NOT NULL,
    time_start DATE NOT NULL
);
```

action_session_object

```sql
CREATE TABLE IF NOT EXISTS action_session_object (
);
```


# FIXME:
## ER_NOT_SUPPORTED_AUTH_MODE: Client does not support authentication protocol requested by server; consider upgrading MySQL client

```sql
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY ''
flush privileges;
```

# group_analytics < "/Users/stlk/projects/obs-rules/DumpInitialData20190507VAN.sql"
# mysql > source [/Users/stlk/projects/obs-rules/DumpInitialData20190507VAN].sql
